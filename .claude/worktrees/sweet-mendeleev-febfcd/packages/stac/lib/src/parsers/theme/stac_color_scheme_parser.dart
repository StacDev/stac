import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/colors/stac_brightness_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

/// Parser extension for [StacColorScheme].
///
/// Converts [StacColorScheme] to Flutter's [ColorScheme].
extension StacColorSchemeParser on StacColorScheme {
  ColorScheme parse(BuildContext context) {
    return ColorScheme(
      brightness: brightness.parse,
      primary: primary.toColor(context)!,
      onPrimary: onPrimary.toColor(context)!,
      primaryContainer: primaryContainer?.toColor(context),
      onPrimaryContainer: onPrimaryContainer?.toColor(context),
      primaryFixed: primaryFixed?.toColor(context),
      primaryFixedDim: primaryFixedDim?.toColor(context),
      onPrimaryFixed: onPrimaryFixed?.toColor(context),
      onPrimaryFixedVariant: onPrimaryFixedVariant?.toColor(context),
      secondary: secondary.toColor(context)!,
      onSecondary: onSecondary.toColor(context)!,
      secondaryContainer: secondaryContainer?.toColor(context),
      onSecondaryContainer: onSecondaryContainer?.toColor(context),
      secondaryFixed: secondaryFixed?.toColor(context),
      secondaryFixedDim: secondaryFixedDim?.toColor(context),
      onSecondaryFixed: onSecondaryFixed?.toColor(context),
      onSecondaryFixedVariant: onSecondaryFixedVariant?.toColor(context),
      tertiary: tertiary?.toColor(context),
      onTertiary: onTertiary?.toColor(context),
      tertiaryContainer: tertiaryContainer?.toColor(context),
      onTertiaryContainer: onTertiaryContainer?.toColor(context),
      tertiaryFixed: tertiaryFixed?.toColor(context),
      tertiaryFixedDim: tertiaryFixedDim?.toColor(context),
      onTertiaryFixed: onTertiaryFixed?.toColor(context),
      onTertiaryFixedVariant: onTertiaryFixedVariant?.toColor(context),
      error: error.toColor(context)!,
      onError: onError.toColor(context)!,
      errorContainer: errorContainer?.toColor(context),
      onErrorContainer: onErrorContainer?.toColor(context),
      surface: surface.toColor(context)!,
      onSurface: onSurface.toColor(context)!,
      surfaceDim: surfaceDim?.toColor(context),
      surfaceBright: surfaceBright?.toColor(context),
      surfaceContainerLowest: surfaceContainerLowest?.toColor(context),
      surfaceContainerLow: surfaceContainerLow?.toColor(context),
      surfaceContainer: surfaceContainer?.toColor(context),
      surfaceContainerHigh: surfaceContainerHigh?.toColor(context),
      surfaceContainerHighest: surfaceContainerHighest?.toColor(context),
      onSurfaceVariant: onSurfaceVariant?.toColor(context),
      outline: outline?.toColor(context),
      outlineVariant: outlineVariant?.toColor(context),
      shadow: shadow?.toColor(context),
      scrim: scrim?.toColor(context),
      inverseSurface: inverseSurface?.toColor(context),
      onInverseSurface: onInverseSurface?.toColor(context),
      inversePrimary: inversePrimary?.toColor(context),
      surfaceTint: surfaceTint?.toColor(context),
    );
  }
}
