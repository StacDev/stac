import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/theme/stac_app_bar_theme/stac_app_bar_theme.dart';
import 'package:stac/src/parsers/theme/stac_badge_theme_data/stac_badge_theme_data.dart';
import 'package:stac/src/parsers/theme/stac_bottom_app_bar_theme/stac_bottom_app_bar_theme.dart';
import 'package:stac/src/parsers/theme/stac_bottom_nav_bar_theme/stac_bottom_nav_bar_theme.dart';
import 'package:stac/src/parsers/theme/stac_bottom_sheet_theme/stac_bottom_sheet_theme.dart';
import 'package:stac/src/parsers/theme/stac_button_style/stac_button_style.dart';
import 'package:stac/src/parsers/theme/stac_card_theme_data/stac_card_theme_data.dart';
import 'package:stac/src/parsers/theme/stac_dialog_theme/stac_dialog_theme.dart';
import 'package:stac/src/parsers/theme/stac_icon_theme_data/stac_icon_theme_data.dart';
import 'package:stac/src/parsers/theme/stac_material_color/stac_material_color.dart';
import 'package:stac/src/parsers/theme/stac_navigation_bar_theme_data/stac_navigation_bar_theme_data.dart';
import 'package:stac/src/parsers/theme/stac_scrollbar_theme_data/stac_scrollbar_theme_data.dart';
import 'package:stac/src/parsers/theme/stac_tab_bar_theme_data/stac_tab_bar_theme_data.dart';
import 'package:stac/src/parsers/theme/stac_text_theme/stac_text_theme.dart';
import 'package:stac/src/parsers/widgets/stac_color_scheme/stac_color_scheme.dart';
import 'package:stac/src/parsers/widgets/stac_floating_action_button_theme_data/stac_floating_action_button_theme_data.dart';
import 'package:stac/src/parsers/widgets/stac_input_decoration_theme/stac_input_decoration_theme.dart';
import 'package:stac/src/parsers/widgets/stac_list_tile_theme_data/stac_list_tile_theme_data.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_theme.freezed.dart';
part 'stac_theme.g.dart';

@freezed
abstract class StacTheme with _$StacTheme {
  const factory StacTheme({
    // GENERAL CONFIGURATION
    bool? applyElevationOverlayColor,
    StacInputDecorationTheme? inputDecorationTheme,
    MaterialTapTargetSize? materialTapTargetSize,
    TargetPlatform? platform,
    StacScrollbarThemeData? scrollbarTheme,
    bool? useMaterial3,
    // COLOR
    StacColorScheme? colorScheme,
    Brightness? brightness,
    String? colorSchemeSeed,
    // [colorScheme] is the preferred way to configure colors. The [Color] properties
    // listed below (as well as primarySwatch) will gradually be phased out, see
    // https://github.com/flutter/flutter/issues/91772.
    String? canvasColor,
    String? cardColor,
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
    // TYPOGRAPHY & ICONOGRAPHY
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    StacIconThemeData? iconTheme,
    StacIconThemeData? primaryIconTheme,
    StacTextTheme? primaryTextTheme,
    StacTextTheme? textTheme,
    // COMPONENT THEMES
    StacAppBarTheme? appBarTheme,
    StacBadgeThemeData? badgeTheme,
    // MaterialBannerThemeData? bannerTheme, // todo
    StacBottomAppBarTheme? bottomAppBarTheme,
    StacBottomNavBarThemeData? bottomNavigationBarTheme,
    StacBottomSheetThemeData? bottomSheetTheme,
    // ButtonThemeData? buttonTheme, // todo
    StacCardThemeData? cardTheme,
    // CheckboxThemeData? checkboxTheme, // todo
    // ChipThemeData? chipTheme,
    // DataTableThemeData? dataTableTheme,
    // DatePickerThemeData? datePickerTheme, // todo
    StacDialogTheme? dialogTheme,
    // DividerThemeData? dividerTheme,
    // DrawerThemeData? drawerTheme,
    // DropdownMenuThemeData? dropdownMenuTheme,
    StacButtonStyle? elevatedButtonTheme,
    // ExpansionTileThemeData? expansionTileTheme,
    // FilledButtonThemeData? filledButtonTheme,
    StacFloatingActionButtonThemeData? floatingActionButtonTheme,
    StacButtonStyle? iconButtonTheme,
    StacListTileThemeData? listTileTheme,
    // MenuBarThemeData? menuBarTheme,
    // MenuButtonThemeData? menuButtonTheme,
    // MenuThemeData? menuTheme,
    StacNavigationBarThemeData? navigationBarTheme,
    // NavigationDrawerThemeData? navigationDrawerTheme,
    // NavigationRailThemeData? navigationRailTheme,
    StacButtonStyle? outlinedButtonTheme,
    // PopupMenuThemeData? popupMenuTheme,
    // ProgressIndicatorThemeData? progressIndicatorTheme,
    // RadioThemeData? radioTheme,
    // SearchBarThemeData? searchBarTheme,
    // SearchViewThemeData? searchViewTheme,
    // SegmentedButtonThemeData? segmentedButtonTheme,
    // SliderThemeData? sliderTheme,
    // SnackBarThemeData? snackBarTheme,
    // SwitchThemeData? switchTheme,
    StacTabBarThemeData? tabBarTheme,
    StacButtonStyle? textButtonTheme,
    // TextSelectionThemeData? textSelectionTheme,
    // TimePickerThemeData? timePickerTheme,
    // ToggleButtonsThemeData? toggleButtonsTheme,
    // TooltipThemeData? tooltipTheme,
  }) = _StacTheme;

