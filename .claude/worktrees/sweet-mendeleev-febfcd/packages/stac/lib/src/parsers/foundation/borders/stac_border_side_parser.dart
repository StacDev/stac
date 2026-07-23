import 'package:flutter/material.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

import 'stac_border_style_parser.dart';

extension StacBorderSideParser on StacBorderSide {
  BorderSide parse(BuildContext context) {
    return BorderSide(
      color: color?.toColor(context) ?? const Color(0xFF000000),
      width: width ?? 1.0,
      style: borderStyle?.parse ?? BorderStyle.solid,
      strokeAlign: strokeAlign ?? BorderSide.strokeAlignInside,
    );
  }
}
