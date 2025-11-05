import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/borders/stac_shape_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacSnackBarThemeData].
///
/// Converts [StacSnackBarThemeData] to Flutter's [SnackBarThemeData].
extension StacSnackBarThemeDataParser on StacSnackBarThemeData {
  SnackBarThemeData? parse(BuildContext context) {
    return SnackBarThemeData(
      behavior: behavior,
      backgroundColor: backgroundColor?.toColor(context),
      elevation: elevation,
      shape: shape?.parse(context),
      width: width,
      contentTextStyle: contentTextStyle?.parse(context),
      actionTextColor: actionTextColor?.toColor(context),
      disabledActionTextColor: disabledActionTextColor?.toColor(context),
      insetPadding: insetPadding?.parse,
      dismissDirection: dismissDirection,
      showCloseIcon: showCloseIcon,
      closeIconColor: closeIconColor?.toColor(context),
      actionOverflowThreshold: actionOverflowThreshold,
      actionBackgroundColor: actionBackgroundColor?.toColor(context),
      disabledActionBackgroundColor:
          disabledActionBackgroundColor?.toColor(context),
    );
  }
}

