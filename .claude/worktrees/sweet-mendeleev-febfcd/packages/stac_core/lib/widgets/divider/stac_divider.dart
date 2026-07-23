import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_divider.g.dart';

/// A Stac model representing Flutter's [Divider] widget.
///
/// A thin horizontal line, with padding on either side.
///
/// In the material library, this represents a divider.
///
/// ```dart
/// StacDivider(
///   thickness: 2.0,
///   color: StacColor('#FF0000'), // Red color
///   indent: 16.0,
///   endIndent: 16.0,
/// )
/// ```
///
/// ```json
/// {
///   "widget": "Divider",
///   "thickness": 2.0,
///   "color": "#FF0000",
///   "indent": 16.0,
///   "endIndent": 16.0
/// }
/// ```
///
/// See also:
///  * Flutter's [Divider documentation](https://api.flutter.dev/flutter/material/Divider-class.html)
@JsonSerializable()
class StacDivider extends StacWidget {
  /// Creates a [StacDivider].
  ///
  /// All properties are optional. The parser will provide appropriate defaults
  /// from Flutter's [Divider] if they are not specified.
  const StacDivider({
    this.height,
    this.thickness,
    this.indent,
    this.endIndent,
    this.color,
  });

  /// The divider's height extent.
  ///
  /// The spaceClaimed parameter is the space occupied by the widget.
  @DoubleConverter()
  final double? height;

  /// The thickness of the line drawn within the divider.
  ///
  /// A divider with a [thickness] of 0.0 is always drawn as a line with a
  /// height of exactly one device pixel.
  @DoubleConverter()
  final double? thickness;

  /// The amount of empty space to the leading edge of the divider.
  @DoubleConverter()
  final double? indent;

  /// The amount of empty space to the trailing edge of the divider.
  @DoubleConverter()
  final double? endIndent;

  /// The color to use when painting the line.
  final StacColor? color;

  @override
  String get type => WidgetType.divider.name;

  /// Creates a [StacDivider] from a JSON map.
  factory StacDivider.fromJson(Map<String, dynamic> json) =>
      _$StacDividerFromJson(json);

  /// Converts this [StacDivider] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacDividerToJson(this);
}
