import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/foundation.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacTooltipThemeData].
///
/// Converts [StacTooltipThemeData] to Flutter's [TooltipThemeData].
extension StacTooltipThemeDataParser on StacTooltipThemeData {
  TooltipThemeData parse(BuildContext context) {
    return TooltipThemeData(
      constraints: constraints?.parse,
      padding: padding?.parse,
      margin: margin?.parse,
      verticalOffset: verticalOffset,
      preferBelow: preferBelow,
      excludeFromSemantics: excludeFromSemantics,
      decoration: decoration?.parse(context),
      textStyle: textStyle?.parse(context),
      textAlign: textAlign?.parse,
      waitDuration: waitDuration?.parse,
      showDuration: showDuration?.parse,
      exitDuration: exitDuration?.parse,
      triggerMode: triggerMode?.parse,
      enableFeedback: enableFeedback,
    );
  }
}
