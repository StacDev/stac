import 'ast.dart';
import 'evaluator.dart';
import 'expression_exception.dart';
import 'parser.dart';
import 'scope_reader.dart';

/// A parsed Stac expression, ready to evaluate any number of times.
///
/// ```dart
/// final expression = StacExpression.parse("count > 0 ? 'Items: ' + count : 'Empty'");
/// expression.evaluate(StacMapScopeReader({'count': 3})); // 'Items: 3'
/// ```
///
/// Parsed expressions are cached by source text, so parsing the same string
/// repeatedly is cheap.
class StacExpression {
  StacExpression._(this.source, this.node);

  static const int _maxCacheSize = 1024;
  static final Map<String, StacExpression> _cache = {};

  /// Parses [source], throwing a [StacExpressionException] on syntax errors.
  factory StacExpression.parse(String source) {
    final cached = _cache.remove(source);
    if (cached != null) {
      _cache[source] = cached;
      return cached;
    }
    final expression = StacExpression._(
      source,
      StacExpressionParser(source).parse(),
    );
    _cache[source] = expression;
    if (_cache.length > _maxCacheSize) _cache.remove(_cache.keys.first);
    return expression;
  }

  /// Parses [source], returning `null` instead of throwing on syntax errors.
  static StacExpression? tryParse(String source) {
    try {
      return StacExpression.parse(source);
    } on StacExpressionException {
      return null;
    }
  }

  /// The expression text.
  final String source;

  /// The parsed syntax tree.
  final StacExpressionNode node;

  /// Evaluates the expression against [scope] with [evaluator].
  ///
  /// Throws a [StacExpressionException] on type errors.
  Object? evaluate([
    StacScopeReader scope = const StacEmptyScopeReader(),
    StacExpressionEvaluator evaluator = const StacExpressionEvaluator(),
  ]) {
    return evaluator.evaluate(node, scope, source);
  }

  @override
  String toString() => 'StacExpression($source)';
}
