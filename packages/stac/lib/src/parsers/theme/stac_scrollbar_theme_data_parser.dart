import 'package:flutter/material.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacScrollbarThemeData].
///
/// Converts [StacScrollbarThemeData] to Flutter's [ScrollbarThemeData].
extension StacScrollbarThemeDataParser on StacScrollbarThemeData {
  ScrollbarThemeData parse(BuildContext context) {
    return ScrollbarThemeData(
      thumbVisibility: WidgetStatePropertyAll<bool?>(thumbVisibility),
      thickness: WidgetStatePropertyAll<double?>(thickness),
      trackVisibility: WidgetStatePropertyAll<bool?>(trackVisibility),
      radius: radius != null ? Radius.circular(radius!) : null,
      thumbColor: WidgetStatePropertyAll<Color?>(thumbColor?.toColor(context)),
      trackColor: WidgetStatePropertyAll<Color?>(trackColor?.toColor(context)),
      trackBorderColor: WidgetStatePropertyAll<Color?>(
        trackBorderColor?.toColor(context),
      ),
      crossAxisMargin: crossAxisMargin,
      mainAxisMargin: mainAxisMargin,
      minThumbLength: minThumbLength,
      interactive: interactive,
    );
  }
}
