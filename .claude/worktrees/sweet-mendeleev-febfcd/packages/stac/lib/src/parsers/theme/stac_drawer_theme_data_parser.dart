import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/borders/stac_shape_border_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacDrawerThemeData].
///
/// Converts [StacDrawerThemeData] to Flutter's [DrawerThemeData].
extension StacDrawerThemeDataParser on StacDrawerThemeData {
  DrawerThemeData parse(BuildContext context) {
    return DrawerThemeData(
      backgroundColor: backgroundColor?.toColor(context),
      scrimColor: scrimColor?.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      shape: shape?.parse(context),
      endShape: endShape?.parse(context),
      width: width,
      clipBehavior: clipBehavior?.parse,
    );
  }
}
