import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/borders/stac_border_radius/stac_border_radius.dart';
import 'package:stac_core/foundation/effects/stac_gradient/stac_gradient.dart';

part 'stac_input_border.g.dart';

/// Type of input border to render.
///
/// Mirrors Flutter's `InputBorder` variants commonly used by text fields.
///
/// - [none]: Renders no border.
/// - [underlineInputBorder]: Renders a Material underline-style border.
/// - [outlineInputBorder]: Renders a rounded rectangle outline border.
enum StacInputBorderType {
  /// Renders no border.
  none,

  /// Renders a Material underline-style border.
  underlineInputBorder,

  /// Renders a rounded rectangle outline border.
  outlineInputBorder,
}

/// A Stac model for Flutter input borders.
///
/// Represents configurable input borders (e.g., outline or underline) that can
/// be referenced from higher-level themes such as `StacInputDecorationTheme`.
@JsonSerializable()
class StacInputBorder extends StacElement {
  /// Creates a [StacInputBorder] with the given properties.
  const StacInputBorder({
    this.type = StacInputBorderType.underlineInputBorder,
    this.borderRadius,
    @DoubleConverter() this.gapPadding,
    @DoubleConverter() this.width,
    this.color,
    this.gradient,
  });

  /// The kind of border to draw.
  final StacInputBorderType type;

  /// Corner radii for outline or underline borders.
  final StacBorderRadius? borderRadius;

  /// Padding around the notch in an `OutlineInputBorder`.
  /// Only applicable when [type] is [StacInputBorderType.outlineInputBorder].
  @DoubleConverter()
  final double? gapPadding;

  /// Stroke width for the border line.
  @DoubleConverter()
  final double? width;

  /// Border color. Accepts a hex string or named/theme color.
  final String? color;

  /// Optional gradient used by custom outline implementations.
  final StacGradient? gradient;

  /// Creates a [StacInputBorder] from a JSON map.
  factory StacInputBorder.fromJson(Map<String, dynamic> json) =>
      _$StacInputBorderFromJson(json);

  /// Converts this [StacInputBorder] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacInputBorderToJson(this);
}
