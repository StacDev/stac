import 'package:flutter/material.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacDividerThemeData].
///
/// Converts [StacDividerThemeData] to Flutter's [DividerThemeData].
extension StacDividerThemeDataParser on StacDividerThemeData {
  DividerThemeData parse(BuildContext context) {
    return DividerThemeData(
      color: color?.toColor(context),
      space: space,
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
