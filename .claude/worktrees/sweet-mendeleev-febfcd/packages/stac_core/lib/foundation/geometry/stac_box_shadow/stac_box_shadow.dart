import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/colors/stac_color/stac_colors.dart';
import 'package:stac_core/foundation/effects/stac_blur_style.dart';
import 'package:stac_core/foundation/geometry/stac_offset/stac_offset.dart';

part 'stac_box_shadow.g.dart';

/// A Stac representation of box shadows for visual depth effects.
///
/// This class defines shadow properties that can be applied to containers
/// and other UI elements to create depth and visual hierarchy. It supports
/// color, blur radius, offset, spread radius, and blur style customization.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacBoxShadow(
///   color: StacColors.black,
///   blurRadius: 10.0,
///   offset: StacOffset(dx: 2.0, dy: 4.0),
///   spreadRadius: 1.0,
///   blurStyle: StacBlurStyle.normal,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "color": "#000000",
///   "blurRadius": 10.0,
///   "offset": {"dx": 2.0, "dy": 4.0},
///   "spreadRadius": 1.0,
///   "blurStyle": "normal"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacBoxShadow implements StacElement {
  /// Creates a box shadow with optional styling properties.
  const StacBoxShadow({
    this.color,
    this.blurRadius,
    this.offset,
    this.spreadRadius,
    this.blurStyle,
  });

  /// The color of the shadow.
  final StacColor? color;

  /// The blur radius of the shadow in logical pixels.
  ///
  /// A larger value creates a more diffused shadow effect.
  @DoubleConverter()
  final double? blurRadius;

  /// The offset position of the shadow relative to the element.
  final StacOffset? offset;

  /// The spread radius of the shadow in logical pixels.
  ///
  /// Positive values cause the shadow to expand, negative values cause it to contract.
  @DoubleConverter()
  final double? spreadRadius;

  /// The style of blur to apply to the shadow.
  final StacBlurStyle? blurStyle;

  /// Creates a [StacBoxShadow] from a JSON map.
  factory StacBoxShadow.fromJson(Map<String, dynamic> json) =>
      _$StacBoxShadowFromJson(json);

  /// Converts this [StacBoxShadow] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacBoxShadowToJson(this);
}
