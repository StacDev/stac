import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/colors/stac_brightness.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';
import 'package:stac_core/foundation/theme/stac_app_bar_theme/stac_app_bar_theme.dart';
import 'package:stac_core/foundation/theme/stac_bottom_app_bar_theme/stac_bottom_app_bar_theme.dart';
import 'package:stac_core/foundation/theme/stac_bottom_nav_bar_theme_data/stac_bottom_nav_bar_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_bottom_sheet_theme_data/stac_bottom_sheet_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_button_style/stac_button_style.dart';
import 'package:stac_core/foundation/theme/stac_button_theme_data/stac_button_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_card_theme_data/stac_card_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_checkbox_theme_data/stac_checkbox_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_chip_theme_data/stac_chip_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_color_scheme/stac_color_scheme.dart';
import 'package:stac_core/foundation/theme/stac_date_picker_theme_data/stac_date_picker_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_dialog_theme_data/stac_dialog_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_divider_theme_data/stac_divider_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_drawer_theme_data/stac_drawer_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_floating_action_button_theme_data/stac_floating_action_button_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_icon_theme_data/stac_icon_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_input_decoration_theme/stac_input_decoration_theme.dart';
import 'package:stac_core/foundation/theme/stac_list_tile_theme_data/stac_list_tile_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_material_banner_theme_data/stac_material_banner_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_material_color/stac_material_color.dart';
import 'package:stac_core/foundation/theme/stac_navigation_bar_theme_data/stac_navigation_bar_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_navigation_drawer_theme_data/stac_navigation_drawer_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_scrollbar_theme_data/stac_scrollbar_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_snack_bar_theme_data/stac_snack_bar_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_tab_bar_theme_data/stac_tab_bar_theme_data.dart';
import 'package:stac_core/foundation/theme/stac_text_theme/stac_text_theme.dart';
import 'package:stac_core/foundation/theme/stac_tool_tip_theme_data/stac_tool_tip_theme_data.dart';

part 'stac_theme.g.dart';

