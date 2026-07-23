import 'dart:convert';

import 'package:stac_playground/widget/stac_json_editor/utils/link.dart';

import 'characters.dart';
import 'error_token.dart';
import 'token.dart';
import 'token_constants.dart';

abstract class Scanner {
  Scanner() {
    tail = tokens;
    errorTail = tokens;
  }

  /// The string offset for the next token that will be created.
  ///
  /// Note that in the [Utf8BytesScanner], [stringOffset] and [scanOffset] values
  /// are different. One string character can be encoded using multiple UTF-8
  /// bytes.
  int tokenStart = -1;

  /// A pointer to the token stream created by this scanner. The first token
  /// is a special token and not part of the source file. This is an
  /// implementation detail to avoids special cases in the scanner. This token
  /// is not exposed to clients of the scanner, which are expected to invoke
  /// [firstToken] to access the token stream.
  final Token tokens = SimpleToken.eof(/* offset = */ -1, 0);

  /// A pointer to the last scanned token.
  late Token tail;

  /// A pointer to the last prepended error token.
  late Token errorTail;

  bool hasErrors = false;

  /// A pointer to the stream of comment tokens created by this scanner
  /// before they are assigned to the [Token] precedingComments field
  /// of a non-comment token. A value of `null` indicates no comment tokens.
  CommentToken? comments;

  /// A pointer to the last scanned comment token or `null` if none.
  Token? commentsTail;

  /// The stack of open groups, e.g [: { ... ( .. :]
  /// Each BeginToken has a pointer to the token where the group
  /// ends. This field is set when scanning the end group token.
  Link<BeginToken> groupingStack = const Link<BeginToken>();

  int recoveryCount = 0;

  /// Returns the current unicode character.
  ///
  /// If the current character is ASCII, then it is returned unchanged.
  ///
  /// The [Utf8BytesScanner] decodes the next unicode code point starting at the
  /// current position. Note that every unicode character is returned as a single
  /// code point, that is, for '\u{1d11e}' it returns 119070, and the following
  /// [advance] returns the next character.
  ///
  /// The [StringScanner] returns the current character unchanged, which might
  /// be a surrogate character. In the case of '\u{1d11e}', it returns the first
  /// code unit 55348, and the following [advance] returns the second code unit
  /// 56606.
  ///
  /// Invoking [currentAsUnicode] multiple times is safe, i.e.,
  /// [:currentAsUnicode(next) == currentAsUnicode(currentAsUnicode(next)):].
  int currentAsUnicode(int next);

  /// Returns the character at the next position. Like in [advance], the
  /// [Utf8BytesScanner] returns a UTF-8 byte, while the [StringScanner] returns
  /// a UTF-16 code unit.
  int peek();

  /// Notifies the scanner that unicode characters were detected in either a
  /// comment or a string literal between [startScanOffset] and the current
  /// scan offset.
  void handleUnicode(int startScanOffset);

  /// Advances and returns the next character.
  ///
  /// If the next character is non-ASCII, then the returned value depends on the
  /// scanner implementation. The [Utf8BytesScanner] returns a UTF-8 byte, while
  /// the [StringScanner] returns a UTF-16 code unit.
  ///
  /// The scanner ensures that [advance] is not invoked after it returned [$EOF].
  /// This allows implementations to omit bound checks if the data structure ends
  /// with '0'.
  int advance();

  /// Returns the current scan offset.
  ///
  /// In the [Utf8BytesScanner] this is the offset into the byte list, in the
  /// [StringScanner] the offset in the source string.
  int get scanOffset;

  /// Returns the current string offset.
  ///
  /// In the [StringScanner] this is identical to the [scanOffset]. In the
  /// [Utf8BytesScanner] it is computed based on encountered UTF-8 characters.
  int get stringOffset;

  final List<int> lineStarts = [0];

  /// Returns a new comment from the scan offset [start] to the current
  /// [scanOffset] plus the [extraOffset]. For example, if the current
  /// scanOffset is 10, then [appendSubstringToken(5, -1)] will append the
  /// substring string [5,9).
  ///
  /// Note that [extraOffset] can only be used if the covered character(s) are
  /// known to be ASCII.
  CommentToken createCommentToken(int start, bool asciiOnly,
      [int extraOffset = 0]);

