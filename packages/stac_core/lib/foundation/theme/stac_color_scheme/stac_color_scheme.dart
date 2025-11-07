import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/colors/stac_brightness.dart';

part 'stac_color_scheme.g.dart';

/// A Stac model representing Flutter's [ColorScheme].
///
/// Defines the color scheme for the application theme, including primary,
/// secondary, tertiary, error, surface, and outline colors with their variants.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacColorScheme(
///   brightness: Brightness.light,
///   primary: '#2196F3',
///   onPrimary: '#FFFFFF',
///   secondary: '#03DAC6',
///   onSecondary: '#000000',
///   error: '#B00020',
///   onError: '#FFFFFF',
///   surface: '#FFFFFF',
///   onSurface: '#000000',
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "brightness": "light",
///   "primary": "#2196F3",
///   "onPrimary": "#FFFFFF",
///   "secondary": "#03DAC6",
///   "onSecondary": "#000000",
///   "error": "#B00020",
///   "onError": "#FFFFFF",
///   "surface": "#FFFFFF",
///   "onSurface": "#000000"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacColorScheme implements StacElement {
  /// Creates a [StacColorScheme] with the given properties.
  const StacColorScheme({
    required this.brightness,
    required this.primary,
    required this.onPrimary,
    this.primaryContainer,
    this.onPrimaryContainer,
    this.primaryFixed,
    this.primaryFixedDim,
    this.onPrimaryFixed,
    this.onPrimaryFixedVariant,
    required this.secondary,
    required this.onSecondary,
    this.secondaryContainer,
    this.onSecondaryContainer,
    this.secondaryFixed,
    this.secondaryFixedDim,
    this.onSecondaryFixed,
    this.onSecondaryFixedVariant,
    this.tertiary,
    this.onTertiary,
    this.tertiaryContainer,
    this.onTertiaryContainer,
    this.tertiaryFixed,
    this.tertiaryFixedDim,
    this.onTertiaryFixed,
    this.onTertiaryFixedVariant,
    required this.error,
    required this.onError,
    this.errorContainer,
    this.onErrorContainer,
    required this.surface,
    required this.onSurface,
    this.surfaceDim,
    this.surfaceBright,
    this.surfaceContainerLowest,
    this.surfaceContainerLow,
    this.surfaceContainer,
    this.surfaceContainerHigh,
    this.surfaceContainerHighest,
    this.onSurfaceVariant,
    this.outline,
    this.outlineVariant,
    this.shadow,
    this.scrim,
    this.inverseSurface,
    this.onInverseSurface,
    this.inversePrimary,
    this.surfaceTint,
  });

  /// The brightness of the color scheme (light or dark).
  final StacBrightness brightness;

  /// The primary color of the theme.
  final String primary;

  /// The color to use for content on top of the primary color.
  final String onPrimary;

  /// The container color for primary content.
  final String? primaryContainer;

  /// The color to use for content on top of the primary container.
  final String? onPrimaryContainer;

  /// The fixed primary color.
  final String? primaryFixed;

  /// The dimmed fixed primary color.
  final String? primaryFixedDim;

  /// The color to use for content on top of the fixed primary color.
  final String? onPrimaryFixed;

  /// The color to use for content on top of the fixed primary variant.
  final String? onPrimaryFixedVariant;

  /// The secondary color of the theme.
  final String secondary;

  /// The color to use for content on top of the secondary color.
  final String onSecondary;

  /// The container color for secondary content.
  final String? secondaryContainer;

  /// The color to use for content on top of the secondary container.
  final String? onSecondaryContainer;

  /// The fixed secondary color.
  final String? secondaryFixed;

  /// The dimmed fixed secondary color.
  final String? secondaryFixedDim;

  /// The color to use for content on top of the fixed secondary color.
  final String? onSecondaryFixed;

  /// The color to use for content on top of the fixed secondary variant.
  final String? onSecondaryFixedVariant;

  /// The tertiary color of the theme.
  final String? tertiary;

  /// The color to use for content on top of the tertiary color.
  final String? onTertiary;

  /// The container color for tertiary content.
  final String? tertiaryContainer;

  /// The color to use for content on top of the tertiary container.
  final String? onTertiaryContainer;

  /// The fixed tertiary color.
  final String? tertiaryFixed;

  /// The dimmed fixed tertiary color.
  final String? tertiaryFixedDim;

  /// The color to use for content on top of the fixed tertiary color.
  final String? onTertiaryFixed;

  /// The color to use for content on top of the fixed tertiary variant.
  final String? onTertiaryFixedVariant;

  /// The error color of the theme.
  final String error;

  /// The color to use for content on top of the error color.
  final String onError;

  /// The container color for error content.
  final String? errorContainer;

  /// The color to use for content on top of the error container.
  final String? onErrorContainer;

  /// The surface color of the theme.
  final String surface;

  /// The color to use for content on top of the surface color.
  final String onSurface;

  /// A dimmed version of the surface color.
  final String? surfaceDim;

  /// A bright version of the surface color.
  final String? surfaceBright;

  /// The lowest surface container color.
  final String? surfaceContainerLowest;

  /// A low surface container color.
  final String? surfaceContainerLow;

  /// The standard surface container color.
  final String? surfaceContainer;

  /// A high surface container color.
  final String? surfaceContainerHigh;

  /// The highest surface container color.
  final String? surfaceContainerHighest;

  /// The color to use for variant content on top of the surface.
  final String? onSurfaceVariant;

  /// The outline color.
  final String? outline;

  /// The variant outline color.
  final String? outlineVariant;

  /// The shadow color.
  final String? shadow;

  /// The scrim color.
  final String? scrim;

  /// The inverse surface color.
  final String? inverseSurface;

  /// The color to use for content on top of the inverse surface.
  final String? onInverseSurface;

  /// The inverse primary color.
  final String? inversePrimary;

  /// The surface tint color.
  final String? surfaceTint;

  /// Creates a [StacColorScheme] from JSON.
  factory StacColorScheme.fromJson(Map<String, dynamic> json) =>
      _$StacColorSchemeFromJson(json);

  /// Converts this color scheme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacColorSchemeToJson(this);
}
