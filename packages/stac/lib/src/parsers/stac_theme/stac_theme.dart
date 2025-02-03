import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_app_bar_theme/stac_app_bar_theme.dart';
import 'package:stac/src/parsers/stac_bottom_app_bar_theme/stac_bottom_app_bar_theme.dart';
import 'package:stac/src/parsers/stac_bottom_nav_bar_theme/stac_bottom_nav_bar_theme.dart';
import 'package:stac/src/parsers/stac_bottom_sheet_theme/stac_bottom_sheet_theme.dart';
import 'package:stac/src/parsers/stac_button_style/stac_button_style.dart';
import 'package:stac/src/parsers/stac_card_theme_data/stac_card_theme_data.dart';
import 'package:stac/src/parsers/stac_color_scheme/stac_color_scheme.dart';
import 'package:stac/src/parsers/stac_dialog_theme/stac_dialog_theme.dart';
import 'package:stac/src/parsers/stac_floating_action_button_theme_data/stac_floating_action_button_theme_data.dart';
import 'package:stac/src/parsers/stac_icon_theme_data/stac_icon_theme_data.dart';
import 'package:stac/src/parsers/stac_input_decoration_theme/stac_input_decoration_theme.dart';
import 'package:stac/src/parsers/stac_list_tile_theme_data/stac_list_tile_theme_data.dart';
import 'package:stac/src/parsers/stac_material_color/stac_material_color.dart';
import 'package:stac/src/parsers/stac_navigation_bar_theme_data/stac_navigation_bar_theme_data.dart';
import 'package:stac/src/parsers/stac_tab_bar_theme_data/stac_tab_bar_theme_data.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_theme.freezed.dart';
part 'stac_theme.g.dart';

@freezed
class StacTheme with _$StacTheme {
  const factory StacTheme({
    bool? applyElevationOverlayColor,
    StacInputDecorationTheme? inputDecorationTheme,
    bool? useMaterial3,
    Brightness? brightness,
    String? canvasColor,
    String? cardColor,
    StacColorScheme? colorScheme,
    String? colorSchemeSeed,
    String? dialogBackgroundColor,
    String? disabledColor,
    String? dividerColor,
    String? focusColor,
    String? highlightColor,
    String? hintColor,
    String? hoverColor,
    String? indicatorColor,
    String? primaryColor,
    String? primaryColorDark,
    String? primaryColorLight,
    StacMaterialColor? primarySwatch,
    String? scaffoldBackgroundColor,
    String? secondaryHeaderColor,
    String? shadowColor,
    String? splashColor,
    String? unselectedWidgetColor,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    StacAppBarTheme? appBarTheme,
    StacButtonStyle? elevatedButtonTheme,
    StacButtonStyle? outlinedButtonTheme,
    StacButtonStyle? iconButtonTheme,
    StacIconThemeData? iconTheme,
    StacIconThemeData? primaryIconTheme,
    StacDialogTheme? dialogTheme,
    StacFloatingActionButtonThemeData? floatingActionButtonTheme,
    StacButtonStyle? textButtonTheme,
    StacBottomAppBarTheme? bottomAppBarTheme,
    StacBottomNavBarThemeData? bottomNavigationBarTheme,
    StacBottomSheetThemeData? bottomSheetTheme,
    StacCardThemeData? cardTheme,
    StacListTileThemeData? listTileTheme,
    StacNavigationBarThemeData? navigationBarTheme,
    StacTabBarThemeData? tabBarTheme,
  }) = _StacTheme;

  factory StacTheme.fromJson(Map<String, dynamic> json) =>
      _$StacThemeFromJson(json);
}

extension StacThemeParser on StacTheme {
  ThemeData? parse(BuildContext context) {
    return ThemeData(
      applyElevationOverlayColor: applyElevationOverlayColor,
      inputDecorationTheme: inputDecorationTheme.parse(context),
      useMaterial3: useMaterial3,
      brightness: brightness,
      canvasColor: canvasColor?.toColor(context),
      colorScheme: colorScheme?.parse(context),
      colorSchemeSeed: colorSchemeSeed.toColor(context),
      dialogBackgroundColor: dialogBackgroundColor.toColor(context),
      disabledColor: disabledColor.toColor(context),
      dividerColor: dividerColor.toColor(context),
      focusColor: focusColor.toColor(context),
      highlightColor: highlightColor.toColor(context),
      hintColor: hintColor.toColor(context),
      hoverColor: hoverColor.toColor(context),
      indicatorColor: indicatorColor.toColor(context),
      primaryColor: primaryColor.toColor(context),
      primaryColorDark: primaryColorDark.toColor(context),
      primaryColorLight: primaryColorLight.toColor(context),
      scaffoldBackgroundColor: scaffoldBackgroundColor.toColor(context),
      secondaryHeaderColor: secondaryHeaderColor.toColor(context),
      shadowColor: shadowColor.toColor(context),
      splashColor: splashColor.toColor(context),
      unselectedWidgetColor: unselectedWidgetColor.toColor(context),
      fontFamily: fontFamily,
      fontFamilyFallback: fontFamilyFallback,
      primarySwatch: primarySwatch?.parse(context),
      appBarTheme: appBarTheme?.parse(context),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: elevatedButtonTheme?.parseElevated(context)),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: outlinedButtonTheme?.parseOutlined(context)),
      iconButtonTheme:
          IconButtonThemeData(style: iconButtonTheme?.parseIcon(context)),
      iconTheme: iconTheme?.parse(context),
      primaryIconTheme: primaryIconTheme?.parse(context),
      dialogTheme: dialogTheme?.parse(context),
      floatingActionButtonTheme: floatingActionButtonTheme?.parse(context),
      textButtonTheme:
          TextButtonThemeData(style: textButtonTheme?.parseText(context)),
      bottomAppBarTheme: bottomAppBarTheme?.parse(context),
      bottomNavigationBarTheme: bottomNavigationBarTheme?.parse(context),
      bottomSheetTheme: bottomSheetTheme?.parse(context),
      cardTheme: cardTheme?.parse(context),
      listTileTheme: listTileTheme?.parse(context),
      navigationBarTheme: navigationBarTheme?.parse(context),
      tabBarTheme: tabBarTheme?.parse(context),
    );
  }
}