  Scanner createRecoveryOptionScanner();

  void recoveryOptionScanner(Scanner copyFrom) {
    tokenStart = copyFrom.tokenStart;
    groupingStack = copyFrom.groupingStack;
  }

  bool get atEndOfSource;

  Token tokenize() {
    while (!atEndOfSource) {
      var next = advance();

      while (!identical(next, $EOF)) {
        next = bigSwitch(next);
      }
      if (atEndOfSource) {
        appendEofToken();
      } else {
        unexpectedEof();
      }
    }
    return firstToken();
  }

  /// Returns the first token scanned by this [Scanner].
  Token firstToken() => tokens.next!;

  /// Notifies that a new token starts at current offset.
  void beginToken() {
    tokenStart = stringOffset;
  }

  /// Append the given token to the [tail] of the current stream of tokens.
  void appendToken(Token token) {
    // It is the responsibility of the caller to construct the token
    tail.next = token;
    token.previous = tail;
    tail = token;
    if (comments != null && comments == token.precedingComments) {
      comments = null;
      commentsTail = null;
    }
  }

  /// Appends a substring from the scan offset [:start:] to the current
  /// [:scanOffset:] plus the [:extraOffset:]. For example, if the current
  /// scanOffset is 10, then [:appendSubstringToken(5, -1):] will append the
  /// substring string [5,9).
  ///
  /// Note that [extraOffset] can only be used if the covered character(s) are
  /// known to be ASCII.
  void appendSubstringToken(TokenType type, int start, bool asciiOnly,
      [int extraOffset = 0]) {
    appendToken(createSubstringToken(
        type, start, lineStarts.length, asciiOnly, extraOffset));
  }

  /// Returns a new substring from the scan offset [start] to the current
  /// [scanOffset] plus the [extraOffset]. For example, if the current
  /// scanOffset is 10, then [appendSubstringToken(5, -1)] will append the
  /// substring string [5,9).
  ///
  /// Note that [extraOffset] can only be used if the covered character(s) are
  /// known to be ASCII.
  StringToken createSubstringToken(
      TokenType type, int start, int line, bool asciiOnly,
      [int extraOffset = 0]);

  /// Appends a fixed token whose kind and content is determined by [type].
  /// Appends an *operator* token from [type].
  ///
  /// An operator token represent operators like ':'
  void appendPrecedenceToken(TokenType type) {
    appendToken(SimpleToken(
        type: type,
        charOffset: tokenStart,
        line: lineStarts.length,
        comments: comments));
  }

  /// Notifies scanning a whitespace character. Note that [appendWhiteSpace] is
  /// not always invoked for [$SPACE] characters.
  ///
  /// This method is used by the scanners to track line breaks and create the
  /// [lineStarts] map.
  void appendWhiteSpace(int next) {
    if (next == $LF) {
      lineStarts.add(stringOffset + 1); // +1, the line starts after the $LF.
    }
  }

  void appendEofToken() {
    beginToken();
    while (groupingStack.isNotEmpty) {
      unmatchedBeginGroup(groupingStack.head);
      groupingStack = groupingStack.tail!;
    }
    appendToken(SimpleToken.eof(tokenStart, lineStarts.length));
  }

  /// Appends a token that begins a new group, represented by [type].
  /// Group begin tokens are '{' and '['.
  void appendBeginGroup(TokenType type) {
    var token = BeginToken(
        type: type,
        charOffset: tokenStart,
        line: lineStarts.length,
        comments: comments);
    appendToken(token);
    groupingStack = groupingStack.prepend(token);
  }

  /// Appends a token that begins an end group, represented by [type].
  /// It handles the group end tokens '}', and ']'.
  int appendEndGroup(TokenType type, int openKind) {
    bool foundMatchingBrace = discardBeginGroupUntil(openKind);
    return appendEndGroupInternal(foundMatchingBrace, type, openKind);
  }

