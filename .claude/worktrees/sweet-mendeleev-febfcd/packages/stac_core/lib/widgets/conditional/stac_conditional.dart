import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_conditional.g.dart';

/// A Stac model representing a conditional widget.
///
/// Evaluates a boolean expression in [condition] and renders either [ifTrue]
/// or [ifFalse]. If [ifFalse] is not provided and the condition evaluates to
/// false, an empty widget will be rendered by the parser.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacConditional(
///   condition: "user.isLoggedIn == true",
///   ifTrue: StacText(data: 'Welcome back!'),
///   ifFalse: StacText(data: 'Please sign in'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "conditional",
///   "condition": "user.isLoggedIn == true",
///   "ifTrue": { "type": "text", "data": "Welcome back!" },
///   "ifFalse": { "type": "text", "data": "Please sign in" }
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacConditional extends StacWidget {
  /// Creates a [StacConditional].
  const StacConditional({
    required this.condition,
    required this.ifTrue,
    this.ifFalse,
  });

  /// The boolean expression to evaluate.
  ///
  /// This string is evaluated at runtime by the framework's expression
  /// resolver. If it evaluates to true, [ifTrue] is rendered; otherwise
  /// [ifFalse] is rendered when provided.
  final String condition;

  /// The widget to render when [condition] evaluates to true.
  final StacWidget ifTrue;

  /// The widget to render when [condition] evaluates to false.
  /// If null, the parser will render an empty widget.
  final StacWidget? ifFalse;

  /// Widget type identifier.
  @override
  String get type => WidgetType.conditional.name;

  /// Creates a [StacConditional] from a JSON map.
  factory StacConditional.fromJson(Map<String, dynamic> json) =>
      _$StacConditionalFromJson(json);

  /// Converts this [StacConditional] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacConditionalToJson(this);
}
