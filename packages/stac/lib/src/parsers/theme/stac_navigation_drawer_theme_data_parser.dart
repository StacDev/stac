import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/borders/stac_shape_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_size_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/parsers/theme/themes.dart';
import 'package:stac/src/utils/utils.dart';

/// Parser extension for [StacNavigationDrawerThemeData].
///
/// Converts [StacNavigationDrawerThemeData] to Flutter's [NavigationDrawerThemeData].
extension StacNavigationDrawerThemeDataParser on StacNavigationDrawerThemeData {
  NavigationDrawerThemeData parse(BuildContext context) {
    return NavigationDrawerThemeData(
      tileHeight: tileHeight,
      backgroundColor: backgroundColor?.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      indicatorColor: indicatorColor?.toColor(context),
      indicatorShape: indicatorShape?.parse(context),
      indicatorSize: indicatorSize?.parse,
      labelTextStyle: WidgetStatePropertyAll(labelTextStyle?.parse(context)),
      iconTheme: WidgetStatePropertyAll(iconTheme?.parse(context)),
    );
  }
}