  /// Append the end group (parenthesis, bracket etc).
  /// If [foundMatchingBrace] is true the grouping stack (stack of parenthesis
  /// etc) is updated, otherwise it's left alone.
  /// In effect, if [foundMatchingBrace] is false this end token is basically
  /// ignored, i.e. not really seen as an end group.
  int appendEndGroupInternal(
      bool foundMatchingBrace, TokenType type, int openKind) {
    if (!foundMatchingBrace) {
      // No begin group. Leave the grouping stack alone and just continue.
      appendPrecedenceToken(type);
      return advance();
    }
    appendPrecedenceToken(type);
    Token close = tail;
    BeginToken begin = groupingStack.head;
    begin.endToken = close;
    groupingStack = groupingStack.tail!;
    return advance();
  }

  void appendComment(int start, bool asciiOnly) {
    CommentToken newComment = createCommentToken(start, asciiOnly);
    _appendToCommentStream(newComment);
  }

  /// Tokenize a (small) part of the data. Used for recovery "option testing".
  ///
  /// Returns the number of recoveries performed.
  int recoveryOptionTokenizer(int next) {
    int iterations = 0;
    while (!atEndOfSource) {
      while (!identical(next, $EOF)) {
        // TODO(jensj): Look at number of lines, tokens, parenthesis stack,
        // semi-colon etc, not just number of iterations.
        next = bigSwitch(next);
        iterations++;

        if (iterations > 100) {
          return recoveryCount;
        }
      }
      if (!atEndOfSource) {
        // $EOF in the middle of the file. Skip it as `tokenize`.
        next = advance();
        iterations++;

        if (iterations > 100) {
          return recoveryCount;
        }
      }
    }
    return recoveryCount;
  }

  int select(int choice, TokenType yes, TokenType no) {
    int next = advance();
    if (identical(next, choice)) {
      appendPrecedenceToken(yes);
      return advance();
    } else {
      appendPrecedenceToken(no);
      return next;
    }
  }

  int bigSwitch(int next) {
    beginToken();
    if (identical(next, $SPACE) ||
        identical(next, $TAB) ||
        identical(next, $LF) ||
        identical(next, $CR)) {
      appendWhiteSpace(next);
      next = advance();
      // Sequences of spaces are common, so advance through them fast.
      while (identical(next, $SPACE)) {
        // We don't invoke [:appendWhiteSpace(next):] here for efficiency,
        // assuming that it does not do anything for space characters.
        next = advance();
      }
      return next;
    }

    int nextLower = next | 0x20;
    if ($a <= nextLower && nextLower <= $z) {
      return tokenizeIdentifier(next, scanOffset);
    }

    if (identical(next, $COMMA)) {
      appendPrecedenceToken(TokenType.COMMA);
      return advance();
    }

    if (identical(next, $COLON)) {
      appendPrecedenceToken(TokenType.COLON);
      return advance();
    }

    if (identical(next, $OPEN_CURLY_BRACKET)) {
      appendBeginGroup(TokenType.OPEN_CURLY_BRACKET);
      return advance();
    }

    if (identical(next, $CLOSE_CURLY_BRACKET)) {
      return appendEndGroup(
          TokenType.CLOSE_CURLY_BRACKET, OPEN_CURLY_BRACKET_TOKEN);
    }

    if (identical(next, $OPEN_SQUARE_BRACKET)) {
      appendBeginGroup(TokenType.OPEN_SQUARE_BRACKET);
      return advance();
    }

    if (identical(next, $CLOSE_SQUARE_BRACKET)) {
      return appendEndGroup(
          TokenType.CLOSE_SQUARE_BRACKET, OPEN_SQUARE_BRACKET_TOKEN);
    }

    if (identical(next, $DQ) || identical(next, $SQ)) {
      return tokenizeString(next, scanOffset);
    }

    if (identical(next, $SLASH)) {
      return tokenizeComment(next);
    }

    if (identical(next, $MINUS)) {
      var peekNext = peek();
      if (peekNext >= $0 && next <= $9) {
        return tokenizeNumber(next);
      }
    }
    if (next >= $0 && next <= $9) {
      return tokenizeNumber(next);
    }

    if (next < 0x1f) {
      return unexpected(next);
    }

    next = currentAsUnicode(next);

    return unexpected(next);
  }

