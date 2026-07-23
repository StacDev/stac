import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/foundation/borders/stac_border_radius/stac_border_radius.dart';
import 'package:stac_core/foundation/borders/stac_border_side/stac_border_side.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';

part 'stac_beveled_rectangle_border.g.dart';

/// A Stac model representing Flutter's [BeveledRectangleBorder].
///
/// A rectangular border with beveled corners, typically used with
/// [ShapeDecoration] to draw a box with a beveled rectangle shape.
///
/// ```dart
/// StacBeveledRectangleBorder(
///   side: StacBorderSide(width: 1.0, color: StacColors.grey),
/// )
/// ```
///
/// ```json
/// {
///   "type": "beveledRectangleBorder",
///   "side": {"width": 1.0, "color": "#808080"}
/// }
/// ```
@JsonSerializable()
class StacBeveledRectangleBorder extends StacShapeBorder {
  /// Creates a [StacBeveledRectangleBorder] with the given properties.
  const StacBeveledRectangleBorder({super.side, this.borderRadius})
    : super(type: StacShapeBorderType.beveledRectangleBorder);

  /// The radius for each corner.
  final StacBorderRadius? borderRadius;

  /// Creates a [StacBeveledRectangleBorder] from JSON.
  factory StacBeveledRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$StacBeveledRectangleBorderFromJson(json);

  /// Converts this beveled rectangle border to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacBeveledRectangleBorderToJson(this);
}
