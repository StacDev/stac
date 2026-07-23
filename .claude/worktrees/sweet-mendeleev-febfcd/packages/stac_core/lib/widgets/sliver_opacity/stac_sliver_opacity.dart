import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_sliver_opacity.g.dart';

/// A Stac model representing Flutter's [SliverOpacity] widget.
///
/// Wraps a sliver and applies an opacity value to it.
/// Useful for fade effects inside a [CustomScrollView].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacSliverOpacity(
///   opacity: 0.5,
///   sliver: StacSliverToBoxAdapter(
///     child: StacText(data: 'Faded content'),
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "sliverOpacity",
///   "opacity": 0.5,
///   "sliver": {
///     "type": "sliverToBoxAdapter",
///     "child": {
///       "type": "text",
///       "data": "Faded content"
///     }
///   }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [SliverOpacity documentation](https://api.flutter.dev/flutter/widgets/SliverOpacity-class.html)
@JsonSerializable()
class StacSliverOpacity extends StacWidget {
  /// Creates a [StacSliverOpacity].
  const StacSliverOpacity({
    required this.opacity,
    this.alwaysIncludeSemantics,
    this.sliver,
  });

  /// Opacity of the sliver.
  ///
  /// Must be between 0.0 and 1.0.
  @DoubleConverter()
  final double opacity;

  /// Whether the sliver should always be included in the semantics tree.
  final bool? alwaysIncludeSemantics;

  /// The sliver to which the opacity is applied.
  final StacWidget? sliver;

  @override
  String get type => WidgetType.sliverOpacity.name;

  /// Creates a [StacSliverOpacity] from a JSON map.
  factory StacSliverOpacity.fromJson(Map<String, dynamic> json) =>
      _$StacSliverOpacityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacSliverOpacityToJson(this);
}
