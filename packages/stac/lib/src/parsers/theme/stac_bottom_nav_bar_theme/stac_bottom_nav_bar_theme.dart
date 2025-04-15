import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/theme/stac_icon_theme_data/stac_icon_theme_data.dart';
import 'package:stac/src/parsers/widgets/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_bottom_nav_bar_theme.freezed.dart';
part 'stac_bottom_nav_bar_theme.g.dart';

@freezed
abstract class StacBottomNavBarThemeData with _$StacBottomNavBarThemeData {
  const factory StacBottomNavBarThemeData({
    String? backgroundColor,
    double? elevation,
    StacIconThemeData? selectedIconTheme,
    StacIconThemeData? unselectedIconTheme,
    String? selectedItemColor,
    String? unselectedItemColor,
    StacTextStyle? selectedLabelStyle,
    StacTextStyle? unselectedLabelStyle,
    bool? showSelectedLabels,
    bool? showUnselectedLabels,
    BottomNavigationBarType? type,
    bool? enableFeedback,
    BottomNavigationBarLandscapeLayout? landscapeLayout,
  }) = _StacBottomNavBarThemeData;

  factory StacBottomNavBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacBottomNavBarThemeDataFromJson(json);
}

extension StacBottomNavBarThemeDataParser on StacBottomNavBarThemeData {
  BottomNavigationBarThemeData? parse(BuildContext context) {
    return BottomNavigationBarThemeData(
      backgroundColor: backgroundColor.toColor(context),
      elevation: elevation,
      selectedIconTheme: selectedIconTheme?.parse(context),
      unselectedIconTheme: unselectedIconTheme?.parse(context),
      selectedItemColor: selectedItemColor.toColor(context),
      unselectedItemColor: unselectedItemColor.toColor(context),
      selectedLabelStyle: selectedLabelStyle?.parse(context),
      unselectedLabelStyle: unselectedLabelStyle?.parse(context),
      showSelectedLabels: showSelectedLabels,
      showUnselectedLabels: showUnselectedLabels,
      type: type,
      enableFeedback: enableFeedback,
      landscapeLayout: landscapeLayout,
    );
  }
}
