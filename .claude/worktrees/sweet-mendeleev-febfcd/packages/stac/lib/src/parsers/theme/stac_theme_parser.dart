import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/colors/stac_brightness_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_material_tap_target_size_parser.dart';
import 'package:stac/src/parsers/foundation/theme/stac_input_decoration_theme_parser.dart';
import 'package:stac/src/parsers/theme/stac_app_bar_theme_parser.dart';
import 'package:stac/src/parsers/theme/stac_bottom_app_bar_theme_parser.dart';
import 'package:stac/src/parsers/theme/stac_bottom_nav_bar_theme_parser.dart';
import 'package:stac/src/parsers/theme/stac_bottom_sheet_theme_parser.dart';
import 'package:stac/src/parsers/theme/stac_button_style_parser.dart';
import 'package:stac/src/parsers/theme/stac_button_theme_data_parser.dart';
import 'package:stac/src/parsers/theme/stac_card_theme_data_parser.dart';
import 'package:stac/src/parsers/theme/stac_checkbox_theme_data_parser.dart';
import 'package:stac/src/parsers/theme/stac_chip_theme_data_parser.dart';
import 'package:stac/src/parsers/theme/stac_color_scheme_parser.dart';
import 'package:stac/src/parsers/theme/stac_date_picker_theme_data_parser.dart';
import 'package:stac/src/parsers/theme/stac_dialog_theme_data_parser.dart';
import 'package:stac/src/parsers/theme/stac_divider_theme_data_parser.dart';
import 'package:stac/src/parsers/theme/stac_drawer_theme_data_parser.dart';
import 'package:stac/src/parsers/theme/stac_floating_action_button_theme_data_parser.dart';
import 'package:stac/src/parsers/theme/stac_icon_theme_data_parser.dart';
import 'package:stac/src/parsers/theme/stac_list_tile_theme_data_parser.dart';
import 'package:stac/src/parsers/theme/stac_material_banner_theme_data_parser.dart';
import 'package:stac/src/parsers/theme/stac_material_color_parser.dart';
import 'package:stac/src/parsers/theme/stac_navigation_bar_theme_data_parser.dart';
import 'package:stac/src/parsers/theme/stac_navigation_drawer_theme_data_parser.dart';
import 'package:stac/src/parsers/theme/stac_scrollbar_theme_data_parser.dart';
import 'package:stac/src/parsers/theme/stac_snack_bar_theme_data_parser.dart';
import 'package:stac/src/parsers/theme/stac_tab_bar_theme_data_parser.dart';
import 'package:stac/src/parsers/theme/stac_text_theme_parser.dart';
import 'package:stac/src/parsers/theme/stac_tool_tip_theme_data_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacTheme].
///
/// Converts [StacTheme] to Flutter's [ThemeData].
extension StacThemeParser on StacTheme {
  ThemeData? parse(BuildContext context) {
    return ThemeData(
      // GENERAL CONFIGURATION
      applyElevationOverlayColor: applyElevationOverlayColor,
      inputDecorationTheme: inputDecorationTheme?.parse(context),
      materialTapTargetSize: materialTapTargetSize?.parse,
      scrollbarTheme: scrollbarTheme?.parse(context),
      useMaterial3: useMaterial3,
      // COLOR
      colorScheme: colorScheme?.parse(context),
      brightness: brightness?.parse,
      colorSchemeSeed: colorSchemeSeed?.toColor(context),
      canvasColor: canvasColor?.toColor(context),
      cardColor: cardColor?.toColor(context),
      disabledColor: disabledColor?.toColor(context),
      dividerColor: dividerColor?.toColor(context),
      focusColor: focusColor?.toColor(context),
      highlightColor: highlightColor?.toColor(context),
      hintColor: hintColor?.toColor(context),
      hoverColor: hoverColor?.toColor(context),
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
      bannerTheme: bannerTheme?.parse(context),
      bottomAppBarTheme: bottomAppBarTheme?.parse(context),
      bottomNavigationBarTheme: bottomNavigationBarTheme?.parse(context),
      bottomSheetTheme: bottomSheetTheme?.parse(context),
      buttonTheme: buttonTheme?.parse(context),
      cardTheme: cardTheme?.parse(context),
      checkboxTheme: checkboxTheme?.parse(context),
      chipTheme: chipTheme?.parse(context),
      datePickerTheme: datePickerTheme?.parse(context),
      dialogTheme: dialogTheme?.parse(context),
      dividerTheme: dividerTheme?.parse(context),
      drawerTheme: drawerTheme?.parse(context),
      // DropdownMenuThemeData? dropdownMenuTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: elevatedButtonTheme?.parseElevatedButton(context),
      ),
      // ExpansionTileThemeData? expansionTileTheme,
      filledButtonTheme: FilledButtonThemeData(
        style: filledButtonTheme?.parseFilledButton(context),
      ),
      floatingActionButtonTheme: floatingActionButtonTheme?.parse(context),
      iconButtonTheme: IconButtonThemeData(
        style: iconButtonTheme?.parseIconButton(context),
      ),
      listTileTheme: listTileTheme?.parse(context),
      // MenuBarThemeData? menuBarTheme,
      menuButtonTheme: MenuButtonThemeData(
        style: menuButtonTheme?.parseElevatedButton(context),
      ),
      // MenuThemeData? menuTheme,
      navigationBarTheme: navigationBarTheme?.parse(context),
      navigationDrawerTheme: navigationDrawerTheme?.parse(context),
      // NavigationRailThemeData? navigationRailTheme,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: outlinedButtonTheme?.parseOutlinedButton(context),
      ),
      // PopupMenuThemeData? popupMenuTheme,
      // ProgressIndicatorThemeData? progressIndicatorTheme,
      // RadioThemeData? radioTheme,
      // SearchBarThemeData? searchBarTheme,
      // SearchViewThemeData? searchViewTheme,
      // SegmentedButtonThemeData? segmentedButtonTheme,
      // SliderThemeData? sliderTheme,
      snackBarTheme: snackBarTheme?.parse(context),
      // SwitchThemeData? switchTheme,
      tabBarTheme: tabBarTheme?.parse(context),
      textButtonTheme: TextButtonThemeData(
        style: textButtonTheme?.parseTextButton(context),
      ),
      // TextSelectionThemeData? textSelectionTheme,
      // TimePickerThemeData? timePickerTheme,
      // ToggleButtonsThemeData? toggleButtonsTheme,
      tooltipTheme: tooltipTheme?.parse(context),
    );
  }
}
