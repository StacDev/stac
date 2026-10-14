import 'ast.dart';
import 'expression_exception.dart';
import 'lexer.dart';
import 'token.dart';

/// Parses Stac expression source into a [StacExpressionNode] tree.
///
/// Operator precedence, from loosest to tightest binding:
///
/// 1. `a ? b : c`
/// 2. `??`
/// 3. `||`
/// 4. `&&`
/// 5. `==` `!=`
/// 6. `<` `<=` `>` `>=`
/// 7. `+` `-`
/// 8. `*` `/` `%`
/// 9. prefix `!` and `-`
/// 10. member access `.`, `?.`, indexing `[]` and calls `name(...)`
class StacExpressionParser {
  /// Creates a parser over [source].
  ///
  /// Throws a [StacExpressionException] if [source] cannot be tokenized.
  StacExpressionParser(this.source)
    : _tokens = StacExpressionLexer(source).tokenize();

  /// The expression text being parsed.
  final String source;

  final List<StacToken> _tokens;
  int _index = 0;

  static const int _ternaryPrecedence = 1;
  static const int _nullCoalescePrecedence = 2;
  static const int _orPrecedence = 3;
  static const int _andPrecedence = 4;
  static const int _equalityPrecedence = 5;
  static const int _relationalPrecedence = 6;
  static const int _additivePrecedence = 7;
  static const int _multiplicativePrecedence = 8;

  /// Parses the whole [source] as a single expression.
  ///
  /// Throws a [StacExpressionException] describing the first syntax error.
  StacExpressionNode parse() {
    if (_check(StacTokenType.eof)) {
      throw StacExpressionException(
        'Expression is empty',
        offset: 0,
        source: source,
      );
    }
    final node = _parseExpression(0);
    if (!_check(StacTokenType.eof)) {
      throw _error("Unexpected '${_peek.lexeme}'", _peek);
    }
    return node;
  }

  StacToken get _peek => _tokens[_index];

  StacToken _advance() => _tokens[_index++];

  bool _check(StacTokenType type) => _peek.type == type;

  bool _match(StacTokenType type) {
    if (_check(type)) {
      _index++;
      return true;
    }
    return false;
  }

  StacToken _expect(StacTokenType type, String description) {
    if (_check(type)) return _advance();
    throw _error('Expected $description', _peek);
  }

  StacExpressionException _error(String message, StacToken token) {
    final detail = token.type == StacTokenType.eof
        ? '$message but reached the end of the expression'
        : message.startsWith('Unexpected')
        ? message
        : "$message but found '${token.lexeme}'";
    return StacExpressionException(
      detail,
      offset: token.offset,
      source: source,
    );
  }

  StacExpressionNode _parseExpression(int minPrecedence) {
    var left = _parseUnary();
    while (true) {
      final token = _peek;
      if (token.type == StacTokenType.question) {
        if (_ternaryPrecedence <= minPrecedence) break;
        _advance();
        final thenBranch = _parseExpression(0);
        _expect(StacTokenType.colon, "':' in conditional expression");
        final elseBranch = _parseExpression(_ternaryPrecedence - 1);
        left = StacConditionalNode(left, thenBranch, elseBranch, left.offset);
        continue;
      }
      final operator = _binaryOperatorFor(token.type);
      if (operator == null) break;
      final precedence = _precedenceOf(operator);
      if (precedence <= minPrecedence) break;
      _advance();
      final rightMin = operator == StacBinaryOperator.nullCoalesce
          ? precedence - 1
          : precedence;
      final right = _parseExpression(rightMin);
      left = StacBinaryNode(operator, left, right, left.offset);
    }
    return left;
  }

  StacExpressionNode _parseUnary() {
    final token = _peek;
    if (token.type == StacTokenType.minus) {
      _advance();
      return StacUnaryNode(
        StacUnaryOperator.negate,
        _parseUnary(),
        token.offset,
      );
    }
    if (token.type == StacTokenType.bang) {
      _advance();
      return StacUnaryNode(StacUnaryOperator.not, _parseUnary(), token.offset);
    }
    return _parsePostfix(_parsePrimary());
  }

  StacExpressionNode _parsePrimary() {
    final token = _advance();
    switch (token.type) {
      case StacTokenType.number:
      case StacTokenType.string:
        return StacLiteralNode(token.value, token.offset);
      case StacTokenType.trueKeyword:
        return StacLiteralNode(true, token.offset);
      case StacTokenType.falseKeyword:
        return StacLiteralNode(false, token.offset);
      case StacTokenType.nullKeyword:
        return StacLiteralNode(null, token.offset);
      case StacTokenType.identifier:
        if (_match(StacTokenType.leftParen)) {
          return StacCallNode(token.lexeme, _parseArguments(), token.offset);
        }
        return StacIdentifierNode(token.lexeme, token.offset);
      case StacTokenType.leftParen:
        final inner = _parseExpression(0);
        _expect(StacTokenType.rightParen, "')'");
        return inner;
      case StacTokenType.leftBracket:
        return StacListLiteralNode(_parseListElements(), token.offset);
      default:
        throw _error('Expected a value', token);
    }
  }

