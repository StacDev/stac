import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_border/stac_border.dart';
import 'package:stac/src/parsers/stac_icon_theme_data/stac_icon_theme_data.dart';
import 'package:stac/src/parsers/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_navigation_bar_theme_data.freezed.dart';
part 'stac_navigation_bar_theme_data.g.dart';

@freezed
class StacNavigationBarThemeData with _$StacNavigationBarThemeData {
  const factory StacNavigationBarThemeData({
    double? height,
    String? backgroundColor,
    double? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    String? indicatorColor,
    StacBorder? indicatorShape,
    StacTextStyle? labelTextStyle,
    StacIconThemeData? iconTheme,
    NavigationDestinationLabelBehavior? labelBehavior,
  }) = _StacNavigationBarThemeData;

  factory StacNavigationBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacNavigationBarThemeDataFromJson(json);
}

extension StacNavigationBarThemeDataParser on StacNavigationBarThemeData {
  NavigationBarThemeData? parse(BuildContext context) {
    return NavigationBarThemeData(
      height: height,
      backgroundColor: backgroundColor.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor.toColor(context),
      surfaceTintColor: surfaceTintColor.toColor(context),
      indicatorColor: indicatorColor.toColor(context),
      indicatorShape: indicatorShape?.parse(context),
      labelTextStyle: WidgetStateProperty.all(labelTextStyle?.parse(context)),
      iconTheme: WidgetStateProperty.all(iconTheme?.parse(context)),
      labelBehavior: labelBehavior,
    );
  }
}
