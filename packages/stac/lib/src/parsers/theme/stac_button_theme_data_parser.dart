import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/borders/stac_shape_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/theme/stac_color_scheme_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacButtonThemeData].
///
/// Converts [StacButtonThemeData] to Flutter's [ButtonThemeData].
extension StacButtonThemeDataParser on StacButtonThemeData {
  ButtonThemeData? parse(BuildContext context) {
    return ButtonThemeData(
      textTheme: textTheme,
      minWidth: minWidth,
      height: height,
      padding: padding?.parse,
      shape: shape?.parse(context),
      layoutBehavior: layoutBehavior,
      alignedDropdown: alignedDropdown,
      buttonColor: buttonColor?.toColor(context),
      disabledColor: disabledColor?.toColor(context),
      focusColor: focusColor?.toColor(context),
      hoverColor: hoverColor?.toColor(context),
      highlightColor: highlightColor?.toColor(context),
      splashColor: splashColor?.toColor(context),
      colorScheme: colorScheme?.parse(context),
      materialTapTargetSize: materialTapTargetSize,
    );
  }
}
