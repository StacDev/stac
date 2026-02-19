import 'package:flutter/material.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

import 'stac_border_radius_parser.dart';

extension StacInputBorderParser on StacInputBorder? {
  InputBorder? parse(BuildContext context) {
    final border = this;
    if (border == null) return null;
    final side = BorderSide(
      color: border.color?.toColor(context) ?? const Color(0xFF000000),
      width: border.width ?? 1.0,
    );
    switch (border.type) {
      case StacInputBorderType.none:
        return InputBorder.none;
      case StacInputBorderType.underlineInputBorder:
        return UnderlineInputBorder(borderSide: side);
      case StacInputBorderType.outlineInputBorder:
        return OutlineInputBorder(
          borderSide: side,
          borderRadius: border.borderRadius?.parse ?? BorderRadius.zero,
          gapPadding: border.gapPadding ?? 4.0,
        );
    }
  }
}
