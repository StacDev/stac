import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/foundation/borders/stac_border_radius/stac_border_radius.dart';
import 'package:stac_core/foundation/borders/stac_border_side/stac_border_side.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';

part 'stac_rounded_rectangle_border.g.dart';

/// A Stac model representing Flutter's [RoundedRectangleBorder].
///
/// A rectangular border with rounded corners, typically used with
/// [ShapeDecoration] to draw a box with a rounded rectangle.
///
/// ```dart
/// StacRoundedRectangleBorder(
///   borderRadius: StacBorderRadius.all(8.0),
///   side: StacBorderSide(width: 1.0, color: StacColors.grey),
/// )
/// ```
///
/// ```json
/// {
///   "type": "roundedRectangle",
///   "borderRadius": {"all": 8.0},
///   "side": {"width": 1.0, "color": "#808080"}
/// }
/// ```
@JsonSerializable()
class StacRoundedRectangleBorder extends StacShapeBorder {
  /// Creates a [StacRoundedRectangleBorder] with the given properties.
  const StacRoundedRectangleBorder({super.side, this.borderRadius})
    : super(type: StacShapeBorderType.roundedRectangleBorder);

  /// The border radius for the rounded corners.
  final StacBorderRadius? borderRadius;

  /// Creates a [StacRoundedRectangleBorder] from JSON.
  factory StacRoundedRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$StacRoundedRectangleBorderFromJson(json);

  /// Converts this rounded rectangle border to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacRoundedRectangleBorderToJson(this);
}