  int tokenizeComment(int next) {
    int start = scanOffset;
    var current = next;
    next = advance();
    if (identical($SLASH, next)) {
      return tokenizeSingleLineComment(next, start);
    } else {
      return unexpected(current);
    }
  }

  int tokenizeSingleLineComment(int next, int start) {
    next = advance();
    bool asciiOnly = true;
    while (true) {
      if (next > 127) asciiOnly = false;
      if (identical($LF, next) ||
          identical($CR, next) ||
          identical($EOF, next)) {
        if (!asciiOnly) handleUnicode(start);
        appendComment(start, asciiOnly);
        return next;
      }
      next = advance();
    }
  }

  int tokenizeString(int next, int start) {
    int quoteChar = next;
    next = advance();
    if (identical(quoteChar, next)) {
      // Empty string.
      next = advance();
      appendSubstringToken(TokenType.STRING, start, /* asciiOnly = */ true);
      return next;
    }

    return tokenizeSingleLineString(next, quoteChar, start);
  }

  /// [next] is the first character after the quote.
  /// [quoteStart] is the scanOffset of the quote.
  ///
  /// The token contains a substring of the source file, including the
  /// string quotes, backslashes for escaping. For interpolated strings,
  /// the parts before and after are separate tokens.
  ///
  ///   "a $b c"
  ///
  /// gives StringToken("a $), StringToken(b) and StringToken( c").
  int tokenizeSingleLineString(int next, int quoteChar, int quoteStart) {
    int start = quoteStart;
    bool asciiOnly = true;
    while (!identical(next, quoteChar)) {
      if (identical(next, $BACKSLASH)) {
        next = advance();
      }
      //  else if (identical(next, $$)) {
      //   if (!asciiOnly) handleUnicode(start);
      //   next = tokenizeStringInterpolation(start, asciiOnly);
      //   start = scanOffset;
      //   asciiOnly = true;
      //   continue;
      // }
      if (next <= $CR &&
          (identical(next, $LF) ||
              identical(next, $CR) ||
              identical(next, $EOF))) {
        if (!asciiOnly) handleUnicode(start);
        unterminatedString(quoteChar, quoteStart, start,
            asciiOnly: asciiOnly, isMultiLine: false, isRaw: false);
        return next;
      }
      if (next > 127) asciiOnly = false;
      next = advance();
    }
    if (!asciiOnly) handleUnicode(start);
    // Advance past the quote character.
    next = advance();
    appendSubstringToken(TokenType.STRING, start, asciiOnly);
    return next;
  }

  /// interpolation identifier.
  int tokenizeIdentifier(int next, int start) {
    while (true) {
      if (_isIdentifierChar(next)) {
        next = advance();
      } else {
        // Identifier ends here.
        if (start == scanOffset) {
          return unexpected(next);
        } else {
          appendSubstringToken(
              TokenType.IDENTIFIER, start, /* asciiOnly = */ true);
        }
        break;
      }
    }
    return next;
  }

  int tokenizeNumber(int next) {
    int start = scanOffset;
    while (true) {
      next = advance();
      if ($0 <= next && next <= $9) {
        continue;
      } else if (identical(next, $e) || identical(next, $E)) {
        return tokenizeFractionPart(next, start);
      } else {
        if (identical(next, $PERIOD)) {
          int nextnext = peek();
          if ($0 <= nextnext && nextnext <= $9) {
            return tokenizeFractionPart(advance(), start);
          }
        }
        appendSubstringToken(TokenType.INT, start, /* asciiOnly = */ true);
        return next;
      }
    }
  }

