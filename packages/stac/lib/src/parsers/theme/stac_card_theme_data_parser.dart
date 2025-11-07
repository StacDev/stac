import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/borders/stac_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacCardThemeData].
///
/// Converts [StacCardThemeData] to Flutter's [CardThemeData].
extension StacCardThemeDataParser on StacCardThemeData {
  CardThemeData parse(BuildContext context) {
    return CardThemeData(
      clipBehavior: clipBehavior?.parse,
      color: color?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      elevation: elevation,
      margin: margin?.parse,
      shape: shape?.parse(context),
    );
  }
}
