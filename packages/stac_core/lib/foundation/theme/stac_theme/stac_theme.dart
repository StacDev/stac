import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/theme/stac_app_bar_theme/stac_app_bar_theme.dart';
import 'package:stac_core/foundation/theme/stac_bottom_app_bar_theme/stac_bottom_app_bar_theme.dart';
import 'package:stac_core/foundation/theme/stac_button_style/stac_button_style.dart';
import 'package:stac_core/foundation/theme/stac_button_theme_data/stac_button_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_color_scheme/stac_color_scheme.dart';
import 'package:stac_core/foundation/theme/stac_divider_theme_data/stac_divider_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_icon_theme_data/stac_icon_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_input_decoration_theme/stac_input_decoration_theme.dart';
import 'package:stac_core/foundation/theme/stac_material_banner_theme_data/stac_material_banner_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_material_color/stac_material_color.dart';
import 'package:stac_core/foundation/theme/stac_scrollbar_theme_data/stac_scrollbar_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_text_theme/stac_text_theme.dart';

part 'stac_theme.g.dart';

/// A Stac model representing Flutter's [ThemeData].
///
/// Defines the complete theme for the application.
@JsonSerializable()
class StacTheme implements StacElement {
  const StacTheme({
    // GENERAL CONFIGURATION
    this.applyElevationOverlayColor,
    this.inputDecorationTheme,
    this.materialTapTargetSize,
    this.platform,
    this.scrollbarTheme,
    this.useMaterial3,
    // COLOR
    this.colorScheme,
    this.brightness,
    this.colorSchemeSeed,
    // [colorScheme] is the preferred way to configure colors. The [Color] properties
    // listed below (as well as primarySwatch) will gradually be phased out, see
    // https://github.com/flutter/flutter/issues/91772.
    this.canvasColor,
    this.cardColor,
    this.disabledColor,
    this.dividerColor,
    this.focusColor,
    this.highlightColor,
    this.hintColor,
    this.hoverColor,
    this.primaryColor,
    this.primaryColorDark,
    this.primaryColorLight,
    this.primarySwatch,
    this.scaffoldBackgroundColor,
    this.secondaryHeaderColor,
    this.shadowColor,
    this.splashColor,
    this.unselectedWidgetColor,
    // TYPOGRAPHY & ICONOGRAPHY
    this.fontFamily,
    this.fontFamilyFallback,
    this.package,
    this.iconTheme,
    this.primaryIconTheme,
    this.primaryTextTheme,
    this.textTheme,
    // COMPONENT THEMES
    this.appBarTheme,
    this.bannerTheme,
    this.bottomAppBarTheme,
    this.bottomNavigationBarTheme,
    this.bottomSheetTheme,
    this.buttonTheme,
    this.cardTheme,
    this.checkboxTheme,
    this.chipTheme,
    this.datePickerTheme,
    this.dialogTheme,
    this.dividerTheme,
    this.drawerTheme,
    // DropdownMenuThemeData? dropdownMenuTheme,
    this.elevatedButtonTheme,
    // ExpansionTileThemeData? expansionTileTheme,
    this.filledButtonTheme,
    this.floatingActionButtonTheme,
    this.iconButtonTheme,
    this.listTileTheme,
    // MenuBarThemeData? menuBarTheme,
    this.menuButtonTheme,
    // MenuThemeData? menuTheme,
    this.navigationBarTheme,
    this.navigationDrawerTheme,
    // NavigationRailThemeData? navigationRailTheme,
    this.outlinedButtonTheme,
    // PopupMenuThemeData? popupMenuTheme,
    // ProgressIndicatorThemeData? progressIndicatorTheme,
    // RadioThemeData? radioTheme,
    // SearchBarThemeData? searchBarTheme,
    // SearchViewThemeData? searchViewTheme,
    this.segmentedButtonTheme,
    // SliderThemeData? sliderTheme,
    this.snackBarTheme,
    // SwitchThemeData? switchTheme,
    this.tabBarTheme,
    this.textButtonTheme,
    // TextSelectionThemeData? textSelectionTheme,
    // TimePickerThemeData? timePickerTheme,
    // ToggleButtonsThemeData? toggleButtonsTheme,
    // TooltipThemeData? tooltipTheme,
  });

