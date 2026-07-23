import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/alignment/stac_alignment_geometry_parser.dart';
import 'package:stac/src/parsers/foundation/borders/stac_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_box_constraints_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacDialogThemeData].
///
/// Converts [StacDialogThemeData] to Flutter's [DialogThemeData].
extension StacDialogThemeDataParser on StacDialogThemeData {
  DialogThemeData parse(BuildContext context) {
    return DialogThemeData(
      backgroundColor: backgroundColor?.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      shape: shape?.parse(context),
      alignment: alignment?.parse,
      iconColor: iconColor?.toColor(context),
      titleTextStyle: titleTextStyle?.parse(context),
      contentTextStyle: contentTextStyle?.parse(context),
      actionsPadding: actionsPadding?.parse,
      barrierColor: barrierColor?.toColor(context),
      insetPadding: insetPadding?.parse,
      clipBehavior: clipBehavior?.parse,
      constraints: constraints?.parse,
    );
  }
}