/// A Stac model representing Flutter's [ThemeData].
///
/// Defines the complete theme for the application, including colors, typography,
/// iconography, and component themes for all Material widgets.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacTheme(
///   brightness: StacBrightness.light,
///   colorScheme: StacColorScheme(
///     brightness: StacBrightness.light,
///     primary: '#2196F3',
///     onPrimary: '#FFFFFF',
///   ),
///   textTheme: StacTextTheme(...),
///   appBarTheme: StacAppBarTheme(...),
///   useMaterial3: true,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "brightness": "light",
///   "useMaterial3": true,
///   "colorScheme": {
///     "brightness": "light",
///     "primary": "#2196F3",
///     "onPrimary": "#FFFFFF"
///   },
///   "textTheme": {...},
///   "appBarTheme": {...},
///   "buttonTheme": {...}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacTheme implements StacElement {
  /// Creates a [StacTheme] with the given properties.
  const StacTheme({
    // GENERAL CONFIGURATION
    this.applyElevationOverlayColor,
    this.inputDecorationTheme,
    this.materialTapTargetSize,
    // this.platform,
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
    this.tooltipTheme,
  });

  // GENERAL CONFIGURATION
  /// Whether to apply elevation overlay color.
  final bool? applyElevationOverlayColor;

  /// The theme for input decorations (text fields, etc.).
  final StacInputDecorationTheme? inputDecorationTheme;

  /// The minimum size of tap targets.
  final StacMaterialTapTargetSize? materialTapTargetSize;

  // final StacTargetPlatform? platform;

  /// The theme for scrollbars.
  final StacScrollbarThemeData? scrollbarTheme;

  /// Whether to use Material 3 design.
  final bool? useMaterial3;

  // COLOR
  /// The color scheme for the theme.
  ///
  /// This is the preferred way to configure colors. The individual color
  /// properties below (as well as primarySwatch) will gradually be phased out.
  final StacColorScheme? colorScheme;

  /// The brightness of the theme (light or dark).
  final StacBrightness? brightness;

  /// A seed color used to generate the color scheme.
  final String? colorSchemeSeed;

  // [colorScheme] is the preferred way to configure colors. The [Color] properties
  // listed below (as well as primarySwatch) will gradually be phased out, see
  // https://github.com/flutter/flutter/issues/91772.

  /// The default color of [Material] when it is used within this theme.
  final String? canvasColor;

  /// The default color of [Card] widgets.
  final String? cardColor;

  /// The color to use for disabled widgets.
  final String? disabledColor;

  /// The color to use for dividers.
  final String? dividerColor;

  /// The color to use for input fields that have the input focus.
  final String? focusColor;

  /// The highlight color for widgets.
  final String? highlightColor;

  /// The color to use for hint text or placeholder text.
  final String? hintColor;

  /// The color to use for widgets when they are being hovered over.
  final String? hoverColor;

  /// The primary color of the theme.
  final String? primaryColor;

  /// A darker version of the primary color.
  final String? primaryColorDark;

  /// A lighter version of the primary color.
  final String? primaryColorLight;

  /// A swatch of primary colors with different shades.
  final StacMaterialColor? primarySwatch;

  /// The default color of the [Scaffold] background.
  final String? scaffoldBackgroundColor;

  /// The color of the header in a [DataTable].
  final String? secondaryHeaderColor;

  /// The default shadow color for [Material] widgets.
  final String? shadowColor;

  /// The splash color for widgets.
  final String? splashColor;

  /// The color to use for unselected widgets.
  final String? unselectedWidgetColor;

  // TYPOGRAPHY & ICONOGRAPHY
  /// The default font family for text in the theme.
  final String? fontFamily;

  /// The fallback font families to use when [fontFamily] is not available.
  final List<String>? fontFamilyFallback;

  /// The package name for the font family.
  final String? package;

  /// The default theme for icons.
  final StacIconThemeData? iconTheme;

  /// The theme for primary icons.
  final StacIconThemeData? primaryIconTheme;

  /// The text theme for primary text.
  final StacTextTheme? primaryTextTheme;

  /// The default text theme for the application.
  final StacTextTheme? textTheme;

  // COMPONENT THEMES
  /// The theme for [AppBar] widgets.
  final StacAppBarTheme? appBarTheme;

  // Note: Many theme classes are currently in stac package, will be migrated later
  // Using Map for now to avoid circular dependency

  /// The theme for [MaterialBanner] widgets.
  final StacMaterialBannerThemeData? bannerTheme;

  /// The theme for [BottomAppBar] widgets.
  final StacBottomAppBarThemeData? bottomAppBarTheme;

  /// The theme for [BottomNavigationBar] widgets.
  final StacBottomNavBarThemeData? bottomNavigationBarTheme;

  /// The theme for [BottomSheet] widgets.
  final StacBottomSheetThemeData? bottomSheetTheme;

  /// The theme for Material buttons.
  final StacButtonThemeData? buttonTheme;

  /// The theme for [Card] widgets.
  final StacCardThemeData? cardTheme;

  /// The theme for [Checkbox] widgets.
  final StacCheckboxThemeData? checkboxTheme;

  /// The theme for [Chip] widgets.
  final StacChipThemeData? chipTheme;

  /// The theme for date picker dialogs.
  final StacDatePickerThemeData? datePickerTheme;

  /// The theme for [Dialog] widgets.
  final StacDialogThemeData? dialogTheme;

  /// The theme for [Divider] widgets.
  final StacDividerThemeData? dividerTheme;

  /// The theme for [Drawer] widgets.
  final StacDrawerThemeData? drawerTheme;

  // DropdownMenuThemeData? dropdownMenuTheme,

  /// The theme for [ElevatedButton] widgets.
  final StacButtonStyle? elevatedButtonTheme;

  // ExpansionTileThemeData? expansionTileTheme,

  /// The theme for [FilledButton] widgets.
  final StacButtonStyle? filledButtonTheme;

  /// The theme for [FloatingActionButton] widgets.
  final StacFloatingActionButtonThemeData? floatingActionButtonTheme;

  /// The theme for [IconButton] widgets.
  final StacButtonStyle? iconButtonTheme;

  /// The theme for [ListTile] widgets.
  final StacListTileThemeData? listTileTheme;

  // MenuBarThemeData? menuBarTheme,

  /// The theme for [MenuButton] widgets.
  final StacButtonStyle? menuButtonTheme;

  // MenuThemeData? menuTheme,

  /// The theme for [NavigationBar] widgets.
  final StacNavigationBarThemeData? navigationBarTheme;

  /// The theme for [NavigationDrawer] widgets.
  final StacNavigationDrawerThemeData? navigationDrawerTheme;

  // NavigationRailThemeData? navigationRailTheme,

  /// The theme for [OutlinedButton] widgets.
  final StacButtonStyle? outlinedButtonTheme;

  // PopupMenuThemeData? popupMenuTheme,
  // ProgressIndicatorThemeData? progressIndicatorTheme,
  // RadioThemeData? radioTheme,
  // SearchBarThemeData? searchBarTheme,
  // SearchViewThemeData? searchViewTheme,

  /// The theme for [SegmentedButton] widgets.
  final StacButtonStyle? segmentedButtonTheme;

  // SliderThemeData? sliderTheme,

  /// The theme for [SnackBar] widgets.
  final StacSnackBarThemeData? snackBarTheme;

  // SwitchThemeData? switchTheme,

  /// The theme for [TabBar] widgets.
  final StacTabBarThemeData? tabBarTheme;

  /// The theme for [TextButton] widgets.
  final StacButtonStyle? textButtonTheme;

  // TextSelectionThemeData? textSelectionTheme,
  // TimePickerThemeData? timePickerTheme,
  // ToggleButtonsThemeData? toggleButtonsTheme,

  /// The theme for [Tooltip] widgets.
  final StacTooltipThemeData? tooltipTheme;

  /// Creates a [StacTheme] from JSON.
  factory StacTheme.fromJson(Map<String, dynamic> json) =>
      _$StacThemeFromJson(json);

  /// Converts this theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacThemeToJson(this);
}

/// A utility class providing access to Material text theme styles.
///
/// This class provides convenient access to Material Design text theme styles
/// for use in Stac widgets. It offers a fluent API to access all Material
/// text theme variants.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// final style = StacThemeData.textTheme.displayLarge;
/// final bodyStyle = StacThemeData.textTheme.bodyMedium;
/// final titleStyle = StacThemeData.textTheme.titleLarge;
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "style": {
///     "type": "theme",
///     "textTheme": "displayLarge"
///   }
/// }
/// ```
/// {@end-tool}
class StacThemeData {
  /// Creates a [StacThemeData] instance.
  const StacThemeData._();

  /// Access to all Material text theme styles.
  ///
  /// Provides easy access to Material Design text theme styles through a
  /// fluent API. Use this to reference standard Material text styles in your
  /// Stac widgets.
  ///
  /// Example:
  /// ```dart
  /// StacText(
  ///   data: 'Hello',
  ///   style: StacThemeData.textTheme.bodyMedium,
  /// )
  /// ```
  static const StacThemeTextStyles textTheme = StacThemeTextStyles();
}
