// Copyright (c) 2022, the json_editor project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:stac_playground/widget/stac_json_editor/analyzer/lexer/token_constants.dart';
import 'package:stac_playground/widget/stac_json_editor/utils/string_canonicalizer.dart';

abstract class Token {
  bool get isEof;

  /// True if this token is a keyword. Some keywords allowed as identifiers,
  /// see implementation in [KeywordToken].
  bool get isKeyword;

  /// Return the lexeme that represents this token.
  ///
  /// For [StringToken]s the [lexeme] includes the quotes, explicit escapes, etc.
  String get lexeme;

  /// Return the next token in the token stream.
  Token? get next;

  /// Return the previous token in the token stream.
  Token? get previous;

  /// The character offset of the start of this token within the source text.
  int get charOffset;

  /// The character offset of the end of this token within the source text.
  int get charEnd;

  /// The token's line no in source
  int get line;

  /// Return the type of the token.
  TokenType get type;

  /// Return the first comment in the list of comments that precede this token,
  /// or `null` if there are no comments preceding this token. Additional
  /// comments can be reached by following the token stream using [next] until
  /// `null` is returned.
  ///
  /// For example, if the original contents were `/* one */ /* two */ id`, then
  /// the first preceding comment token will have a lexeme of `/* one */` and
  /// the next comment token will have a lexeme of `/* two */`.
  CommentToken? get precedingComments;

  /// The token that corresponds to this token, or `null` if this token is not
  /// the first of a pair of matching tokens (such as parentheses).
  Token? get endGroup => null;

  /// Set the next token in the token stream to the given [token]. This has the
  /// side-effect of setting this token to be the previous token for the given
  /// token. Return the token that was passed in.
  Token setNext(Token token);

  /// Return the next token in the token stream.
  set next(Token? next);

  /// Set the previous token in the token stream to the given [token].
  set previous(Token? token);

  set charOffset(int offset);

  set line(int line);

  @override
  String toString() => lexeme;
}

class SimpleToken extends Token {
  SimpleToken(
      {required this.type,
      this.charOffset = 0,
      this.line = 0,
      CommentToken? comments}) {
    precedingComments = comments;
  }

  factory SimpleToken.eof(int charOffset, int line) {
    var eof =
        SimpleToken(type: TokenType.EOF, charOffset: charOffset, line: line);
    eof.previous = eof;
    eof.next = eof;
    return eof;
  }

  /// The first comment in the list of comments that precede this token.
  CommentToken? _precedingComment;

  @override
  int line;

  @override
  Token? next;

  @override
  Token? previous;

  @override
  int get charEnd => charOffset + lexeme.length;

  @override
  int charOffset;

  @override
  bool get isEof => type == TokenType.EOF;

  @override
  bool get isKeyword => false;

  @override
  String get lexeme => type.lexeme;

  @override
  CommentToken? get precedingComments => _precedingComment;

  set precedingComments(CommentToken? comment) {
    _precedingComment = comment;
    _setCommentParent(_precedingComment);
  }

  @override
  Token setNext(Token token) {
    next = token;
    token.previous = this;
    return token;
  }

  @override
  String toString() => lexeme;

  @override
  final TokenType type;

  void _setCommentParent(CommentToken? comment) {
    while (comment != null) {
      comment.parent = this;
      comment = comment.next as CommentToken?;
    }
  }
}

class BeginToken extends SimpleToken {
  BeginToken(
      {required TokenType type,
      int charOffset = 0,
      int line = 0,
      CommentToken? comments})
      : assert(type == TokenType.OPEN_CURLY_BRACKET ||
            type == TokenType.OPEN_SQUARE_BRACKET),
        super(
            type: type, charOffset: charOffset, line: line, comments: comments);

  Token? endToken;
}

class StringToken extends SimpleToken {
  StringToken(
      {required TokenType type,
      required this.lexeme,
      int charOffset = 0,
      int line = 0})
      : super(type: type, charOffset: charOffset, line: line);

