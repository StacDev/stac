import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_color_scheme.freezed.dart';
part 'stac_color_scheme.g.dart';

@freezed
abstract class StacColorScheme with _$StacColorScheme {
  const factory StacColorScheme({
    required Brightness brightness,
    required String primary,
    required String onPrimary,
    String? primaryContainer,
    String? onPrimaryContainer,
    required String secondary,
    required String onSecondary,
    String? secondaryContainer,
    String? onSecondaryContainer,
    String? tertiary,
    String? onTertiary,
    String? tertiaryContainer,
    String? onTertiaryContainer,
    required String error,
    required String onError,
    String? errorContainer,
    String? onErrorContainer,
    String? background,
    String? onBackground,
    required String surface,
    required String onSurface,
    String? surfaceVariant,
    String? onSurfaceVariant,
    String? outline,
    String? outlineVariant,
    String? shadow,
    String? scrim,
    String? inverseSurface,
    String? onInverseSurface,
    String? inversePrimary,
    String? surfaceTint,
  }) = _StacColorScheme;

  factory StacColorScheme.fromJson(Map<String, dynamic> json) =>
      _$StacColorSchemeFromJson(json);
}

extension StacColorSchemeParser on StacColorScheme {
  ColorScheme parse(BuildContext context) {
    return ColorScheme(
      brightness: brightness,
      primary: primary.toColor(context)!,
      onPrimary: onPrimary.toColor(context)!,
      primaryContainer: primaryContainer.toColor(context),
      onPrimaryContainer: onPrimaryContainer.toColor(context),
      secondary: secondary.toColor(context)!,
      onSecondary: onSecondary.toColor(context)!,
      secondaryContainer: secondaryContainer.toColor(context),
      onSecondaryContainer: onSecondaryContainer.toColor(context),
      tertiary: tertiary.toColor(context),
      onTertiary: onTertiary.toColor(context),
      tertiaryContainer: tertiaryContainer.toColor(context),
      onTertiaryContainer: onTertiaryContainer.toColor(context),
      error: error.toColor(context)!,
      onError: onError.toColor(context)!,
      errorContainer: errorContainer.toColor(context),
      onErrorContainer: onErrorContainer.toColor(context),
      surface: surface.toColor(context)!,
      onSurface: onSurface.toColor(context)!,
      surfaceContainerHighest: surfaceVariant.toColor(context),
      onSurfaceVariant: onSurfaceVariant.toColor(context),
      outline: outline.toColor(context),
      outlineVariant: outlineVariant.toColor(context),
      shadow: shadow.toColor(context),
      scrim: scrim.toColor(context),
      inverseSurface: inverseSurface.toColor(context),
      onInverseSurface: onInverseSurface.toColor(context),
      inversePrimary: inversePrimary.toColor(context),
      surfaceTint: surfaceTint.toColor(context),
    );
  }
}
