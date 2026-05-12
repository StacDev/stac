import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/text/stac_font_style_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_font_weight_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_baseline_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_decoration_line_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_decoration_style_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_leading_distribution_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_overflow_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

extension StacTextStyleParser on StacTextStyle {
  TextStyle? parse(BuildContext context) {
    switch (type) {
      case StacTextStyleType.theme:
        final themeStyle = (this as StacThemeTextStyle).textTheme;
        final textTheme = Theme.of(context).textTheme;
        TextStyle? textStyle;
        switch (themeStyle) {
          case StacMaterialTextStyle.displayLarge:
            textStyle = textTheme.displayLarge;
            break;
          case StacMaterialTextStyle.displayMedium:
            textStyle = textTheme.displayMedium;
            break;
          case StacMaterialTextStyle.displaySmall:
            textStyle = textTheme.displaySmall;
            break;
          case StacMaterialTextStyle.headlineLarge:
            textStyle = textTheme.headlineLarge;
            break;
          case StacMaterialTextStyle.headlineMedium:
            textStyle = textTheme.headlineMedium;
            break;
          case StacMaterialTextStyle.headlineSmall:
            textStyle = textTheme.headlineSmall;
            break;
          case StacMaterialTextStyle.titleLarge:
            textStyle = textTheme.titleLarge;
            break;
          case StacMaterialTextStyle.titleMedium:
            textStyle = textTheme.titleMedium;
            break;
          case StacMaterialTextStyle.titleSmall:
            textStyle = textTheme.titleSmall;
            break;
          case StacMaterialTextStyle.bodyLarge:
            textStyle = textTheme.bodyLarge;
            break;
          case StacMaterialTextStyle.bodyMedium:
            textStyle = textTheme.bodyMedium;
            break;
          case StacMaterialTextStyle.bodySmall:
            textStyle = textTheme.bodySmall;
            break;
          case StacMaterialTextStyle.labelLarge:
            textStyle = textTheme.labelLarge;
            break;
          case StacMaterialTextStyle.labelMedium:
            textStyle = textTheme.labelMedium;
            break;
          case StacMaterialTextStyle.labelSmall:
            textStyle = textTheme.labelSmall;
            break;
        }

        final themeRef = this as StacThemeTextStyle;
        return textStyle?.copyWith(
          inherit: themeRef.inherit,
          color: themeRef.color?.toColor(context),
          backgroundColor: themeRef.backgroundColor?.toColor(context),
          fontSize: themeRef.fontSize,
          fontWeight: themeRef.fontWeight?.parse,
          fontStyle: themeRef.fontStyle?.parse,
          letterSpacing: themeRef.letterSpacing,
          wordSpacing: themeRef.wordSpacing,
          textBaseline: themeRef.textBaseline?.parse,
          height: themeRef.height,
          leadingDistribution: themeRef.leadingDistribution?.parse,
          decorationColor: themeRef.decorationColor?.toColor(context),
          decorationStyle: themeRef.decorationStyle?.parse,
          decorationThickness: themeRef.decorationThickness,
          debugLabel: themeRef.debugLabel,
          fontFamily: themeRef.fontFamily,
          fontFamilyFallback: themeRef.fontFamilyFallback,
          package: themeRef.package,
          overflow: themeRef.overflow?.parse,
        );
      case StacTextStyleType.custom:
        final style = this as StacCustomTextStyle;
        return TextStyle(
          inherit: style.inherit ?? true,
          color: style.color?.toColor(context),
          backgroundColor: style.backgroundColor?.toColor(context),
          fontSize: style.fontSize,
          fontWeight: style.fontWeight?.parse,
          fontStyle: style.fontStyle?.parse,
          letterSpacing: style.letterSpacing,
          wordSpacing: style.wordSpacing,
          textBaseline: style.textBaseline?.parse,
          height: style.height,
          leadingDistribution: style.leadingDistribution?.parse,
          decoration: style.decoration?.parse,
          decorationColor: style.decorationColor?.toColor(context),
          decorationStyle: style.decorationStyle?.parse,
          decorationThickness: style.decorationThickness,
          debugLabel: style.debugLabel,
          fontFamily: style.fontFamily,
          fontFamilyFallback: style.fontFamilyFallback,
          package: style.package,
          overflow: style.overflow?.parse,
        );
    }
  }
}
