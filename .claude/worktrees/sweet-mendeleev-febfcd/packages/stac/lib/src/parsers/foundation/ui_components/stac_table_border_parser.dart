import 'package:flutter/material.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

import '../borders/stac_border_radius_parser.dart';
import '../borders/stac_border_style_parser.dart';

/// Parses a [StacTableBorder] to a Flutter [TableBorder].
extension StacTableBorderParser on StacTableBorder {
  TableBorder parse(BuildContext context) {
    return TableBorder.all(
      color: color?.toColor(context) ?? Colors.black,
      width: width ?? 1.0,
      style: style?.parse ?? BorderStyle.solid,
      borderRadius: borderRadius?.parse ?? BorderRadius.zero,
    );
  }
}