  int tokenizeFractionPart(int next, int start) {
    bool done = false;
    bool hasDigit = false;
    LOOP:
    while (!done) {
      if ($0 <= next && next <= $9) {
        hasDigit = true;
      } else if (identical($e, next) || identical($E, next)) {
        hasDigit = true;
        next = advance();
        if (identical(next, $PLUS) || identical(next, $MINUS)) {
          next = advance();
        }
        bool hasExponentDigits = false;
        while (true) {
          if ($0 <= next && next <= $9) {
            hasExponentDigits = true;
          } else {
            if (!hasExponentDigits) {
              // appendSyntheticSubstringToken(
              //     TokenType.DOUBLE, start, /* asciiOnly = */ true, '0');
              prependErrorToken(UnterminatedToken(
                  "Numbers in exponential notation should always contain an exponent (an integer number with an optional sign).",
                  tokenStart,
                  stringOffset,
                  lineStarts.length));
              return next;
            }
            break;
          }
          next = advance();
        }

        done = true;
        continue LOOP;
      } else {
        done = true;
        continue LOOP;
      }
      next = advance();
    }
    if (!hasDigit) {
      appendSubstringToken(
          TokenType.INT, start, /* asciiOnly = */ true, /* extraOffset = */ -1);

      appendPrecedenceToken(TokenType.PERIOD);
      return next;
    }
    appendSubstringToken(TokenType.DOUBLE, start, /* asciiOnly = */ true);
    return next;
  }

  /// If a begin group token matches [openKind],
  /// then discard begin group tokens up to that match and return `true`,
  /// otherwise return `false`.
  /// This recovers nicely from from situations like "{[}" and "{foo());}",
  /// but not "foo(() {bar());});"
  bool discardBeginGroupUntil(int openKind) {
    Link<BeginToken> originalStack = groupingStack;

    bool first = true;
    do {
      if (groupingStack.isEmpty) break; // recover
      BeginToken begin = groupingStack.head;
      if (openKind == begin.type.kind) {
        if (first) {
          // If the expected opener has been found on the first pass
          // then no recovery necessary.
          return true;
        }
        break; // recover
      }
      first = false;
      groupingStack = groupingStack.tail!;
    } while (groupingStack.isNotEmpty);

    recoveryCount++;

    // If the stack does not have any opener of the given type,
    // then return without discarding anything.
    // This recovers nicely from from situations like "{foo());}".
    if (groupingStack.isEmpty) {
      groupingStack = originalStack;
      return false;
    }

    // We found a matching group somewhere in the stack, but generally don't
    // know if we should recover by inserting synthetic closers or
    // basically ignore the current token.
    // We're in a recovery setting so we're allowed to be 'relatively slow' ---
    // try both and see which is better (i.e. gives fewest rewrites later).
    // To not get exponential runtime we will not do this nested though.
    // E.g. we can recover "{[}" as "{[]}" (better) or (with . for ignored
    // tokens) "{[.".
    // Or we can recover "[(])]" as "[()].." or "[(.)]" (better).

    TokenType type;
    switch (openKind) {
      case OPEN_SQUARE_BRACKET_TOKEN:
        type = TokenType.CLOSE_SQUARE_BRACKET;
        break;
      case OPEN_CURLY_BRACKET_TOKEN:
        type = TokenType.CLOSE_CURLY_BRACKET;
        break;
      default:
        throw StateError("Unexpected openKind");
    }

    // Option #1: Insert synthetic closers.
    int option1Recoveries;
    {
      var option1 = createRecoveryOptionScanner();
      option1.insertSyntheticClosers(originalStack, groupingStack);
      option1Recoveries = option1.recoveryOptionTokenizer(
          option1.appendEndGroupInternal(
              /* foundMatchingBrace = */ true, type, openKind));
      option1Recoveries += option1.groupingStack.slowLength();
    }

    // Option #2: ignore this token.
    int option2Recoveries;
    {
      var option2 = createRecoveryOptionScanner();
      option2.groupingStack = originalStack;
      option2Recoveries = option2.recoveryOptionTokenizer(
          option2.appendEndGroupInternal(
              /* foundMatchingBrace = */ false, type, openKind));
      // We add 1 to make this option pay for ignoring this token.
      option2Recoveries += option2.groupingStack.slowLength() + 1;
    }

    // The option-runs might have set invalid endGroup pointers. Reset them.
    for (Link<BeginToken> link = originalStack;
        link.isNotEmpty;
        link = link.tail!) {
      link.head.endToken = null;
    }

    if (option2Recoveries < option1Recoveries) {
      // Perform option #2 recovery.
      groupingStack = originalStack;
      return false;
    }
    // option #1 is the default, so fall though.

    // Insert synthetic closers and report errors for any unbalanced openers.
    // This recovers nicely from from situations like "{[}".
    insertSyntheticClosers(originalStack, groupingStack);
    return true;
  }

