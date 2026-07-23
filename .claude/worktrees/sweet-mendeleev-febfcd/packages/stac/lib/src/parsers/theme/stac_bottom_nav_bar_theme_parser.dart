import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/navigation/stac_bottom_navigation_bar_landscape_layout_parser.dart';
import 'package:stac/src/parsers/foundation/navigation/stac_bottom_navigation_bar_type_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/parsers/theme/stac_icon_theme_data_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacBottomNavBarThemeData].
///
/// Converts [StacBottomNavBarThemeData] to Flutter's [BottomNavigationBarThemeData].
extension StacBottomNavBarThemeDataParser on StacBottomNavBarThemeData {
  BottomNavigationBarThemeData parse(BuildContext context) {
    return BottomNavigationBarThemeData(
      backgroundColor: backgroundColor?.toColor(context),
      elevation: elevation,
      selectedIconTheme: selectedIconTheme?.parse(context),
      unselectedIconTheme: unselectedIconTheme?.parse(context),
      selectedItemColor: selectedItemColor?.toColor(context),
      unselectedItemColor: unselectedItemColor?.toColor(context),
      selectedLabelStyle: selectedLabelStyle?.parse(context),
      unselectedLabelStyle: unselectedLabelStyle?.parse(context),
      showSelectedLabels: showSelectedLabels,
      showUnselectedLabels: showUnselectedLabels,
      type: type?.parse,
      enableFeedback: enableFeedback,
      landscapeLayout: landscapeLayout?.parse,
    );
  }
}
