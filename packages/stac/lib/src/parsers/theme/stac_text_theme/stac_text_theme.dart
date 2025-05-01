import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/parsers.dart';

part 'stac_text_theme.freezed.dart';
part 'stac_text_theme.g.dart';

@freezed
abstract class StacTextTheme with _$StacTextTheme {
  const factory StacTextTheme({
    StacTextStyle? displayLarge,
    StacTextStyle? displayMedium,
    StacTextStyle? displaySmall,
    StacTextStyle? headlineLarge,
    StacTextStyle? headlineMedium,
    StacTextStyle? headlineSmall,
    StacTextStyle? titleLarge,
    StacTextStyle? titleMedium,
    StacTextStyle? titleSmall,
    StacTextStyle? bodyLarge,
    StacTextStyle? bodyMedium,
    StacTextStyle? bodySmall,
    StacTextStyle? labelLarge,
    StacTextStyle? labelMedium,
    StacTextStyle? labelSmall,
  }) = _StacTextTheme;

  factory StacTextTheme.fromJson(Map<String, dynamic> json) =>
      _$StacTextThemeFromJson(json);
}

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
