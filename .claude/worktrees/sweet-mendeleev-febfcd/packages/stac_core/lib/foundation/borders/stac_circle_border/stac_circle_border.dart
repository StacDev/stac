import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/foundation/borders/stac_border_side/stac_border_side.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';

part 'stac_circle_border.g.dart';

/// A Stac model representing Flutter's [CircleBorder].
///
/// A circular border, typically used with [ShapeDecoration] to draw
/// a box with a circular shape.
///
/// ```dart
/// StacCircleBorder(
///   side: StacBorderSide(width: 1.0, color: StacColors.grey),
/// )
/// ```
///
/// ```json
/// {
///   "type": "circleBorder",
///   "side": {"width": 1.0, "color": "#808080"}
/// }
/// ```
@JsonSerializable()
class StacCircleBorder extends StacShapeBorder {
  /// Creates a [StacCircleBorder] with the given properties.
  const StacCircleBorder({super.side, this.eccentricity})
    : super(type: StacShapeBorderType.circleBorder);

  /// The eccentricity of the circle.
  final double? eccentricity;

  /// Creates a [StacCircleBorder] from JSON.
  factory StacCircleBorder.fromJson(Map<String, dynamic> json) =>
      _$StacCircleBorderFromJson(json);

  /// Converts this circle border to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacCircleBorderToJson(this);
}