  void insertSyntheticClosers(
      Link<BeginToken> originalStack, Link<BeginToken> entryToUse) {
    // Insert synthetic closers and report errors for any unbalanced openers.
    // This recovers nicely from from situations like "{[}".
    while (!identical(originalStack, entryToUse)) {
      unmatchedBeginGroup(originalStack.head);
      originalStack = originalStack.tail!;
    }
  }

  void unmatchedBeginGroup(BeginToken begin) {
    // We want to ensure that unmatched BeginTokens are reported as
    // errors.  However, the diet parser assumes that groups are well-balanced
    // and will never look at the endGroup token.  This is a nice property that
    // allows us to skip quickly over correct code. By inserting an additional
    // synthetic token in the stream, we can keep ignoring endGroup tokens.
    //
    // [begin] --next--> [tail]
    // [begin] --endG--> [synthetic] --next--> [next] --next--> [tail]
    //
    // This allows the diet parser to skip from [begin] via endGroup to
    // [synthetic] and ignore the [synthetic] token (assuming it's correct),
    // then the error will be reported when parsing the [next] token.
    //
    // For example, tokenize("{[1};") produces:
    //
    // SymbolToken({) --endGroup------------------------+
    //      |                                           |
    //     next                                         |
    //      v                                           |
    // SymbolToken([) --endGroup--+                     |
    //      |                     |                     |
    //     next                   |                     |
    //      v                     |                     |
    // StringToken(1)             |                     |
    //      |                     |                     |
    //     next                   |                     |
    //      v                     |                     |
    // SymbolToken(])<------------+ <-- Synthetic token |
    //      |                                           |
    //     next                                         |
    //      v                                           |
    // UnmatchedToken([)                                |
    //      |                                           |
    //     next                                         |
    //      v                                           |
    // SymbolToken(})<----------------------------------+
    //      |
    //     next
    //      v
    // SymbolToken(;)
    //      |
    //     next
    //      v
    //     EOF
    TokenType type = closeBraceInfoFor(begin);
    // appendToken(SyntheticToken(type, tokenStart)..beforeSynthetic = tail);
    begin.endToken = tail;
    prependErrorToken(UnmatchedToken(begin));
    recoveryCount++;
  }

  TokenType closeBraceInfoFor(BeginToken begin) {
    return const {
      '[': TokenType.CLOSE_SQUARE_BRACKET,
      '{': TokenType.CLOSE_CURLY_BRACKET,
    }[begin.lexeme]!;
  }

  /// Prepend [token] to the token stream.
  void prependErrorToken(ErrorToken token) {
    hasErrors = true;
    if (errorTail == tail) {
      appendToken(token);
      errorTail = tail;
    } else {
      token.next = errorTail.next;
      token.next!.previous = token;
      errorTail.next = token;
      token.previous = errorTail;
      errorTail = errorTail.next!;
    }
  }

  int unexpected(int character) {
    ErrorToken errorToken =
        buildUnexpectedCharacterToken(character, tokenStart, lineStarts.length);
    if (errorToken is NonAsciiToken) {
      int charOffset;
      List<int> codeUnits = <int>[];

      charOffset = errorToken.charOffset;

      codeUnits.add(errorToken.character);
      prependErrorToken(errorToken);
      int next = advanceAfterError(/* shouldAdvance = */ true);
      while (_isIdentifierChar(next)) {
        codeUnits.add(next);
        next = advance();
      }
      appendToken(StringToken(
          type: TokenType.IDENTIFIER,
          lexeme: String.fromCharCodes(codeUnits),
          charOffset: charOffset,
          line: lineStarts.length));
      return next;
    } else {
      prependErrorToken(errorToken);
      return advanceAfterError(/* shouldAdvance = */ true);
    }
  }

  void unexpectedEof() {
    ErrorToken errorToken =
        buildUnexpectedCharacterToken($EOF, tokenStart, lineStarts.length);
    prependErrorToken(errorToken);
  }

