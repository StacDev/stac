/// Base class of all expression syntax tree nodes.
sealed class StacExpressionNode {
  /// Creates a node that starts at [offset] in the source.
  const StacExpressionNode(this.offset);

  /// Zero-based offset of the node's first character in the source.
  final int offset;
}

/// A literal value: a number, string, boolean or `null`.
final class StacLiteralNode extends StacExpressionNode {
  /// Creates a literal holding [value].
  const StacLiteralNode(this.value, super.offset);

  /// The literal value.
  final Object? value;
}

/// A bare identifier such as `user` or `$screen`.
final class StacIdentifierNode extends StacExpressionNode {
  /// Creates an identifier reference to [name].
  const StacIdentifierNode(this.name, super.offset);

  /// The identifier text.
  final String name;
}

/// A list literal such as `[1, 2, 3]`.
final class StacListLiteralNode extends StacExpressionNode {
  /// Creates a list literal with [elements].
  const StacListLiteralNode(this.elements, super.offset);

  /// The element expressions in source order.
  final List<StacExpressionNode> elements;
}

/// A prefix operator applied to a single operand, e.g. `-x` or `!done`.
final class StacUnaryNode extends StacExpressionNode {
  /// Creates a unary application of [operator] to [operand].
  const StacUnaryNode(this.operator, this.operand, super.offset);

  /// The operator.
  final StacUnaryOperator operator;

  /// The operand expression.
  final StacExpressionNode operand;
}

/// A binary operator applied to two operands, e.g. `a + b`.
final class StacBinaryNode extends StacExpressionNode {
  /// Creates a binary application of [operator] to [left] and [right].
  const StacBinaryNode(this.operator, this.left, this.right, super.offset);

  /// The operator.
  final StacBinaryOperator operator;

  /// The left operand.
  final StacExpressionNode left;

  /// The right operand.
  final StacExpressionNode right;
}

/// The conditional expression `condition ? thenBranch : elseBranch`.
final class StacConditionalNode extends StacExpressionNode {
  /// Creates a conditional expression.
  const StacConditionalNode(
    this.condition,
    this.thenBranch,
    this.elseBranch,
    super.offset,
  );

  /// The expression deciding which branch is taken.
  final StacExpressionNode condition;

  /// The expression evaluated when [condition] is truthy.
  final StacExpressionNode thenBranch;

  /// The expression evaluated when [condition] is falsy.
  final StacExpressionNode elseBranch;
}

/// Member access `target.name` or `target?.name`.
final class StacMemberNode extends StacExpressionNode {
  /// Creates a member access of [name] on [target].
  const StacMemberNode(
    this.target,
    this.name,
    super.offset, {
    this.nullAware = false,
  });

  /// The expression whose member is accessed.
  final StacExpressionNode target;

  /// The member name.
  final String name;

  /// Whether the access was written with `?.`.
  ///
  /// Member access on `null` always yields `null`, so this only records the
  /// author's intent.
  final bool nullAware;
}

/// Index access `target[index]`.
final class StacIndexNode extends StacExpressionNode {
  /// Creates an index access of [index] on [target].
  const StacIndexNode(this.target, this.index, super.offset);

  /// The expression being indexed.
  final StacExpressionNode target;

  /// The index expression.
  final StacExpressionNode index;
}

/// A function call `name(arguments)`.
final class StacCallNode extends StacExpressionNode {
  /// Creates a call to the function [name] with [arguments].
  const StacCallNode(this.name, this.arguments, super.offset);

  /// The function name.
  final String name;

  /// The argument expressions in source order.
  final List<StacExpressionNode> arguments;
}

/// Prefix operators.
enum StacUnaryOperator {
  /// Arithmetic negation `-x`.
  negate('-'),

  /// Logical negation `!x`.
  not('!');

  const StacUnaryOperator(this.symbol);

  /// The operator as written in source.
  final String symbol;
}

/// Binary operators.
enum StacBinaryOperator {
  /// `+`: numeric addition, string concatenation or list concatenation.
  add('+'),

  /// `-`
  subtract('-'),

  /// `*`
  multiply('*'),

  /// `/`
  divide('/'),

  /// `%`
  modulo('%'),

  /// `==`
  equal('=='),

  /// `!=`
  notEqual('!='),

  /// `<`
  less('<'),

  /// `<=`
  lessEqual('<='),

  /// `>`
  greater('>'),

  /// `>=`
  greaterEqual('>='),

  /// `&&`
  and('&&'),

  /// `||`
  or('||'),

  /// `??`
  nullCoalesce('??');

  const StacBinaryOperator(this.symbol);

  /// The operator as written in source.
  final String symbol;
}

/// Returns the static path of a member or index chain rooted at an
/// identifier, or `null` when [node] is not a plain path.
///
/// `user.profile.name` yields `['user', 'profile', 'name']` and
/// `items[0].title` yields `['items', '0', 'title']`. Expressions containing
/// operators, calls or computed indexes return `null`.
List<String>? stacStaticPath(StacExpressionNode node) {
  final reversed = <String>[];
  var current = node;
  while (true) {
    switch (current) {
      case StacIdentifierNode(:final name):
        reversed.add(name);
        return reversed.reversed.toList();
      case StacMemberNode(:final target, :final name):
        reversed.add(name);
        current = target;
      case StacIndexNode(:final target, :final index):
        if (index is StacLiteralNode &&
            (index.value is int || index.value is String)) {
          reversed.add(index.value.toString());
          current = target;
        } else {
          return null;
        }
      default:
        return null;
    }
  }
}
