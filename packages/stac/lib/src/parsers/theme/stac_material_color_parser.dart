import 'package:flutter/material.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacMaterialColor].
///
/// Converts [StacMaterialColor] to Flutter's [MaterialColor].
extension StacMaterialColorParser on StacMaterialColor {
  MaterialColor parse(BuildContext context) {
    Map<int, Color> color = {
      50: shade50.toColor(context)!,
      100: shade100.toColor(context)!,
      200: shade200.toColor(context)!,
      300: shade300.toColor(context)!,
      400: shade400.toColor(context)!,
      500: shade500.toColor(context)!,
      600: shade600.toColor(context)!,
      700: shade700.toColor(context)!,
      800: shade800.toColor(context)!,
      900: shade900.toColor(context)!,
    };

    return MaterialColor(
      // ignore: deprecated_member_use
      (primary.toColor(context))!.value,
      color,
    );
  }
}
