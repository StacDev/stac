import 'ast.dart';
import 'expression_exception.dart';
import 'functions.dart';
import 'scope_reader.dart';
import 'values.dart';

/// The outcome of [StacExpressionEvaluator.evaluateDetailed].
final class StacEvaluation {
  /// Creates an evaluation result.
  const StacEvaluation(
    this.value, {
    this.misses = 0,
    this.barewords = const [],
  });

  /// The value the expression produced.
  final Object? value;

  /// How many variable lookups or member accesses found no binding.
  ///
  /// Each miss evaluated as `null`. Callers that resolve templates in several
  /// passes use this to postpone placeholders whose data is not available yet.
  final int misses;

  /// Unbound identifiers that were treated as text because
  /// [StacExpressionEvaluator.barewordStrings] was enabled.
  final List<String> barewords;

  /// Whether any lookup found no binding.
  bool get hasMisses => misses > 0;
}

/// Evaluates [StacExpressionNode] trees against a [StacScopeReader].
///
/// Semantics, in brief:
///
/// * Unbound variables and missing members evaluate to `null`.
/// * `&&`, `||` and `!` use [stacIsTruthy] and produce booleans.
/// * `==` and `!=` use [stacLooseEquals]; `<`, `<=`, `>` and `>=` use
///   [stacCompare] and yield `false` for values that cannot be ordered.
/// * `+` concatenates when either side is a string, joins two lists, and
///   otherwise adds numbers. `-`, `*`, `/` and `%` accept numbers and numeric
///   strings. Dividing two integers that divide evenly yields an integer.
/// * Calls invoke the whitelisted [functions].
///
/// Type errors, unknown functions and division by zero throw
/// [StacExpressionException].
class StacExpressionEvaluator {
  /// Creates an evaluator.
  const StacExpressionEvaluator({
    this.functions = StacExpressionFunctions.builtIn,
    this.barewordStrings = false,
  });

  /// The functions expressions may call, by name.
  final Map<String, StacExpressionFunction> functions;

  /// Whether an unbound bare identifier evaluates to its own name as a string.
  ///
  /// This keeps legacy conditions such as `status == active` working. It only
  /// applies to an identifier used on its own, never to the root of a path
  /// like `user.name`.
  final bool barewordStrings;

  /// Evaluates [node] against [scope] and returns its value.
  ///
  /// [source] is the expression text, used in error messages.
  Object? evaluate(
    StacExpressionNode node, [
    StacScopeReader scope = const StacEmptyScopeReader(),
    String? source,
  ]) {
    return evaluateDetailed(node, scope, source: source).value;
  }

  /// Evaluates [node] against [scope] and reports how many lookups missed.
  StacEvaluation evaluateDetailed(
    StacExpressionNode node,
    StacScopeReader scope, {
    String? source,
  }) {
    final run = _Run(this, scope, source);
    final value = run.eval(node);
    return StacEvaluation(
      value,
      misses: run.misses,
      barewords: List.unmodifiable(run.barewords),
    );
  }
}

class _Run {
  _Run(this.evaluator, this.scope, this.source);

  final StacExpressionEvaluator evaluator;
  final StacScopeReader scope;
  final String? source;
  int misses = 0;
  final List<String> barewords = [];

  StacExpressionException _error(String message, StacExpressionNode node) {
    return StacExpressionException(
      message,
      offset: node.offset,
      source: source,
    );
  }

  Object? _unbound(Object? value) {
    if (identical(value, stacUnbound)) {
      misses++;
      return null;
    }
    return value;
  }

  Object? eval(StacExpressionNode node) {
    switch (node) {
      case StacLiteralNode(:final value):
        return value;
      case StacIdentifierNode(:final name):
        final value = scope.lookup(name);
        if (identical(value, stacUnbound) && evaluator.barewordStrings) {
          barewords.add(name);
          return name;
        }
        return _unbound(value);
      case StacListLiteralNode(:final elements):
        return [for (final element in elements) eval(element)];
      case StacUnaryNode():
        return _unary(node);
      case StacBinaryNode():
        return _binary(node);
      case StacConditionalNode(:final condition, :final thenBranch):
        return stacIsTruthy(eval(condition))
            ? eval(thenBranch)
            : eval(node.elseBranch);
      case StacMemberNode(:final target, :final name):
        final path = stacStaticPath(node);
        if (path != null) return _unbound(scope.lookupPath(path));
        return _unbound(stacAccessMember(eval(target), name));
      case StacIndexNode(:final target, :final index):
        final path = stacStaticPath(node);
        if (path != null) return _unbound(scope.lookupPath(path));
        final container = eval(target);
        return _unbound(stacIndex(container, eval(index)));
      case StacCallNode():
        return _call(node);
    }
  }

