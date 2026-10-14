import 'package:stac/src/expressions/stac_expression_runtime.dart';
import 'package:stac_core/stac_core.dart';

/// Evaluates expressions in Stac templates.
@Deprecated(
  'Use StacExpression or evaluateStacCondition from stac_core. '
  'Will be removed in a future release.',
)
class ExpressionResolver {
  /// Evaluates [expression] against the variables in `StacRegistry`.
  ///
  /// Returns [expression] unchanged when it cannot be parsed or evaluated.
  static dynamic evaluate(String expression) {
    try {
      return StacExpression.parse(expression).evaluate(
        stacRuntimeScope(),
        const StacExpressionEvaluator(barewordStrings: true),
      );
    } on StacExpressionException {
      return expression;
    }
  }
}
