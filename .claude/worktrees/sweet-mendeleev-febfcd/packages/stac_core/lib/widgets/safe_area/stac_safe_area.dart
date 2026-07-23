import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_safe_area.g.dart';

/// A Stac model representing Flutter's [SafeArea] widget.
///
/// A widget that insets its child by sufficient padding to avoid intrusions by
/// the operating system.
///
/// ```dart
/// StacSafeArea(
///   left: true,
///   top: true,
///   right: true,
///   bottom: true,
///   minimum: StacEdgeInsets.all(8.0),
///   maintainBottomViewPadding: false,
///   child: StacText(data: 'Content within safe area'),
/// )
/// ```
///
/// ```json
/// {
///   "type": "safeArea",
///   "left": true,
///   "top": true,
///   "right": true,
///   "bottom": true,
///   "minimum": {
///     "type": "edge_insets",
///     "value": {"all": 8.0}
///   },
///   "maintainBottomViewPadding": false,
///   "child": {"type": "text", "data": "Content within safe area"}
/// }
/// ```
@JsonSerializable()
class StacSafeArea extends StacWidget {
  /// Creates a [StacSafeArea] with the given properties.
  const StacSafeArea({
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.minimum,
    this.maintainBottomViewPadding,
    this.child,
  });

  /// Whether to avoid system intrusions on the left.
  final bool? left;

  /// Whether to avoid system intrusions on the top.
  final bool? top;

  /// Whether to avoid system intrusions on the right.
  final bool? right;

  /// Whether to avoid system intrusions on the bottom.
  final bool? bottom;

  /// This minimum padding to apply.
  final StacEdgeInsets? minimum;

  /// Specifies whether the [SafeArea] should maintain the [MediaQueryData.viewPadding]
  /// instead of the [MediaQueryData.padding] when consumed by the [MediaQueryData.viewInsets]
  /// of the current context's [MediaQuery], defaults to false.
  final bool? maintainBottomViewPadding;

  /// The widget below this widget in the tree.
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.safeArea.name;

  /// Creates a [StacSafeArea] from JSON.
  factory StacSafeArea.fromJson(Map<String, dynamic> json) =>
      _$StacSafeAreaFromJson(json);

  /// Converts this StacSafeArea to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacSafeAreaToJson(this);
}