  // GENERAL CONFIGURATION
  final bool? applyElevationOverlayColor;
  final StacInputDecorationTheme? inputDecorationTheme;
  final MaterialTapTargetSize? materialTapTargetSize;
  final TargetPlatform? platform;
  final StacScrollbarThemeData? scrollbarTheme;
  final bool? useMaterial3;

  // COLOR
  final StacColorScheme? colorScheme;
  final Brightness? brightness;
  final String? colorSchemeSeed;
  // [colorScheme] is the preferred way to configure colors. The [Color] properties
  // listed below (as well as primarySwatch) will gradually be phased out, see
  // https://github.com/flutter/flutter/issues/91772.
  final String? canvasColor;
  final String? cardColor;
  final String? disabledColor;
  final String? dividerColor;
  final String? focusColor;
  final String? highlightColor;
  final String? hintColor;
  final String? hoverColor;
  final String? primaryColor;
  final String? primaryColorDark;
  final String? primaryColorLight;
  final StacMaterialColor? primarySwatch;
  final String? scaffoldBackgroundColor;
  final String? secondaryHeaderColor;
  final String? shadowColor;
  final String? splashColor;
  final String? unselectedWidgetColor;

  // TYPOGRAPHY & ICONOGRAPHY
  final String? fontFamily;
  final List<String>? fontFamilyFallback;
  final String? package;
  final StacIconThemeData? iconTheme;
  final StacIconThemeData? primaryIconTheme;
  final StacTextTheme? primaryTextTheme;
  final StacTextTheme? textTheme;

  // COMPONENT THEMES
  final StacAppBarTheme? appBarTheme;
  // Note: Many theme classes are currently in stac package, will be migrated later
  // Using Map for now to avoid circular dependency
  final StacMaterialBannerThemeData? bannerTheme;
  final StacBottomAppBarThemeData? bottomAppBarTheme;
  final Map<String, dynamic>? bottomNavigationBarTheme;
  final Map<String, dynamic>? bottomSheetTheme;
  final StacButtonThemeData? buttonTheme;
  final Map<String, dynamic>? cardTheme;
  final Map<String, dynamic>? checkboxTheme;
  final Map<String, dynamic>? chipTheme;
  final Map<String, dynamic>? datePickerTheme;
  final Map<String, dynamic>? dialogTheme;
  final StacDividerThemeData? dividerTheme;
  final Map<String, dynamic>? drawerTheme;
  // DropdownMenuThemeData? dropdownMenuTheme,
  final StacButtonStyle? elevatedButtonTheme;
  // ExpansionTileThemeData? expansionTileTheme,
  final StacButtonStyle? filledButtonTheme;
  final Map<String, dynamic>? floatingActionButtonTheme;
  final StacButtonStyle? iconButtonTheme;
  final Map<String, dynamic>? listTileTheme;
  // MenuBarThemeData? menuBarTheme,
  final StacButtonStyle? menuButtonTheme;
  // MenuThemeData? menuTheme,
  final Map<String, dynamic>? navigationBarTheme;
  final Map<String, dynamic>? navigationDrawerTheme;
  // NavigationRailThemeData? navigationRailTheme,
  final StacButtonStyle? outlinedButtonTheme;
  // PopupMenuThemeData? popupMenuTheme,
  // ProgressIndicatorThemeData? progressIndicatorTheme,
  // RadioThemeData? radioTheme,
  // SearchBarThemeData? searchBarTheme,
  // SearchViewThemeData? searchViewTheme,
  final StacButtonStyle? segmentedButtonTheme;
  // SliderThemeData? sliderTheme,
  final Map<String, dynamic>? snackBarTheme;
  // SwitchThemeData? switchTheme,
  final Map<String, dynamic>? tabBarTheme;
  final StacButtonStyle? textButtonTheme;
  // TextSelectionThemeData? textSelectionTheme,
  // TimePickerThemeData? timePickerTheme,
  // ToggleButtonsThemeData? toggleButtonsTheme,
  // TooltipThemeData? tooltipTheme,

  // static const StacThemeTextStyles textTheme = StacThemeTextStyles();

  factory StacTheme.fromJson(Map<String, dynamic> json) =>
      _$StacThemeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacThemeToJson(this);
}
