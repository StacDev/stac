import 'package:flutter/material.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

import 'stac_border_side_parser.dart';
import 'stac_border_style_parser.dart';

extension StacBorderParser on StacBorder {
  Border parse(BuildContext context) {
    final hasIndividualSides =
        top != null || right != null || bottom != null || left != null;

    if (hasIndividualSides) {
      return Border(
        top: top?.parse(context) ?? BorderSide.none,
        right: right?.parse(context) ?? BorderSide.none,
        bottom: bottom?.parse(context) ?? BorderSide.none,
        left: left?.parse(context) ?? BorderSide.none,
      );
    } else {
      return Border.all(
        color: color.toColor(context) ?? const Color(0xFF000000),
        width: width ?? 1.0,
        style: borderStyle?.parse ?? BorderStyle.solid,
        strokeAlign: strokeAlign ?? BorderSide.strokeAlignInside,
      );
    }
  }
}
