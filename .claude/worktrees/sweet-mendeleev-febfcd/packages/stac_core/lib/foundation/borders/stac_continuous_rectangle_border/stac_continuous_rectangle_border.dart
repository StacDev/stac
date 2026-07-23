import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/foundation/borders/stac_border_radius/stac_border_radius.dart';
import 'package:stac_core/foundation/borders/stac_border_side/stac_border_side.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';

part 'stac_continuous_rectangle_border.g.dart';

/// A Stac model representing Flutter's [ContinuousRectangleBorder].
///
/// A rectangular border with continuous rounded corners, typically used with
/// [ShapeDecoration] to draw a box with a continuous rectangle shape.
///
/// ```dart
/// StacContinuousRectangleBorder(
///   side: StacBorderSide(width: 1.0, color: StacColors.grey),
/// )
/// ```
///
/// ```json
/// {
///   "type": "continuousRectangleBorder",
///   "side": {"width": 1.0, "color": "#808080"}
/// }
/// ```
@JsonSerializable()
class StacContinuousRectangleBorder extends StacShapeBorder {
  /// Creates a [StacContinuousRectangleBorder] with the given properties.
  const StacContinuousRectangleBorder({super.side, this.borderRadius})
    : super(type: StacShapeBorderType.continuousRectangleBorder);

  /// The radius for each corner.
  final StacBorderRadius? borderRadius;

  /// Creates a [StacContinuousRectangleBorder] from JSON.
  factory StacContinuousRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$StacContinuousRectangleBorderFromJson(json);

  /// Converts this continuous rectangle border to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacContinuousRectangleBorderToJson(this);
}
