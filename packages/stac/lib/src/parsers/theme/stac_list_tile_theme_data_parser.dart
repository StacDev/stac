import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/borders/stac_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_visual_density_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacListTileThemeData].
///
/// Converts [StacListTileThemeData] to Flutter's [ListTileThemeData].
extension StacListTileThemeDataParser on StacListTileThemeData {
  ListTileThemeData parse(BuildContext context) {
    return ListTileThemeData(
      dense: dense,
      shape: shape?.parse(context),
      style: style,
      selectedColor: selectedColor?.toColor(context),
      iconColor: iconColor?.toColor(context),
      textColor: textColor?.toColor(context),
      titleTextStyle: titleTextStyle?.parse(context),
      subtitleTextStyle: subtitleTextStyle?.parse(context),
      leadingAndTrailingTextStyle: leadingAndTrailingTextStyle?.parse(context),
      contentPadding: contentPadding?.parse,
      tileColor: tileColor?.toColor(context),
      selectedTileColor: selectedTileColor?.toColor(context),
      horizontalTitleGap: horizontalTitleGap,
      minVerticalPadding: minVerticalPadding,
      minLeadingWidth: minLeadingWidth,
      enableFeedback: enableFeedback,
      visualDensity: visualDensity?.parse,
      titleAlignment: titleAlignment,
    );
  }
}
