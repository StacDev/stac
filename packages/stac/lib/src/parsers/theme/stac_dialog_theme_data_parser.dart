import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/alignment/stac_alignment_geometry_parser.dart';
import 'package:stac/src/parsers/foundation/borders/stac_border_parser.dart';
import 'package:stac/src/parsers/foundation/borders/stac_border_style_parser.dart';
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
  DialogThemeData? parse(BuildContext context) {
    // Convert StacBorder to ShapeBorder (RoundedRectangleBorder)
    // Since DialogThemeData expects ShapeBorder, we convert Border to RoundedRectangleBorder
    ShapeBorder? parsedShape;
    if (shape != null) {
      final border = shape!.parse(context);
      // Extract border side from Border (use top side as default, or create a default)
      final borderSide = border.top != BorderSide.none
          ? border.top
          : (border.left != BorderSide.none
                ? border.left
                : (border.right != BorderSide.none
                      ? border.right
                      : (border.bottom != BorderSide.none
                            ? border.bottom
                            : BorderSide.none)));

      // If all sides are none, use a default border side
      if (borderSide == BorderSide.none) {
        // Try to get a border side from the StacBorder's color/width
        final defaultSide = BorderSide(
          color: shape!.color?.toColor(context) ?? Colors.transparent,
          width: shape!.width ?? 0.0,
          style: shape!.borderStyle?.parse ?? BorderStyle.solid,
        );
        parsedShape = RoundedRectangleBorder(
          side: defaultSide.width > 0 ? defaultSide : BorderSide.none,
          borderRadius: BorderRadius.zero,
        );
      } else {
        parsedShape = RoundedRectangleBorder(
          side: borderSide,
          borderRadius: BorderRadius.zero,
        );
      }
    }

    return DialogThemeData(
      backgroundColor: backgroundColor?.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      shape: parsedShape,
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
