import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_visibility.g.dart';

/// A Stac model representing Flutter's [Visibility] widget.
///
/// Controls the visibility of its child widget.
///
/// ```dart
/// StacVisibility(
///   visible: true,
///   child: StacText(data: 'Visible Text'),
///   replacement: StacText(data: 'Replacement when not visible'),
/// )
/// ```
///
/// ```json
/// {
///   "type": "visibility",
///   "visible": true,
///   "child": {"type": "text", "data": "Visible Text"},
///   "replacement": {"type": "text", "data": "Replacement when not visible"}
/// }
/// ```
@JsonSerializable()
class StacVisibility extends StacWidget {
  /// Creates a [StacVisibility] with the given properties.
  const StacVisibility({
    this.visible,
    this.child,
    this.replacement,
    this.maintainState,
    this.maintainAnimation,
    this.maintainSize,
    this.maintainSemantics,
    this.maintainInteractivity,
  });

  /// The widget to show or hide.
  final StacWidget? child;

  /// Whether the child is visible.
  /// Defaults to true in the Flutter widget.
  final bool? visible;

  /// The widget to show when the child is not visible.
  /// If null, and [maintainState], [maintainAnimation], [maintainSize],
  /// [maintainSemantics], and [maintainInteractivity] are all false,
  /// then the [child] is simply not included in the tree.
  final StacWidget? replacement;

  /// Whether to maintain the State of the child when it is not visible.
  /// Defaults to false.
  final bool? maintainState;

  /// Whether to maintain the Animation of the child when it is not visible.
  /// Defaults to false.
  final bool? maintainAnimation;

  /// Whether to maintain the Size of the child when it is not visible.
  /// Defaults to false.
  final bool? maintainSize;

  /// Whether to maintain the Semantics of the child when it is not visible.
  /// Defaults to false.
  final bool? maintainSemantics;

  /// Whether to maintain the Interactivity of the child when it is not visible.
  /// Defaults to false.
  final bool? maintainInteractivity;

  /// Widget type identifier.
  @override
  String get type => WidgetType.visibility.name;

  /// Creates a [StacVisibility] from JSON.
  factory StacVisibility.fromJson(Map<String, dynamic> json) =>
      _$StacVisibilityFromJson(json);

  /// Converts this StacVisibility to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacVisibilityToJson(this);
}
