import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_sliver_fill_remaining.g.dart';

/// A Stac model representing Flutter's [SliverFillRemaining] widget.
///
/// Fills the remaining space in a `CustomScrollView` after all preceding
/// slivers have been laid out.
///
/// This widget is commonly used to display empty states, footers, or
/// centered content that should expand to occupy the remaining viewport.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacSliverFillRemaining(
///   hasScrollBody: false,
///   child: StacCenter(
///     child: StacText(data: 'No items available'),
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "sliverFillRemaining",
///   "hasScrollBody": false,
///   "child": {
///     "type": "center",
///     "child": {
///       "type": "text",
///       "data": "No items available"
///     }
///   }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [SliverFillRemaining documentation]
///    (https://api.flutter.dev/flutter/widgets/SliverFillRemaining-class.html)
@JsonSerializable()
class StacSliverFillRemaining extends StacWidget {
  /// Creates a [StacSliverFillRemaining] with the given properties.
  const StacSliverFillRemaining({
    this.child,
    this.hasScrollBody,
    this.fillOverscroll,
  });

  /// The widget to display in the remaining space of the scroll view.
  final StacWidget? child;

  /// Whether the [child] has a scrollable body.
  ///
  /// Defaults to `true`.
  final bool? hasScrollBody;

  /// Whether the sliver should stretch to fill the over-scroll area.
  ///
  /// Defaults to `false`.
  final bool? fillOverscroll;

  /// Widget type identifier.
  @override
  String get type => WidgetType.sliverFillRemaining.name;

  /// Creates a [StacSliverFillRemaining] from a JSON map.
  factory StacSliverFillRemaining.fromJson(Map<String, dynamic> json) =>
      _$StacSliverFillRemainingFromJson(json);

  /// Converts this [StacSliverFillRemaining] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacSliverFillRemainingToJson(this);
}
