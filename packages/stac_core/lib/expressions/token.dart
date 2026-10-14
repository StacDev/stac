/// The kinds of tokens produced by the expression lexer.
enum StacTokenType {
  /// A numeric literal such as `42` or `3.14`.
  number,

  /// A quoted string literal.
  string,

  /// An identifier such as `user` or `$screen`.
  identifier,

  /// The `true` keyword.
  trueKeyword,

  /// The `false` keyword.
  falseKeyword,

  /// The `null` keyword.
  nullKeyword,

  /// `(`
  leftParen,

  /// `)`
  rightParen,

  /// `[`
  leftBracket,

  /// `]`
  rightBracket,

  /// `,`
  comma,

  /// `.`
  dot,

  /// `?.`
  questionDot,

  /// `?`
  question,

  /// `:`
  colon,

  /// `+`
  plus,

  /// `-`
  minus,

  /// `*`
  star,

  /// `/`
  slash,

  /// `%`
  percent,

  /// `==`
  equalEqual,

  /// `!=`
  bangEqual,

  /// `<`
  less,

  /// `<=`
  lessEqual,

  /// `>`
  greater,

  /// `>=`
  greaterEqual,

  /// `&&`
  ampersandAmpersand,

  /// `||`
  pipePipe,

  /// `!`
  bang,

  /// `??`
  questionQuestion,

  /// End of input.
  eof,
}

/// A lexical token together with its position in the source expression.
class StacToken {
  /// Creates a token of [type] spanning [lexeme] at [offset].
  const StacToken(this.type, this.lexeme, this.offset, {this.value});

  /// The token kind.
  final StacTokenType type;

  /// The raw text of the token as it appears in the source.
  final String lexeme;

  /// The zero-based offset of the token's first character in the source.
  final int offset;

  /// The parsed value for number and string literals, otherwise `null`.
  final Object? value;

  @override
  String toString() => 'StacToken($type, "$lexeme", $offset)';
}
