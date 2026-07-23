import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_vertical_divider.g.dart';

/// A Stac model representing Flutter's [VerticalDivider] widget.
///
/// A thin vertical line, with padding on either side.
///
/// In the material design language, this represents a divider. Vertical
/// dividers are typically used to divide parts of a layout.
///
/// The box's width is controlled by the [width] property, and its height is
/// the height of the constraints imposed by its parent.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacVerticalDivider(
///   width: 20.0,
///   thickness: 2.0,
///   indent: 10.0,
///   endIndent: 10.0,
///   color: StacColor(value: 0xFF000000),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "verticalDivider",
///   "width": 20.0,
///   "thickness": 2.0,
///   "indent": 10.0,
///   "endIndent": 10.0,
///   "color": {"value": 4278190080}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacVerticalDivider extends StacWidget {
  /// Creates a [StacVerticalDivider].
  ///
  /// The [width], [thickness], [indent], [endIndent], and [color] arguments
  /// must not be null if they are not defaulted.
  const StacVerticalDivider({
    this.width,
    this.thickness,
    this.indent,
    this.endIndent,
    this.color,
  });

  /// The divider's width.
  ///
  /// The divider itself is always drawn as a vertical line that is centered
  /// within the width specified by this value.
  ///
  /// If this is null, then the [DividerThemeData.space] is used. If that is
  /// also null, then this defaults to 16.0.
  @DoubleConverter()
  final double? width;

  /// The thickness of the line drawn within the divider.
  ///
  /// A divider with a [thickness] of 0.0 is always drawn as a line with a
  /// height of exactly one device pixel.
  ///
  /// If this is null, then the [DividerThemeData.thickness] is used. If that is
  /// also null, then this defaults to 0.0.
  @DoubleConverter()
  final double? thickness;

  /// The amount of empty space to the leading edge of the divider.
  ///
  /// If this is null, then the [DividerThemeData.indent] is used. If that is
  /// also null, then this defaults to 0.0.
  @DoubleConverter()
  final double? indent;

  /// The amount of empty space to the trailing edge of the divider.
  ///
  /// If this is null, then the [DividerThemeData.endIndent] is used. If that is
  /// also null, then this defaults to 0.0.
  @DoubleConverter()
  final double? endIndent;

  /// The color to use when painting the line.
  ///
  /// If this is null, then the [DividerThemeData.color] is used. If that is
  /// also null, then [ThemeData.dividerColor] is used.
  final StacColor? color;

  /// The type of this Stac widget.
  ///
  /// This is used to identify the widget type in JSON serialization.
  @override
  String get type => WidgetType.verticalDivider.name;

  /// Creates a [StacVerticalDivider] instance from a JSON map.
  ///
  /// The [json] argument must be a valid JSON representation of a
  /// [StacVerticalDivider].
  factory StacVerticalDivider.fromJson(Map<String, dynamic> json) =>
      _$StacVerticalDividerFromJson(json);

  /// Converts this [StacVerticalDivider] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacVerticalDividerToJson(this);
}
