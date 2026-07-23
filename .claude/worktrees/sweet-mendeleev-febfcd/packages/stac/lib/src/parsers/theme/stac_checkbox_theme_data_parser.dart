import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/borders/stac_border_side_parser.dart';
import 'package:stac/src/parsers/foundation/borders/stac_shape_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_visual_density_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_mouse_cursor_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_material_tap_target_size_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacCheckboxThemeData].
///
/// Converts [StacCheckboxThemeData] to Flutter's [CheckboxThemeData].
extension StacCheckboxThemeDataParser on StacCheckboxThemeData {
  CheckboxThemeData parse(BuildContext context) {
    return CheckboxThemeData(
      mouseCursor: WidgetStateProperty.all(mouseCursor?.parse),
      fillColor: fillColor != null
          ? WidgetStateProperty.all(fillColor!.toColor(context))
          : null,
      checkColor: checkColor != null
          ? WidgetStateProperty.all(checkColor!.toColor(context))
          : null,
      overlayColor: overlayColor != null
          ? WidgetStateProperty.all(overlayColor!.toColor(context))
          : null,
      splashRadius: splashRadius,
      materialTapTargetSize: materialTapTargetSize?.parse,
      visualDensity: visualDensity?.parse,
      shape: shape?.parse(context),
      side: side?.parse(context),
    );
  }
}
