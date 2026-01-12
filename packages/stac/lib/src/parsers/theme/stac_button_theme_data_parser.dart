import 'package:flutter/material.dart';
import 'package:stac/stac.dart';

/// Parser extension for [StacButtonThemeData].
///
/// Converts [StacButtonThemeData] to Flutter's [ButtonThemeData].
extension StacButtonThemeDataParser on StacButtonThemeData {
  ButtonThemeData? parse(BuildContext context) {
    return ButtonThemeData(
      textTheme: textTheme?.parse(context) ?? ButtonTextTheme.normal,
      minWidth: minWidth ?? 88.0,
      height: height ?? 36.0,
      padding: padding?.parse,
      shape: shape?.parse(context),
      layoutBehavior: layoutBehavior?.parse ?? ButtonBarLayoutBehavior.padded,
      alignedDropdown: alignedDropdown ?? false,
      buttonColor: buttonColor?.toColor(context),
      disabledColor: disabledColor?.toColor(context),
      focusColor: focusColor?.toColor(context),
      hoverColor: hoverColor?.toColor(context),
      highlightColor: highlightColor?.toColor(context),
      splashColor: splashColor?.toColor(context),
      colorScheme: colorScheme?.parse(context),
      materialTapTargetSize: materialTapTargetSize?.parse,
    );
  }
}
