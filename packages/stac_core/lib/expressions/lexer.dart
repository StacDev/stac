import 'expression_exception.dart';
import 'token.dart';

/// Converts an expression source string into a list of [StacToken]s.
///
/// The lexer recognises number and string literals, identifiers (which may
/// start with `$` for reserved namespaces such as `$screen`), the keywords
/// `true`, `false` and `null`, and the operators of the Stac expression
/// grammar.
class StacExpressionLexer {
  /// Creates a lexer over [source].
  StacExpressionLexer(this.source);

  /// The expression text being tokenized.
  final String source;

  int _position = 0;
  StacTokenType? _previousType;

  static const int _char0 = 0x30;
  static const int _char9 = 0x39;
  static const int _charUpperA = 0x41;
  static const int _charUpperZ = 0x5A;
  static const int _charLowerA = 0x61;
  static const int _charLowerZ = 0x7A;
  static const int _charUnderscore = 0x5F;
  static const int _charDollar = 0x24;
  static const int _charDot = 0x2E;
  static const int _charDoubleQuote = 0x22;
  static const int _charSingleQuote = 0x27;
  static const int _charBackslash = 0x5C;
  static const int _charPlus = 0x2B;
  static const int _charMinus = 0x2D;
  static const int _charLowerE = 0x65;
  static const int _charUpperE = 0x45;
  static const int _charLowerN = 0x6E;
  static const int _charLowerT = 0x74;
  static const int _charLowerR = 0x72;
  static const int _charEquals = 0x3D;
  static const int _charSpace = 0x20;
  static const int _charTab = 0x09;
  static const int _charNewline = 0x0A;
  static const int _charReturn = 0x0D;

  static const Map<String, StacTokenType> _keywords = {
    'true': StacTokenType.trueKeyword,
    'false': StacTokenType.falseKeyword,
    'null': StacTokenType.nullKeyword,
  };

  static const Map<String, StacTokenType> _twoCharOperators = {
    '==': StacTokenType.equalEqual,
    '!=': StacTokenType.bangEqual,
    '<=': StacTokenType.lessEqual,
    '>=': StacTokenType.greaterEqual,
    '&&': StacTokenType.ampersandAmpersand,
    '||': StacTokenType.pipePipe,
    '??': StacTokenType.questionQuestion,
    '?.': StacTokenType.questionDot,
  };

  static const Map<String, StacTokenType> _singleCharOperators = {
    '(': StacTokenType.leftParen,
    ')': StacTokenType.rightParen,
    '[': StacTokenType.leftBracket,
    ']': StacTokenType.rightBracket,
    ',': StacTokenType.comma,
    '.': StacTokenType.dot,
    '?': StacTokenType.question,
    ':': StacTokenType.colon,
    '+': StacTokenType.plus,
    '-': StacTokenType.minus,
    '*': StacTokenType.star,
    '/': StacTokenType.slash,
    '%': StacTokenType.percent,
    '<': StacTokenType.less,
    '>': StacTokenType.greater,
    '!': StacTokenType.bang,
  };

  /// Tokenizes the whole [source].
  ///
  /// The returned list always ends with an [StacTokenType.eof] token. Throws
  /// a [StacExpressionException] for unterminated strings and unexpected
  /// characters.
  List<StacToken> tokenize() {
    final tokens = <StacToken>[];
    while (true) {
      _skipWhitespace();
      if (_position >= source.length) {
        tokens.add(StacToken(StacTokenType.eof, '', _position));
        return tokens;
      }
      final token = _nextToken();
      _previousType = token.type;
      tokens.add(token);
    }
  }

  void _skipWhitespace() {
    while (_position < source.length) {
      final c = source.codeUnitAt(_position);
      if (c == _charSpace ||
          c == _charTab ||
          c == _charNewline ||
          c == _charReturn) {
        _position++;
      } else {
        break;
      }
    }
  }

  StacToken _nextToken() {
    final start = _position;
    final c = source.codeUnitAt(_position);

    if (_isDigit(c) && _afterMemberDot()) {
      return _memberIndex(start);
    }
    if (_isDigit(c) || (c == _charDot && _dotStartsNumber())) {
      return _number(start);
    }
    if (c == _charDoubleQuote || c == _charSingleQuote) {
      return _string(start, c);
    }
    if (_isIdentifierStart(c)) {
      return _identifier(start);
    }

    if (_position + 1 < source.length) {
      final pair = source.substring(_position, _position + 2);
      final type = _twoCharOperators[pair];
      if (type != null) {
        _position += 2;
        return StacToken(type, pair, start);
      }
    }

    final single = String.fromCharCode(c);
    final type = _singleCharOperators[single];
    if (type != null) {
      _position++;
      return StacToken(type, single, start);
    }

    if (c == _charEquals) {
      throw StacExpressionException(
        "Unexpected '='. Use '==' to compare values",
        offset: start,
        source: source,
      );
    }
    throw StacExpressionException(
      "Unexpected character '$single'",
      offset: start,
      source: source,
    );
  }