  void unterminatedString(int quoteChar, int quoteStart, int start,
      {required bool asciiOnly,
      required bool isMultiLine,
      required bool isRaw}) {
    String suffix = String.fromCharCodes(
        isMultiLine ? [quoteChar, quoteChar, quoteChar] : [quoteChar]);
    String prefix = isRaw ? 'r$suffix' : suffix;

    // appendSyntheticSubstringToken(TokenType.STRING, start, asciiOnly, suffix);
    // Ensure that the error is reported on a visible token
    int errorStart = tokenStart < stringOffset ? tokenStart : quoteStart;
    prependErrorToken(UnterminatedString(
        prefix, errorStart, stringOffset, lineStarts.length));
  }

  int advanceAfterError(bool shouldAdvance) {
    if (atEndOfSource) return $EOF;
    if (shouldAdvance) {
      return advance(); // Ensure progress.
    } else {
      return -1;
    }
  }

  bool _isIdentifierChar(int next) {
    return ($a <= next && next <= $z) ||
        ($A <= next && next <= $Z) ||
        ($0 <= next && next <= $9) ||
        identical(next, $_);
  }

  void _appendToCommentStream(CommentToken newComment) {
    if (comments == null) {
      comments = newComment;
      commentsTail = comments;
    } else {
      commentsTail!.next = newComment;
      commentsTail!.next!.previous = commentsTail;
      commentsTail = commentsTail!.next;
    }
  }
}

class Utf8BytesScanner extends Scanner {
  Utf8BytesScanner({required this.bytes}) : super();

  ///
  /// The content is zero-terminated.
  final List<int> bytes;

  /// Points to the offset of the last byte returned by [advance].
  ///
  /// After invoking [currentAsUnicode], the [byteOffset] points to the last
  /// byte that is part of the (unicode or ASCII) character. That way, [advance]
  /// can always increase the byte offset by 1.
  int byteOffset = -1;

  /// The getter [scanOffset] is expected to return the index where the current
  /// character *starts*. In case of a non-ascii character, after invoking
  /// [currentAsUnicode], the byte offset points to the *last* byte.
  ///
  /// This field keeps track of the number of bytes for the current unicode
  /// character. For example, if bytes 7,8,9 encode one unicode character, the
  /// [byteOffset] is 9 (after invoking [currentAsUnicode]). The [scanSlack]
  /// will be 2, so that [scanOffset] returns 7.
  int scanSlack = 0;

  /// Holds the [byteOffset] value for which the current [scanSlack] is valid.
  int scanSlackOffset = -1;

  /// The difference between the number of bytes and the number of corresponding
  /// string characters, up to the current [byteOffset].
  int utf8Slack = 0;

  int lastUnicodeOffset = -1;

  /// This field remembers the byte offset of the last character decoded with
  /// [nextCodePoint] that used two code units in UTF-16.
  ///
  /// [nextCodePoint] returns a single code point for each unicode character,
  /// even if it needs two code units in UTF-16.
  ///
  /// For example, '\u{1d11e}' uses 4 bytes in UTF-8, and two code units in
  /// UTF-16. The [utf8Slack] is therefore 2. After invoking [nextCodePoint], the
  /// [byteOffset] points to the last (of 4) bytes. The [stringOffset] should
  /// return the offset of the first one, which is one position more left than
  /// the [utf8Slack].
  int stringOffsetSlackOffset = -1;

  bool containsBomAt(int offset) {
    const List<int> BOM_UTF8 = const [0xEF, 0xBB, 0xBF];

    return offset + 3 < bytes.length &&
        bytes[offset] == BOM_UTF8[0] &&
        bytes[offset + 1] == BOM_UTF8[1] &&
        bytes[offset + 2] == BOM_UTF8[2];
  }

