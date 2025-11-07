import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/alignment/stac_alignment_geometry_parser.dart';
import 'package:stac/src/parsers/foundation/borders/stac_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacDialogTheme].
///
/// Converts [StacDialogTheme] to Flutter's [DialogTheme].
extension StacDialogThemeParser on StacDialogTheme {
  DialogTheme? parse(BuildContext context) {
    return DialogTheme(
      backgroundColor: backgroundColor?.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      shape: shape?.parse(context),
      alignment: alignment?.parse,
      titleTextStyle: titleTextStyle?.parse(context),
      contentTextStyle: contentTextStyle?.parse(context),
      actionsPadding: actionsPadding?.parse,
      iconColor: iconColor?.toColor(context),
    );
  }
}
