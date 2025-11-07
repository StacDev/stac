import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_border_side/stac_border_side.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';
import 'package:stac_core/foundation/theme/stac_button_style/stac_button_style.dart';
import 'package:stac_core/foundation/theme/stac_input_decoration_theme/stac_input_decoration_theme.dart';

part 'stac_date_picker_theme_data.g.dart';

/// A Stac model representing Flutter's [DatePickerThemeData].
///
/// Defines the theme for date pickers, including colors, elevation, shapes,
/// text styles for headers, days, years, and range picker properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacDatePickerThemeData(
///   backgroundColor: '#FFFFFF',
///   elevation: 24.0,
///   headerBackgroundColor: '#2196F3',
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "backgroundColor": "#FFFFFF",
///   "elevation": 24.0,
///   "shadowColor": "#000000",
///   "headerBackgroundColor": "#2196F3",
///   "headerForegroundColor": "#FFFFFF"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacDatePickerThemeData implements StacElement {
  /// Creates a [StacDatePickerThemeData] with the given properties.
  const StacDatePickerThemeData({
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.headerBackgroundColor,
    this.headerForegroundColor,
    this.headerHeadlineStyle,
    this.headerHelpStyle,
    this.weekdayStyle,
    this.dayStyle,
    this.dayForegroundColor,
    this.dayBackgroundColor,
    this.dayOverlayColor,
    this.dayShape,
    this.todayForegroundColor,
    this.todayBackgroundColor,
    this.todayBorder,
    this.yearStyle,
    this.yearForegroundColor,
    this.yearBackgroundColor,
    this.yearOverlayColor,
    this.rangePickerBackgroundColor,
    this.rangePickerElevation,
    this.rangePickerShadowColor,
    this.rangePickerSurfaceTintColor,
    this.rangePickerShape,
    this.rangePickerHeaderBackgroundColor,
    this.rangePickerHeaderForegroundColor,
    this.rangePickerHeaderHeadlineStyle,
    this.rangePickerHeaderHelpStyle,
    this.rangeSelectionBackgroundColor,
    this.rangeSelectionOverlayColor,
    this.dividerColor,
    this.inputDecorationTheme,
    this.cancelButtonStyle,
    this.confirmButtonStyle,
  });

  /// The background color of the date picker.
  final String? backgroundColor;

  /// The z-coordinate at which to place this date picker relative to its parent.
  final double? elevation;

  /// The color of the shadow below the date picker.
  final String? shadowColor;

  /// The color used to tint the surface of this date picker.
  final String? surfaceTintColor;

  /// The shape of the date picker's border.
  final StacShapeBorder? shape;

  /// The background color of the date picker header.
  final String? headerBackgroundColor;

  /// The foreground color of the date picker header.
  final String? headerForegroundColor;

  /// The text style for the date picker header headline.
  final StacTextStyle? headerHeadlineStyle;

  /// The text style for the date picker header help text.
  final StacTextStyle? headerHelpStyle;

  /// The text style for weekday labels.
  final StacTextStyle? weekdayStyle;

  /// The text style for day labels.
  final StacTextStyle? dayStyle;

  /// The foreground color for day cells.
  final String? dayForegroundColor;

  /// The background color for day cells.
  final String? dayBackgroundColor;

  /// The overlay color for day cells.
  final String? dayOverlayColor;

  /// The shape of day cell borders.
  final StacShapeBorder? dayShape;

  /// The foreground color for today's date.
  final String? todayForegroundColor;

  /// The background color for today's date.
  final String? todayBackgroundColor;

  /// The border for today's date.
  final StacBorderSide? todayBorder;

  /// The text style for year labels.
  final StacTextStyle? yearStyle;

  /// The foreground color for year cells.
  final String? yearForegroundColor;

  /// The background color for year cells.
  final String? yearBackgroundColor;

  /// The overlay color for year cells.
  final String? yearOverlayColor;

  /// The background color of the range picker.
  final String? rangePickerBackgroundColor;

  /// The z-coordinate at which to place the range picker.
  final double? rangePickerElevation;

  /// The color of the shadow below the range picker.
  final String? rangePickerShadowColor;

  /// The color used to tint the surface of the range picker.
  final String? rangePickerSurfaceTintColor;

  /// The shape of the range picker's border.
  final StacShapeBorder? rangePickerShape;

  /// The background color of the range picker header.
  final String? rangePickerHeaderBackgroundColor;

  /// The foreground color of the range picker header.
  final String? rangePickerHeaderForegroundColor;

  /// The text style for the range picker header headline.
  final StacTextStyle? rangePickerHeaderHeadlineStyle;

  /// The text style for the range picker header help text.
  final StacTextStyle? rangePickerHeaderHelpStyle;

  /// The background color for range selection.
  final String? rangeSelectionBackgroundColor;

  /// The overlay color for range selection.
  final String? rangeSelectionOverlayColor;

  /// The color of dividers in the date picker.
  final String? dividerColor;

  /// The input decoration theme for date picker inputs.
  final StacInputDecorationTheme? inputDecorationTheme;

  /// The button style for the cancel button.
  final StacButtonStyle? cancelButtonStyle;

  /// The button style for the confirm button.
  final StacButtonStyle? confirmButtonStyle;

  /// Creates a [StacDatePickerThemeData] from JSON.
  factory StacDatePickerThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacDatePickerThemeDataFromJson(json);

  /// Converts this date picker theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacDatePickerThemeDataToJson(this);
}
