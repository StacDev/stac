import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/foundation.dart';
import 'package:stac/src/parsers/theme/stac_icon_theme_data_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacNavigationBarThemeData].
///
/// Converts [StacNavigationBarThemeData] to Flutter's [NavigationBarThemeData].
extension StacNavigationBarThemeDataParser on StacNavigationBarThemeData {
  NavigationBarThemeData? parse(BuildContext context) {
    return NavigationBarThemeData(
      height: height,
      backgroundColor: backgroundColor?.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      indicatorColor: indicatorColor?.toColor(context),
      indicatorShape: indicatorShape?.parse(context),
      labelTextStyle: WidgetStateProperty.all(labelTextStyle?.parse(context)),
      iconTheme: WidgetStateProperty.all(iconTheme?.parse(context)),
      labelBehavior: labelBehavior?.parse,
    );
  }
}
