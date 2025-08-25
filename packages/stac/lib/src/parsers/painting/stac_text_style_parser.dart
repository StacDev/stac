import 'package:flutter/material.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

extension StacTextStyleParser on StacTextStyle {
  TextStyle? parse(BuildContext context) {
    switch (type) {
      case StacTextStyleType.theme:
        final themeStyle = (this as StacThemeTextStyle).textTheme;
        final textTheme = Theme.of(context).textTheme;
        switch (themeStyle) {
          case StacMaterialTextStyle.displayLarge:
            return textTheme.displayLarge;
          case StacMaterialTextStyle.displayMedium:
            return textTheme.displayMedium;
          case StacMaterialTextStyle.displaySmall:
            return textTheme.displaySmall;
          case StacMaterialTextStyle.headlineLarge:
            return textTheme.headlineLarge;
          case StacMaterialTextStyle.headlineMedium:
            return textTheme.headlineMedium;
          case StacMaterialTextStyle.headlineSmall:
            return textTheme.headlineSmall;
          case StacMaterialTextStyle.titleLarge:
            return textTheme.titleLarge;
          case StacMaterialTextStyle.titleMedium:
            return textTheme.titleMedium;
          case StacMaterialTextStyle.titleSmall:
            return textTheme.titleSmall;
          case StacMaterialTextStyle.bodyLarge:
            return textTheme.bodyLarge;
          case StacMaterialTextStyle.bodyMedium:
            return textTheme.bodyMedium;
          case StacMaterialTextStyle.bodySmall:
            return textTheme.bodySmall;
          case StacMaterialTextStyle.labelLarge:
            return textTheme.labelLarge;
          case StacMaterialTextStyle.labelMedium:
            return textTheme.labelMedium;
          case StacMaterialTextStyle.labelSmall:
            return textTheme.labelSmall;
        }
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

extension StacFontWeightParser on StacFontWeight {
  FontWeight get parse {
    switch (this) {
      case StacFontWeight.w100:
        return FontWeight.w100;
      case StacFontWeight.w200:
        return FontWeight.w200;
      case StacFontWeight.w300:
        return FontWeight.w300;
      case StacFontWeight.w400:
        return FontWeight.w400;
      case StacFontWeight.w500:
        return FontWeight.w500;
      case StacFontWeight.w600:
        return FontWeight.w600;
      case StacFontWeight.w700:
        return FontWeight.w700;
      case StacFontWeight.w800:
        return FontWeight.w800;
      case StacFontWeight.w900:
        return FontWeight.w900;
      case StacFontWeight.normal:
        return FontWeight.normal;
      case StacFontWeight.bold:
        return FontWeight.bold;
    }
  }
}

extension StacFontStyleParser on StacFontStyle {
  FontStyle get parse {
    switch (this) {
      case StacFontStyle.normal:
        return FontStyle.normal;
      case StacFontStyle.italic:
        return FontStyle.italic;
    }
  }
}

extension StacTextBaselineParser on StacTextBaseline {
  TextBaseline get parse {
    switch (this) {
      case StacTextBaseline.alphabetic:
        return TextBaseline.alphabetic;
      case StacTextBaseline.ideographic:
        return TextBaseline.ideographic;
    }
  }
}
