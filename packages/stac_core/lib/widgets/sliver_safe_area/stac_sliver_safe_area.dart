import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_sliver_safe_area.g.dart';

/// A Stac model representing Flutter's [SliverSafeArea] widget.
///
/// Insets its sliver child to avoid system UI intrusions
/// such as status bar, notch, or navigation bar.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacSliverSafeArea(
///   top: true,
///   sliver: StacSliverToBoxAdapter(
///     child: StacText(data: 'Hello World'),
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "sliverSafeArea",
///   "top": true,
///   "sliver": {
///     "type": "sliverToBoxAdapter",
///     "child": {
///       "type": "text",
///       "data": "Hello World"
///     }
///   }
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacSliverSafeArea extends StacWidget {
  /// Creates a [StacSliverSafeArea].
  const StacSliverSafeArea({
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.minimum,
    required this.sliver,
  });

  /// Whether to avoid intrusions on the left.
  final bool? left;

  /// Whether to avoid intrusions at the top.
  final bool? top;

  /// Whether to avoid intrusions on the right.
  final bool? right;

  /// Whether to avoid intrusions at the bottom.
  final bool? bottom;

  /// Minimum padding to apply.
  final StacEdgeInsets? minimum;

  /// The sliver below this widget in the tree.
  final StacWidget sliver;

  /// Widget type identifier.
  @override
  String get type => WidgetType.sliverSafeArea.name;

  /// Creates a [StacSliverSafeArea] from JSON.
  factory StacSliverSafeArea.fromJson(Map<String, dynamic> json) =>
      _$StacSliverSafeAreaFromJson(json);

  /// Converts this instance to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacSliverSafeAreaToJson(this);
}
