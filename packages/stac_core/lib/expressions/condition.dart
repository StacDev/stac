import 'evaluator.dart';
import 'expression.dart';
import 'expression_exception.dart';
import 'scope_reader.dart';
import 'template.dart';
import 'values.dart';

/// The outcome of [evaluateStacCondition].
final class StacConditionResult {
  /// Creates a condition result.
  const StacConditionResult(
    this.value, {
    this.barewords = const [],
    this.error,
  });

  /// Whether the condition holds. `false` when [error] is set.
  final bool value;

  /// Unquoted words that were treated as text, such as `active` in
  /// `status == active`. Quoting them (`'active'`) is preferred.
  final List<String> barewords;

  /// Why the condition could not be evaluated, if it could not.
  final StacExpressionException? error;
}

const StacExpressionEvaluator _conditionEvaluator = StacExpressionEvaluator(
  barewordStrings: true,
);

/// Evaluates the condition of a `conditional` widget against [scope].
///
/// The condition is an expression such as `cart.total > 100 && user != null`.
/// It may also contain `{{ }}` placeholders, which are first replaced by
/// their values written as expression literals, so `{{name}} == 'Ann Lee'`
/// compares strings correctly. For compatibility with older screens, an
/// unquoted word that is not a variable is read as text, so `status == active`
/// compares against the string `'active'`.
///
/// The result is made boolean with [stacIsTruthy]. Conditions that fail to
/// parse or evaluate yield `false` and report the problem in
/// [StacConditionResult.error].
StacConditionResult evaluateStacCondition(
  String condition,
  StacScopeReader scope, {
  StacTemplateErrorHandler? onError,
}) {
  var text = condition;
  if (StacTemplate.hasPlaceholderSyntax(text)) {
    text =
        StacTemplate.parse(text).resolve(
              scope,
              mode: StacTemplateMode.expression,
              onError: onError,
            )
            as String;
  }
  try {
    final expression = StacExpression.parse(text);
    final evaluation = _conditionEvaluator.evaluateDetailed(
      expression.node,
      scope,
      source: text,
    );
    return StacConditionResult(
      stacIsTruthy(evaluation.value),
      barewords: evaluation.barewords,
    );
  } on StacExpressionException catch (e) {
    return StacConditionResult(false, error: e);
  }
}