  List<StacExpressionNode> _parseArguments() {
    final arguments = <StacExpressionNode>[];
    if (_match(StacTokenType.rightParen)) return arguments;
    while (true) {
      arguments.add(_parseExpression(0));
      if (_match(StacTokenType.comma)) {
        if (_check(StacTokenType.rightParen)) break;
        continue;
      }
      break;
    }
    _expect(StacTokenType.rightParen, "')' after arguments");
    return arguments;
  }

  List<StacExpressionNode> _parseListElements() {
    final elements = <StacExpressionNode>[];
    if (_match(StacTokenType.rightBracket)) return elements;
    while (true) {
      elements.add(_parseExpression(0));
      if (_match(StacTokenType.comma)) {
        if (_check(StacTokenType.rightBracket)) break;
        continue;
      }
      break;
    }
    _expect(StacTokenType.rightBracket, "']' after list elements");
    return elements;
  }

  StacExpressionNode _parsePostfix(StacExpressionNode node) {
    var current = node;
    while (true) {
      if (_check(StacTokenType.dot) || _check(StacTokenType.questionDot)) {
        final nullAware = _advance().type == StacTokenType.questionDot;
        final member = _peek;
        if (member.type == StacTokenType.identifier ||
            member.type == StacTokenType.trueKeyword ||
            member.type == StacTokenType.falseKeyword ||
            member.type == StacTokenType.nullKeyword) {
          _advance();
          if (_match(StacTokenType.leftParen)) {
            // Method-call sugar: `name.upper()` is `upper(name)`.
            current = StacCallNode(member.lexeme, [
              current,
              ..._parseArguments(),
            ], current.offset);
            continue;
          }
          current = StacMemberNode(
            current,
            member.lexeme,
            current.offset,
            nullAware: nullAware,
          );
          continue;
        }
        if (member.type == StacTokenType.number && member.value is int) {
          _advance();
          current = StacIndexNode(
            current,
            StacLiteralNode(member.value, member.offset),
            current.offset,
          );
          continue;
        }
        throw _error("Expected a property name after '.'", member);
      }
      if (_match(StacTokenType.leftBracket)) {
        final index = _parseExpression(0);
        _expect(StacTokenType.rightBracket, "']'");
        current = StacIndexNode(current, index, current.offset);
        continue;
      }
      return current;
    }
  }

  static StacBinaryOperator? _binaryOperatorFor(StacTokenType type) {
    return switch (type) {
      StacTokenType.plus => StacBinaryOperator.add,
      StacTokenType.minus => StacBinaryOperator.subtract,
      StacTokenType.star => StacBinaryOperator.multiply,
      StacTokenType.slash => StacBinaryOperator.divide,
      StacTokenType.percent => StacBinaryOperator.modulo,
      StacTokenType.equalEqual => StacBinaryOperator.equal,
      StacTokenType.bangEqual => StacBinaryOperator.notEqual,
      StacTokenType.less => StacBinaryOperator.less,
      StacTokenType.lessEqual => StacBinaryOperator.lessEqual,
      StacTokenType.greater => StacBinaryOperator.greater,
      StacTokenType.greaterEqual => StacBinaryOperator.greaterEqual,
      StacTokenType.ampersandAmpersand => StacBinaryOperator.and,
      StacTokenType.pipePipe => StacBinaryOperator.or,
      StacTokenType.questionQuestion => StacBinaryOperator.nullCoalesce,
      _ => null,
    };
  }

  static int _precedenceOf(StacBinaryOperator operator) {
    return switch (operator) {
      StacBinaryOperator.nullCoalesce => _nullCoalescePrecedence,
      StacBinaryOperator.or => _orPrecedence,
      StacBinaryOperator.and => _andPrecedence,
      StacBinaryOperator.equal ||
      StacBinaryOperator.notEqual => _equalityPrecedence,
      StacBinaryOperator.less ||
      StacBinaryOperator.lessEqual ||
      StacBinaryOperator.greater ||
      StacBinaryOperator.greaterEqual => _relationalPrecedence,
      StacBinaryOperator.add ||
      StacBinaryOperator.subtract => _additivePrecedence,
      StacBinaryOperator.multiply ||
      StacBinaryOperator.divide ||
      StacBinaryOperator.modulo => _multiplicativePrecedence,
    };
  }
}
