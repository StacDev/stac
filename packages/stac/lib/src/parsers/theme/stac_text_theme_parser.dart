import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacTextTheme].
///
/// Converts [StacTextTheme] to Flutter's [TextTheme].
extension StacTextThemeParser on StacTextTheme {
  TextTheme? parse(BuildContext context) {
    return TextTheme(
      displayLarge: displayLarge?.parse(context),
      displayMedium: displayMedium?.parse(context),
      displaySmall: displaySmall?.parse(context),
      headlineLarge: headlineLarge?.parse(context),
      headlineMedium: headlineMedium?.parse(context),
      headlineSmall: headlineSmall?.parse(context),
      titleLarge: titleLarge?.parse(context),
      titleMedium: titleMedium?.parse(context),
      titleSmall: titleSmall?.parse(context),
      bodyLarge: bodyLarge?.parse(context),
      bodyMedium: bodyMedium?.parse(context),
      bodySmall: bodySmall?.parse(context),
      labelLarge: labelLarge?.parse(context),
      labelMedium: labelMedium?.parse(context),
      labelSmall: labelSmall?.parse(context),
    );
  }
}
