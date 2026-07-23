import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacMaterialBannerThemeData].
///
/// Converts [StacMaterialBannerThemeData] to Flutter's [MaterialBannerThemeData].
extension StacMaterialBannerThemeDataParser on StacMaterialBannerThemeData {
  MaterialBannerThemeData parse(BuildContext context) {
    return MaterialBannerThemeData(
      backgroundColor: backgroundColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      dividerColor: dividerColor?.toColor(context),
      contentTextStyle: contentTextStyle?.parse(context),
      elevation: elevation,
      padding: padding?.parse,
      leadingPadding: leadingPadding?.parse,
    );
  }
}
