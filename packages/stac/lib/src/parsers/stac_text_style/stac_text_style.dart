import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_font_weight/stac_font_weight.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_text_style.freezed.dart';
part 'stac_text_style.g.dart';

@freezed
class StacTextStyle with _$StacTextStyle {
  const factory StacTextStyle({
    @Default(true) bool inherit,
    String? color,
    String? backgroundColor,
    String? styleFromTheme,
    double? fontSize,
    StacFontWeight? fontWeight,
    FontStyle? fontStyle,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
  }) = _StacTextStyle;

  factory StacTextStyle.fromJson(dynamic json) => _fromJson(json);

  static StacTextStyle _fromJson(dynamic json) {
    if (json is String) {
      return _$StacTextStyleFromJson({"styleFromTheme": json});
    } else if (json is Map<String, dynamic>) {
      return _$StacTextStyleFromJson(json);
    }

    return _$StacTextStyleFromJson({});
  }
}

extension StacTextStyleParser on StacTextStyle {
  TextStyle? parse(BuildContext context) {
    if (styleFromTheme != null) {
      switch (styleFromTheme) {
        case 'displayLarge':
          return Theme.of(context).textTheme.displayLarge;
        case 'displayMedium':
          return Theme.of(context).textTheme.displayMedium;
        case 'displaySmall':
          return Theme.of(context).textTheme.displaySmall;
        case 'headlineLarge':
          return Theme.of(context).textTheme.headlineLarge;
        case 'headlineMedium':
          return Theme.of(context).textTheme.headlineMedium;
        case 'headlineSmall':
          return Theme.of(context).textTheme.headlineSmall;
        case 'titleLarge':
          return Theme.of(context).textTheme.titleLarge;
        case 'titleMedium':
          return Theme.of(context).textTheme.titleMedium;
        case 'titleSmall':
          return Theme.of(context).textTheme.titleSmall;
        case 'bodyLarge':
          return Theme.of(context).textTheme.bodyLarge;
        case 'bodyMedium':
          return Theme.of(context).textTheme.bodyMedium;
        case 'bodySmall':
          return Theme.of(context).textTheme.bodySmall;
        case 'labelLarge':
          return Theme.of(context).textTheme.labelLarge;
        case 'labelMedium':
          return Theme.of(context).textTheme.labelMedium;
        case 'labelSmall':
          return Theme.of(context).textTheme.labelSmall;
      }
    }

    return TextStyle(
      inherit: inherit,
      color: color?.toColor(context),
      backgroundColor: backgroundColor.toColor(context),
      fontSize: fontSize,
      fontWeight: fontWeight?.value,
      fontStyle: fontStyle,
      fontFamily: fontFamily,
      fontFamilyFallback: fontFamilyFallback,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
    );
  }
}
