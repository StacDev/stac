import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_sliver_visibility.g.dart';

/// A Stac model representing Flutter's [SliverVisibility] widget.
///
/// Controls whether a sliver is visible in a [CustomScrollView].
/// When not visible, the sliver can optionally preserve layout,
/// state, animation, semantics, or interactivity.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacSliverVisibility(
///   visible: false,
///   sliver: StacSliverToBoxAdapter(
///     child: StacText(data: 'Hidden content'),
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "sliverVisibility",
///   "visible": false,
///   "sliver": {
///     "type": "sliverToBoxAdapter",
///     "child": {
///       "type": "text",
///       "data": "Hidden content"
///     }
///   }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [SliverVisibility documentation](https://api.flutter.dev/flutter/widgets/SliverVisibility-class.html)
@JsonSerializable()
class StacSliverVisibility extends StacWidget {
  /// Creates a [StacSliverVisibility].
  const StacSliverVisibility({
    required this.sliver,
    this.replacementSliver,
    this.visible,
    this.maintainState,
    this.maintainAnimation,
    this.maintainSize,
    this.maintainSemantics,
    this.maintainInteractivity,
  });

  /// The sliver whose visibility is controlled.
  final StacWidget sliver;

  /// The sliver to display when [visible] is false.
  final StacWidget? replacementSliver;

  /// Whether the sliver is visible.
  ///
  /// Defaults to `true`.
  final bool? visible;

  /// Whether to maintain the state of the sliver when hidden.
  final bool? maintainState;

  /// Whether to maintain animations when the sliver is hidden.
  final bool? maintainAnimation;

  /// Whether to maintain layout space when the sliver is hidden.
  final bool? maintainSize;

  /// Whether to maintain semantics when the sliver is hidden.
  final bool? maintainSemantics;

  /// Whether to maintain interactivity when the sliver is hidden.
  final bool? maintainInteractivity;

  @override
  String get type => WidgetType.sliverVisibility.name;

  /// Creates a [StacSliverVisibility] from a JSON map.
  factory StacSliverVisibility.fromJson(Map<String, dynamic> json) =>
      _$StacSliverVisibilityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacSliverVisibilityToJson(this);
}