  /// A leading `.` starts a number (`.5`) only where an operand is expected.
  /// Directly after a value, as in `items.0`, it is a member separator.
  bool _dotStartsNumber() {
    if (_position + 1 >= source.length ||
        !_isDigit(source.codeUnitAt(_position + 1))) {
      return false;
    }
    return switch (_previousType) {
      StacTokenType.identifier ||
      StacTokenType.number ||
      StacTokenType.string ||
      StacTokenType.rightBracket ||
      StacTokenType.rightParen => false,
      _ => true,
    };
  }

  /// Whether the previous token was a member access dot, as in `items.0`.
  bool _afterMemberDot() =>
      _previousType == StacTokenType.dot ||
      _previousType == StacTokenType.questionDot;

  /// Lexes the integer index in `items.0.title`, stopping before the next dot
  /// so that `matrix.0.1` is two indexes rather than the number `0.1`.
  StacToken _memberIndex(int start) {
    _consumeDigits();
    final text = source.substring(start, _position);
    return StacToken(
      StacTokenType.number,
      text,
      start,
      value: int.tryParse(text) ?? double.parse(text),
    );
  }

  StacToken _number(int start) {
    var isDouble = false;
    _consumeDigits();
    if (_position + 1 < source.length &&
        source.codeUnitAt(_position) == _charDot &&
        _isDigit(source.codeUnitAt(_position + 1))) {
      isDouble = true;
      _position++;
      _consumeDigits();
    }
    if (_position < source.length) {
      final c = source.codeUnitAt(_position);
      if (c == _charLowerE || c == _charUpperE) {
        final save = _position;
        _position++;
        if (_position < source.length &&
            (source.codeUnitAt(_position) == _charPlus ||
                source.codeUnitAt(_position) == _charMinus)) {
          _position++;
        }
        if (_position < source.length &&
            _isDigit(source.codeUnitAt(_position))) {
          isDouble = true;
          _consumeDigits();
        } else {
          _position = save;
        }
      }
    }
    final text = source.substring(start, _position);
    final Object value = isDouble
        ? double.parse(text)
        : (int.tryParse(text) ?? double.parse(text));
    return StacToken(StacTokenType.number, text, start, value: value);
  }

  void _consumeDigits() {
    while (_position < source.length &&
        _isDigit(source.codeUnitAt(_position))) {
      _position++;
    }
  }

  StacToken _string(int start, int quote) {
    _position++;
    final buffer = StringBuffer();
    while (true) {
      if (_position >= source.length) {
        throw StacExpressionException(
          'Unterminated string literal',
          offset: start,
          source: source,
        );
      }
      final c = source.codeUnitAt(_position);
      if (c == quote) {
        _position++;
        break;
      }
      if (c == _charBackslash) {
        _position++;
        if (_position >= source.length) {
          throw StacExpressionException(
            'Unterminated string literal',
            offset: start,
            source: source,
          );
        }
        final escaped = source.codeUnitAt(_position);
        switch (escaped) {
          case _charLowerN:
            buffer.write('\n');
          case _charLowerT:
            buffer.write('\t');
          case _charLowerR:
            buffer.write('\r');
          default:
            buffer.writeCharCode(escaped);
        }
        _position++;
        continue;
      }
      buffer.writeCharCode(c);
      _position++;
    }
    return StacToken(
      StacTokenType.string,
      source.substring(start, _position),
      start,
      value: buffer.toString(),
    );
  }

  StacToken _identifier(int start) {
    while (_position < source.length &&
        _isIdentifierPart(source.codeUnitAt(_position))) {
      _position++;
    }
    final text = source.substring(start, _position);
    final keyword = _keywords[text];
    return StacToken(keyword ?? StacTokenType.identifier, text, start);
  }

  static bool _isDigit(int c) => c >= _char0 && c <= _char9;

  static bool _isIdentifierStart(int c) =>
      (c >= _charUpperA && c <= _charUpperZ) ||
      (c >= _charLowerA && c <= _charLowerZ) ||
      c == _charUnderscore ||
      c == _charDollar;

  static bool _isIdentifierPart(int c) => _isIdentifierStart(c) || _isDigit(c);
}
