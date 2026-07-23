import 'package:flutter/material.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

import '../effects/stac_blur_style_parser.dart';
import 'stac_offset_parser.dart';

extension StacBoxShadowParser on StacBoxShadow {
  BoxShadow parse(BuildContext context) {
    return BoxShadow(
      color: color.toColor(context) ?? const Color(0xFF000000),
      blurRadius: blurRadius ?? 0.0,
      offset: offset?.parse ?? Offset.zero,
      spreadRadius: spreadRadius ?? 0.0,
      blurStyle: blurStyle?.parse ?? BlurStyle.normal,
    );
  }
}
