import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/decoration/stac_box_decoration_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/navigation/stac_tab_bar_indicator_size_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacTabBarThemeData].
///
/// Converts [StacTabBarThemeData] to Flutter's [TabBarThemeData].
extension StacTabBarThemeDataParser on StacTabBarThemeData {
  TabBarThemeData? parse(BuildContext context) {
    return TabBarThemeData(
      indicator: indicator?.parse(context),
      indicatorColor: indicatorColor?.toColor(context),
      indicatorSize: indicatorSize?.parse,
      dividerColor: dividerColor?.toColor(context),
      labelColor: labelColor?.toColor(context),
      labelPadding: labelPadding?.parse,
      labelStyle: labelStyle?.parse(context),
      unselectedLabelColor: unselectedLabelColor?.toColor(context),
      unselectedLabelStyle: unselectedLabelStyle?.parse(context),
      overlayColor: WidgetStateProperty.all(overlayColor?.toColor(context)),
    );
  }
}