  /// Creates a lazy string token. If [asciiOnly] is false, the byte array
  /// is passed through a UTF-8 decoder.
  StringToken.fromUtf8Bytes(
      {required TokenType type,
      required List<int> data,
      required int start,
      required int end,
      required bool asciiOnly,
      required int charOffset,
      int line = 0,
      CommentToken? comments})
      : lexeme = decodeUtf8(data, start, end, asciiOnly),
        super(
            type: type, charOffset: charOffset, line: line, comments: comments);

  static final canonicalizer = StringCanonicalizer();

  static String decodeUtf8(List<int> data, int start, int end, bool asciiOnly) {
    return canonicalizer.canonicalize(data, start, end, asciiOnly);
  }

  @override
  final String lexeme;

  @override
  String toString() => lexeme;
}

class CommentToken extends StringToken {
  CommentToken({required String value, required int charOffset})
      : super(type: TokenType.COMMENT, lexeme: value, charOffset: charOffset);

  /// Creates a lazy string token. If [asciiOnly] is false, the byte array
  /// is passed through a UTF-8 decoder.
  CommentToken.fromUtf8Bytes(
      List<int> data, int start, int end, bool asciiOnly, int charOffset)
      : super.fromUtf8Bytes(
            type: TokenType.COMMENT,
            data: data,
            start: start,
            end: end,
            asciiOnly: asciiOnly,
            charOffset: charOffset);

  ///The token that contains this comment.
  SimpleToken? parent;
}

class TokenType {
  const TokenType(
      {required this.lexeme, required this.name, required this.kind});

  final String lexeme;
  final String name;
  final int kind;

  static const TokenType EOF =
      TokenType(lexeme: '', name: 'EOF', kind: EOF_TOKEN);

  static const TokenType IDENTIFIER = TokenType(
      lexeme: 'identifier', name: 'IDENTIFIER', kind: IDENTIFIER_TOKEN);

  static const TokenType DOUBLE =
      TokenType(lexeme: 'double', name: 'DOUBLE', kind: DOUBLE_TOKEN);

  static const TokenType INT =
      TokenType(lexeme: 'int', name: 'INT', kind: INT_TOKEN);

  static const TokenType STRING =
      TokenType(lexeme: 'string', name: 'STRING', kind: STRING_TOKEN);

  static const TokenType COLON =
      TokenType(lexeme: ':', name: 'COLON', kind: COLON_TOKEN);

  static const TokenType COMMA =
      TokenType(lexeme: ',', name: 'COMMA', kind: COMMA_TOKEN);

  static const TokenType OPEN_CURLY_BRACKET = TokenType(
      lexeme: '{', name: 'OPEN_CURLY_BRACKET', kind: OPEN_CURLY_BRACKET_TOKEN);

  static const TokenType OPEN_SQUARE_BRACKET = TokenType(
      lexeme: '[',
      name: 'OPEN_SQUARE_BRACKET',
      kind: OPEN_SQUARE_BRACKET_TOKEN);

  static const TokenType CLOSE_CURLY_BRACKET = TokenType(
      lexeme: '}',
      name: 'CLOSE_CURLY_BRACKET',
      kind: CLOSE_CURLY_BRACKET_TOKEN);

  static const TokenType CLOSE_SQUARE_BRACKET = TokenType(
      lexeme: ']',
      name: 'CLOSE_SQUARE_BRACKET',
      kind: CLOSE_SQUARE_BRACKET_TOKEN);

  static const TokenType COMMENT = TokenType(
      lexeme: 'comment', name: 'SINGLE_LINE_COMMENT', kind: COMMENT_TOKEN);

  static const TokenType BAD_INPUT = TokenType(
      lexeme: 'malformed input', name: 'BAD_INPUT', kind: BAD_INPUT_TOKEN);

  static const TokenType RECOVERY =
      TokenType(lexeme: 'recovery', name: 'RECOVERY', kind: RECOVERY_TOKEN);

  static const TokenType PERIOD =
      TokenType(lexeme: '.', name: 'PERIOD', kind: PERIOD_TOKEN);
}