  Object? _unary(StacUnaryNode node) {
    final operand = eval(node.operand);
    switch (node.operator) {
      case StacUnaryOperator.not:
        return !stacIsTruthy(operand);
      case StacUnaryOperator.negate:
        final number = stacToNum(operand);
        if (number == null) {
          throw _error('Cannot negate ${stacDescribeType(operand)}', node);
        }
        return -number;
    }
  }

  Object? _binary(StacBinaryNode node) {
    switch (node.operator) {
      case StacBinaryOperator.and:
        return stacIsTruthy(eval(node.left)) && stacIsTruthy(eval(node.right));
      case StacBinaryOperator.or:
        return stacIsTruthy(eval(node.left)) || stacIsTruthy(eval(node.right));
      case StacBinaryOperator.nullCoalesce:
        return eval(node.left) ?? eval(node.right);
      default:
        break;
    }

    final left = eval(node.left);
    final right = eval(node.right);
    switch (node.operator) {
      case StacBinaryOperator.equal:
        return stacLooseEquals(left, right);
      case StacBinaryOperator.notEqual:
        return !stacLooseEquals(left, right);
      case StacBinaryOperator.less:
        final order = stacCompare(left, right);
        return order != null && order < 0;
      case StacBinaryOperator.lessEqual:
        final order = stacCompare(left, right);
        return order != null && order <= 0;
      case StacBinaryOperator.greater:
        final order = stacCompare(left, right);
        return order != null && order > 0;
      case StacBinaryOperator.greaterEqual:
        final order = stacCompare(left, right);
        return order != null && order >= 0;
      case StacBinaryOperator.add:
        return _add(left, right, node);
      case StacBinaryOperator.subtract:
      case StacBinaryOperator.multiply:
      case StacBinaryOperator.divide:
      case StacBinaryOperator.modulo:
        return _arithmetic(node, left, right);
      case StacBinaryOperator.and:
      case StacBinaryOperator.or:
      case StacBinaryOperator.nullCoalesce:
        throw StateError('unreachable');
    }
  }

  Object? _add(Object? left, Object? right, StacBinaryNode node) {
    if (left is String || right is String) {
      return stacStringify(left) + stacStringify(right);
    }
    if (left is num && right is num) return left + right;
    if (left is List && right is List) return [...left, ...right];
    throw _error(
      'Cannot add ${stacDescribeType(left)} and ${stacDescribeType(right)}',
      node,
    );
  }

  Object? _arithmetic(StacBinaryNode node, Object? leftValue, Object? right) {
    final a = stacToNum(leftValue);
    final b = stacToNum(right);
    if (a == null || b == null) {
      throw _error(
        "Operator '${node.operator.symbol}' needs numbers but got "
        '${stacDescribeType(leftValue)} and ${stacDescribeType(right)}',
        node,
      );
    }
    switch (node.operator) {
      case StacBinaryOperator.subtract:
        return a - b;
      case StacBinaryOperator.multiply:
        return a * b;
      case StacBinaryOperator.divide:
        if (b == 0) throw _error('Division by zero', node);
        if (a is int && b is int && a % b == 0) return a ~/ b;
        return a / b;
      case StacBinaryOperator.modulo:
        if (b == 0) throw _error('Division by zero', node);
        return a % b;
      default:
        throw StateError('unreachable');
    }
  }

  Object? _call(StacCallNode node) {
    final function = evaluator.functions[node.name];
    if (function == null) {
      throw _error("Unknown function '${node.name}'", node);
    }
    final arguments = [for (final argument in node.arguments) eval(argument)];
    try {
      return function(arguments);
    } on StacExpressionException catch (e) {
      if (e.offset != null) rethrow;
      throw _error(e.message, node);
    }
  }
}
