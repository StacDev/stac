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
/// Defines the theme for date pickers.
@JsonSerializable()
class StacDatePickerThemeData implements StacElement {
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

  final String? backgroundColor;
  final double? elevation;
  final String? shadowColor;
  final String? surfaceTintColor;
  final StacShapeBorder? shape;
  final String? headerBackgroundColor;
  final String? headerForegroundColor;
  final StacTextStyle? headerHeadlineStyle;
  final StacTextStyle? headerHelpStyle;
  final StacTextStyle? weekdayStyle;
  final StacTextStyle? dayStyle;
  final String? dayForegroundColor;
  final String? dayBackgroundColor;
  final String? dayOverlayColor;
  final StacShapeBorder? dayShape;
  final String? todayForegroundColor;
  final String? todayBackgroundColor;
  final StacBorderSide? todayBorder;
  final StacTextStyle? yearStyle;
  final String? yearForegroundColor;
  final String? yearBackgroundColor;
  final String? yearOverlayColor;
  final String? rangePickerBackgroundColor;
  final double? rangePickerElevation;
  final String? rangePickerShadowColor;
  final String? rangePickerSurfaceTintColor;
  final StacShapeBorder? rangePickerShape;
  final String? rangePickerHeaderBackgroundColor;
  final String? rangePickerHeaderForegroundColor;
  final StacTextStyle? rangePickerHeaderHeadlineStyle;
  final StacTextStyle? rangePickerHeaderHelpStyle;
  final String? rangeSelectionBackgroundColor;
  final String? rangeSelectionOverlayColor;
  final String? dividerColor;
  final StacInputDecorationTheme? inputDecorationTheme;
  final StacButtonStyle? cancelButtonStyle;
  final StacButtonStyle? confirmButtonStyle;

  factory StacDatePickerThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacDatePickerThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacDatePickerThemeDataToJson(this);
}

