import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_offset_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

extension StacShadowParser on StacShadow {
  Shadow parse(BuildContext context) {
    return Shadow(
      color: color.toColor(context) ?? Colors.transparent,
      offset: (offset)?.parse ?? Offset.zero,
      blurRadius: (blurRadius) ?? 0.0,
    );
  }
}