  /// Returns the unicode code point starting at the byte offset [startOffset]
  /// with the byte [nextByte].
  int nextCodePoint(int startOffset, int nextByte) {
    int expectedHighBytes;
    if (nextByte < 0xC2) {
      expectedHighBytes = 1; // Bad code unit.
    } else if (nextByte < 0xE0) {
      expectedHighBytes = 2;
    } else if (nextByte < 0xF0) {
      expectedHighBytes = 3;
    } else if (nextByte < 0xF5) {
      expectedHighBytes = 4;
    } else {
      expectedHighBytes = 1; // Bad code unit.
    }
    int numBytes = 0;
    for (int i = 0; i < expectedHighBytes; i++) {
      if (bytes[byteOffset + i] < 0x80) {
        break;
      }
      numBytes++;
    }
    int end = startOffset + numBytes;
    byteOffset = end - 1;
    if (expectedHighBytes == 1 || numBytes != expectedHighBytes) {
      return unicodeReplacementCharacterRune;
    }
    // TODO(lry): measurably slow, decode creates first a Utf8Decoder and a
    // _Utf8Decoder instance. Also the sublist is eagerly allocated.
    String codePoint =
        utf8.decode(bytes.sublist(startOffset, end), allowMalformed: true);
    if (codePoint.length == 0) {
      // The UTF-8 decoder discards leading BOM characters.
      // TODO(floitsch): don't just assume that removed characters were the
      // BOM.
      assert(containsBomAt(startOffset));
      codePoint = String.fromCharCode(unicodeBomCharacterRune);
    }
    if (codePoint.length == 1) {
      utf8Slack += (numBytes - 1);
      scanSlack = numBytes - 1;
      scanSlackOffset = byteOffset;
      return codePoint.codeUnitAt(/* index = */ 0);
    } else if (codePoint.length == 2) {
      utf8Slack += (numBytes - 2);
      scanSlack = numBytes - 1;
      scanSlackOffset = byteOffset;
      stringOffsetSlackOffset = byteOffset;
      // In case of a surrogate pair, return a single code point.
      // Gracefully degrade given invalid UTF-8.
      RuneIterator runes = codePoint.runes.iterator;
      if (!runes.moveNext()) return unicodeReplacementCharacterRune;
      int codeUnit = runes.current;
      return !runes.moveNext() ? codeUnit : unicodeReplacementCharacterRune;
    } else {
      return unicodeReplacementCharacterRune;
    }
  }

  @override
  int advance() => bytes[++byteOffset];

  @override
  bool get atEndOfSource => byteOffset >= bytes.length - 1;

  @override
  Scanner createRecoveryOptionScanner() {
    var scanner = Utf8BytesScanner(bytes: bytes);
    scanner.recoveryOptionScanner(this);
    scanner.byteOffset = byteOffset;
    scanner.scanSlack = scanSlack;
    scanner.scanSlackOffset = scanSlackOffset;
    scanner.utf8Slack = utf8Slack;
    return scanner;
  }

  @override
  int currentAsUnicode(int next) {
    if (next < 128) return next;
    // Check if currentAsUnicode was already invoked.
    if (byteOffset == lastUnicodeOffset) return next;
    int res = nextCodePoint(byteOffset, next);
    lastUnicodeOffset = byteOffset;
    return res;
  }

  @override
  int peek() => bytes[byteOffset + 1];

  @override
  int get scanOffset {
    if (byteOffset == scanSlackOffset) {
      return byteOffset - scanSlack;
    } else {
      return byteOffset;
    }
  }

  @override
  int get stringOffset {
    if (stringOffsetSlackOffset == byteOffset) {
      return byteOffset - utf8Slack - 1;
    } else {
      return byteOffset - utf8Slack;
    }
  }

  @override
  StringToken createSubstringToken(
      TokenType type, int start, int line, bool asciiOnly,
      [int extraOffset = 0]) {
    return StringToken.fromUtf8Bytes(
        type: type,
        data: bytes,
        start: start,
        end: byteOffset + extraOffset,
        asciiOnly: asciiOnly,
        charOffset: tokenStart,
        line: line,
        comments: comments);
  }

  @override
  void handleUnicode(int startScanOffset) {
    int end = byteOffset;
    // TODO(lry): this measurably slows down the scanner for files with unicode.
    String s =
        utf8.decode(bytes.sublist(startScanOffset, end), allowMalformed: true);
    utf8Slack += (end - startScanOffset) - s.length;
  }

  @override
  CommentToken createCommentToken(int start, bool asciiOnly,
      [int extraOffset = 0]) {
    return CommentToken.fromUtf8Bytes(
        bytes, start, byteOffset + extraOffset, asciiOnly, tokenStart);
  }
}
