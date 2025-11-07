import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacFloatingActionButtonThemeData].
///
/// Converts [StacFloatingActionButtonThemeData] to Flutter's [FloatingActionButtonThemeData].
extension StacFloatingActionThemeParser on StacFloatingActionButtonThemeData {
  FloatingActionButtonThemeData parse(BuildContext context) {
    return FloatingActionButtonThemeData(
      foregroundColor: foregroundColor?.toColor(context),
      backgroundColor: backgroundColor?.toColor(context),
      focusColor: focusColor?.toColor(context),
      hoverColor: hoverColor?.toColor(context),
      splashColor: splashColor?.toColor(context),
      elevation: elevation,
      focusElevation: focusElevation,
      hoverElevation: hoverElevation,
      disabledElevation: disabledElevation,
      highlightElevation: highlightElevation,
      enableFeedback: enableFeedback,
      iconSize: iconSize,
      extendedIconLabelSpacing: extendedIconLabelSpacing,
      extendedPadding: extendedPadding?.parse,
      extendedTextStyle: extendedTextStyle?.parse(context),
    );
  }
}
