import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/theme/stac_button_style/stac_button_style.dart';
import 'package:stac/src/parsers/theme/stac_input_decoration_theme/stac_input_decoration_theme.dart';
import 'package:stac/src/parsers/widgets/stac_border_side/stac_border_side.dart';
import 'package:stac/src/parsers/widgets/stac_shape_border/stac_shape_border.dart';
import 'package:stac/src/parsers/widgets/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_date_picker_theme_data.freezed.dart';
part 'stac_date_picker_theme_data.g.dart';

@freezed
abstract class StacDatePickerThemeData with _$StacDatePickerThemeData {
  const factory StacDatePickerThemeData({
    String? backgroundColor,
    double? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    StacShapeBorder? shape,
    String? headerBackgroundColor,
    String? headerForegroundColor,
    StacTextStyle? headerHeadlineStyle,
    StacTextStyle? headerHelpStyle,
    StacTextStyle? weekdayStyle,
    StacTextStyle? dayStyle,
    String? dayForegroundColor,
    String? dayBackgroundColor,
    String? dayOverlayColor,
    StacShapeBorder? dayShape,
    String? todayForegroundColor,
    String? todayBackgroundColor,
    StacBorderSide? todayBorder,
    StacTextStyle? yearStyle,
    String? yearForegroundColor,
    String? yearBackgroundColor,
    String? yearOverlayColor,
    String? rangePickerBackgroundColor,
    double? rangePickerElevation,
    String? rangePickerShadowColor,
    String? rangePickerSurfaceTintColor,
    StacShapeBorder? rangePickerShape,
    String? rangePickerHeaderBackgroundColor,
    String? rangePickerHeaderForegroundColor,
    StacTextStyle? rangePickerHeaderHeadlineStyle,
    StacTextStyle? rangePickerHeaderHelpStyle,
    String? rangeSelectionBackgroundColor,
    String? rangeSelectionOverlayColor,
    String? dividerColor,
    StacInputDecorationTheme? inputDecorationTheme,
    StacButtonStyle? cancelButtonStyle,
    StacButtonStyle? confirmButtonStyle,
  }) = _StacDatePickerThemeData;

  factory StacDatePickerThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacDatePickerThemeDataFromJson(json);
}

extension StacDatePickerThemeDataParser on StacDatePickerThemeData {
  DatePickerThemeData parse(BuildContext context) {
    return DatePickerThemeData(
      backgroundColor: backgroundColor?.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      shape: shape?.parse(context),
      headerBackgroundColor: headerBackgroundColor?.toColor(context),
      headerForegroundColor: headerForegroundColor?.toColor(context),
      headerHeadlineStyle: headerHeadlineStyle?.parse(context),
      headerHelpStyle: headerHelpStyle?.parse(context),
      weekdayStyle: weekdayStyle?.parse(context),
      dayStyle: dayStyle?.parse(context),
      dayForegroundColor:
          WidgetStatePropertyAll(dayForegroundColor?.toColor(context)),
      dayBackgroundColor:
          WidgetStatePropertyAll(dayBackgroundColor?.toColor(context)),
      dayOverlayColor:
          WidgetStatePropertyAll(dayOverlayColor?.toColor(context)),
      dayShape:
          WidgetStatePropertyAll(dayShape?.parse(context) as OutlinedBorder),
      todayForegroundColor:
          WidgetStatePropertyAll(todayForegroundColor?.toColor(context)),
      todayBackgroundColor:
          WidgetStatePropertyAll(todayBackgroundColor?.toColor(context)),
      todayBorder: todayBorder?.parse(context),
      yearStyle: yearStyle?.parse(context),
      yearForegroundColor:
          WidgetStatePropertyAll(yearForegroundColor?.toColor(context)),
      yearBackgroundColor:
          WidgetStatePropertyAll(yearBackgroundColor?.toColor(context)),
      yearOverlayColor:
          WidgetStatePropertyAll(yearOverlayColor?.toColor(context)),
      rangePickerBackgroundColor: rangePickerBackgroundColor?.toColor(context),
      rangePickerElevation: rangePickerElevation,
      rangePickerShadowColor: rangePickerShadowColor?.toColor(context),
      rangePickerSurfaceTintColor:
          rangePickerSurfaceTintColor?.toColor(context),
      rangePickerShape: rangePickerShape?.parse(context),
      rangePickerHeaderBackgroundColor:
          rangePickerHeaderBackgroundColor?.toColor(context),
      rangePickerHeaderForegroundColor:
          rangePickerHeaderForegroundColor?.toColor(context),
      rangePickerHeaderHeadlineStyle:
          rangePickerHeaderHeadlineStyle?.parse(context),
      rangePickerHeaderHelpStyle: rangePickerHeaderHelpStyle?.parse(context),
      rangeSelectionBackgroundColor:
          rangeSelectionBackgroundColor?.toColor(context),
      rangeSelectionOverlayColor:
          WidgetStatePropertyAll(rangeSelectionOverlayColor?.toColor(context)),
      dividerColor: dividerColor?.toColor(context),
      inputDecorationTheme: inputDecorationTheme?.parse(context),
      cancelButtonStyle: cancelButtonStyle?.parseTextButton(context),
      confirmButtonStyle: confirmButtonStyle?.parseTextButton(context),
    );
  }
}
