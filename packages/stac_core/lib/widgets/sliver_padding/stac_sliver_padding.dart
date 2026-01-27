import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';
part 'stac_sliver_padding.g.dart';

/// A Stac model representing Flutter's [SliverPadding] widget.
///
/// Insets its sliver child by the given padding.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacSliverPadding(
///   padding: StacEdgeInsets.all(16),
///   sliver: StacSliverToBoxAdapter(...),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///     "type": "sliverPadding",
///     "padding": 16.0,
///     "sliver": {
///         "type": "sliverToBoxAdapter",
///         "child": {
///             "type": "container",
///             "height": 150,
///             "color": "#4CAF50",
///             "child": {
///                 "type": "center",
///                 "child": {
///                     "type": "text",
///                     "data": "I am a Box inside a SliverPadding!",
///                     "style": {
///                         "color": "#FFFFFF",
///                         "fontWeight": "bold"
///                     }
///                 }
///             }
///         }
///     }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [SliverPadding documentation](https://api.flutter.dev/flutter/widgets/SliverPadding-class.html)
@JsonSerializable()
class StacSliverPadding extends StacWidget {
  /// Creates a [StacSliverPadding].
  const StacSliverPadding({required this.sliver, required this.padding});

  /// The amount of space by which to inset the child sliver.
  final StacEdgeInsets padding;

  /// The sliver to apply padding to.
  final StacWidget sliver;

  /// Widget type identifier.
  @override
  String get type => WidgetType.sliverPadding.name;

  /// Creates a [StacSliverPadding] from a JSON map.
  factory StacSliverPadding.fromJson(Map<String, dynamic> json) =>
      _$StacSliverPaddingFromJson(json);

  /// Converts this [StacSliverPadding] instance to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacSliverPaddingToJson(this);
}