  factory StacTheme.fromJson(Map<String, dynamic> json) =>
      _$StacThemeFromJson(json);
}

extension StacThemeParser on StacTheme {
  ThemeData? parse(BuildContext context) {
    return ThemeData(
      // GENERAL CONFIGURATION
      applyElevationOverlayColor: applyElevationOverlayColor,
      inputDecorationTheme: inputDecorationTheme?.parse(context),
      materialTapTargetSize: materialTapTargetSize,
      scrollbarTheme: scrollbarTheme?.parse(context),
      useMaterial3: useMaterial3,
      // COLOR
      colorScheme: colorScheme?.parse(context),
      brightness: brightness,
      colorSchemeSeed: colorSchemeSeed.toColor(context),
      canvasColor: canvasColor?.toColor(context),
      cardColor: cardColor?.toColor(context),
      disabledColor: disabledColor?.toColor(context),
      dividerColor: dividerColor?.toColor(context),
      focusColor: focusColor?.toColor(context),
      highlightColor: highlightColor?.toColor(context),
      hintColor: hintColor?.toColor(context),
      hoverColor: hoverColor?.toColor(context),
      indicatorColor: indicatorColor?.toColor(context),
      primaryColor: primaryColor?.toColor(context),
      primaryColorDark: primaryColorDark?.toColor(context),
      primaryColorLight: primaryColorLight?.toColor(context),
      primarySwatch: primarySwatch?.parse(context),
      scaffoldBackgroundColor: scaffoldBackgroundColor?.toColor(context),
      secondaryHeaderColor: secondaryHeaderColor?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      splashColor: splashColor?.toColor(context),
      unselectedWidgetColor: unselectedWidgetColor?.toColor(context),
      // TYPOGRAPHY & ICONOGRAPHY
      fontFamily: fontFamily,
      fontFamilyFallback: fontFamilyFallback,
      package: package,
      iconTheme: iconTheme?.parse(context),
      primaryIconTheme: primaryIconTheme?.parse(context),
      primaryTextTheme: primaryTextTheme?.parse(context),
      textTheme: textTheme?.parse(context),
      // COMPONENT THEMES
      appBarTheme: appBarTheme?.parse(context),
      badgeTheme: badgeTheme?.parse(context),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: elevatedButtonTheme?.parseElevated(context)),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: outlinedButtonTheme?.parseOutlined(context)),
      iconButtonTheme:
          IconButtonThemeData(style: iconButtonTheme?.parseIcon(context)),
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
