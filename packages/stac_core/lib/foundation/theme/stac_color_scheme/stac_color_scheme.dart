import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';

part 'stac_color_scheme.g.dart';

/// A Stac model representing Flutter's [ColorScheme].
///
/// Defines the color scheme for the application theme.
@JsonSerializable()
class StacColorScheme implements StacElement {
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

  final Brightness brightness;
  final String primary;
  final String onPrimary;
  final String? primaryContainer;
  final String? onPrimaryContainer;
  final String? primaryFixed;
  final String? primaryFixedDim;
  final String? onPrimaryFixed;
  final String? onPrimaryFixedVariant;
  final String secondary;
  final String onSecondary;
  final String? secondaryContainer;
  final String? onSecondaryContainer;
  final String? secondaryFixed;
  final String? secondaryFixedDim;
  final String? onSecondaryFixed;
  final String? onSecondaryFixedVariant;
  final String? tertiary;
  final String? onTertiary;
  final String? tertiaryContainer;
  final String? onTertiaryContainer;
  final String? tertiaryFixed;
  final String? tertiaryFixedDim;
  final String? onTertiaryFixed;
  final String? onTertiaryFixedVariant;
  final String error;
  final String onError;
  final String? errorContainer;
  final String? onErrorContainer;
  final String surface;
  final String onSurface;
  final String? surfaceDim;
  final String? surfaceBright;
  final String? surfaceContainerLowest;
  final String? surfaceContainerLow;
  final String? surfaceContainer;
  final String? surfaceContainerHigh;
  final String? surfaceContainerHighest;
  final String? onSurfaceVariant;
  final String? outline;
  final String? outlineVariant;
  final String? shadow;
  final String? scrim;
  final String? inverseSurface;
  final String? onInverseSurface;
  final String? inversePrimary;
  final String? surfaceTint;

  factory StacColorScheme.fromJson(Map<String, dynamic> json) =>
      _$StacColorSchemeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacColorSchemeToJson(this);
}
