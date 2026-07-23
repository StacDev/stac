import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/effects/stac_shadow_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacIconThemeData].
///
/// Converts [StacIconThemeData] to Flutter's [IconThemeData].
extension StacIconThemeDataParser on StacIconThemeData {
  IconThemeData? parse(BuildContext context) {
    return IconThemeData(
      size: size,
      fill: fill,
      weight: weight,
      grade: grade,
      opticalSize: opticalSize,
      color: color?.toColor(context),
      opacity: opacity,
      shadows: shadows?.map((shadow) => shadow.parse(context)).toList(),
    );
  }
}
