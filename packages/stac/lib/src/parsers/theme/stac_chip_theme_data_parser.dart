import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/borders/stac_border_side_parser.dart';
import 'package:stac/src/parsers/foundation/borders/stac_shape_border_parser.dart';
import 'package:stac/src/parsers/foundation/colors/stac_brightness_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_box_constraints_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/parsers/theme/stac_icon_theme_data_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacChipThemeData].
///
/// Converts [StacChipThemeData] to Flutter's [ChipThemeData].
extension StacChipThemeDataParser on StacChipThemeData {
  ChipThemeData parse(BuildContext context) {
    return ChipThemeData(
      color: WidgetStatePropertyAll(color?.toColor(context)),
      backgroundColor: backgroundColor?.toColor(context),
      deleteIconColor: deleteIconColor?.toColor(context),
      disabledColor: disabledColor?.toColor(context),
      selectedColor: selectedColor?.toColor(context),
      secondarySelectedColor: secondarySelectedColor?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      selectedShadowColor: selectedShadowColor?.toColor(context),
      showCheckmark: showCheckmark,
      checkmarkColor: checkmarkColor?.toColor(context),
      labelPadding: labelPadding?.parse,
      padding: padding?.parse,
      side: side?.parse(context),
      shape: shape?.parse(context),
      labelStyle: labelStyle?.parse(context),
      secondaryLabelStyle: secondaryLabelStyle?.parse(context),
      brightness: brightness?.parse,
      elevation: elevation,
      pressElevation: pressElevation,
      iconTheme: iconTheme?.parse(context),
      avatarBoxConstraints: avatarBoxConstraints?.parse,
      deleteIconBoxConstraints: deleteIconBoxConstraints?.parse,
    );
  }
}
