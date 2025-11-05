import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacBottomAppBarTheme].
///
/// Converts [StacBottomAppBarTheme] to Flutter's [BottomAppBarThemeData].
extension StacBottomAppBarThemeParser on StacBottomAppBarTheme {
  BottomAppBarThemeData? parse(BuildContext context) {
    return BottomAppBarThemeData(
      color: color?.toColor(context),
      elevation: elevation,
      height: height,
      surfaceTintColor: surfaceTintColor?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      padding: padding?.parse,
    );
  }
}

