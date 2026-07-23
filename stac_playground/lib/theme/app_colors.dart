import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.brightness,
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.background,
    required this.onBackground,
    required this.onBackground2,
    required this.onBackground3,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.error,
    required this.onError,
    required this.success,
    required this.onSuccess,
    required this.warning,
    required this.onWarning,
    required this.outline,
    required this.outline2,
    required this.primaryGradient,
    required this.backgroundGradient,
    required this.cardGradient,
    required this.lineGradient,
  });

  final Brightness brightness;
  final Color primary;
  final Color onPrimary;
  final Color secondary;
  final Color onSecondary;
  final Color background;
  final Color onBackground;
  final Color onBackground2;
  final Color onBackground3;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color error;
  final Color onError;
  final Color success;
  final Color onSuccess;
  final Color warning;
  final Color onWarning;
  final Color outline;
  final Color outline2;
  final LinearGradient primaryGradient;
  final LinearGradient backgroundGradient;
  final LinearGradient cardGradient;
  final LinearGradient lineGradient;

  @override
  ThemeExtension<AppColors> copyWith({
    Brightness? brightness,
    Color? primary,
    Color? onPrimary,
    Color? secondary,
    Color? onSecondary,
    Color? background,
    Color? onBackground,
    Color? onBackground2,
    Color? onBackground3,
    Color? surface,
    Color? onSurface,
    Color? surfaceVariant,
    Color? onSurfaceVariant,
    Color? error,
    Color? onError,
    Color? success,
    Color? onSuccess,
    Color? warning,
    Color? onWarning,
    Color? outline,
    Color? outline2,
    LinearGradient? primaryGradient,
    LinearGradient? backgroundGradient,
    LinearGradient? cardGradient,
    LinearGradient? lineGradient,
  }) {
    return AppColors(
      brightness: brightness ?? this.brightness,
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      background: background ?? this.background,
      onBackground: onBackground ?? this.onBackground,
      onBackground2: onBackground2 ?? this.onBackground2,
      onBackground3: onBackground3 ?? this.onBackground3,
      surface: surface ?? this.surface,
      onSurface: onSurface ?? this.onSurface,
      surfaceVariant: surfaceVariant ?? this.surfaceVariant,
      onSurfaceVariant: onSurfaceVariant ?? this.onSurfaceVariant,
      error: error ?? this.error,
      onError: onError ?? this.onError,
      success: success ?? this.success,
      onSuccess: onSuccess ?? this.onSuccess,
      warning: warning ?? this.warning,
      onWarning: onWarning ?? this.onWarning,
      outline: outline ?? this.outline,
      outline2: outline2 ?? this.outline2,
      primaryGradient: primaryGradient ?? this.primaryGradient,
      backgroundGradient: backgroundGradient ?? this.backgroundGradient,
      cardGradient: cardGradient ?? this.cardGradient,
      lineGradient: lineGradient ?? this.lineGradient,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }

    return AppColors(
      brightness: brightness,
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t) ?? onPrimary,
      secondary: Color.lerp(secondary, other.secondary, t) ?? secondary,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t) ?? onSecondary,
      background: Color.lerp(background, other.background, t) ?? background,
      onBackground:
          Color.lerp(onBackground, other.onBackground, t) ?? onBackground,
      onBackground2:
          Color.lerp(onBackground2, other.onBackground2, t) ?? onBackground2,
      onBackground3:
          Color.lerp(onBackground3, other.onBackground3, t) ?? onBackground3,
      surface: Color.lerp(surface, other.surface, t) ?? surface,
      onSurface: Color.lerp(onSurface, other.onSurface, t) ?? onSurface,
      surfaceVariant:
          Color.lerp(surfaceVariant, other.surfaceVariant, t) ?? surfaceVariant,
      onSurfaceVariant:
          Color.lerp(onSurfaceVariant, other.onSurfaceVariant, t) ??
              onSurfaceVariant,
      error: Color.lerp(error, other.error, t) ?? error,
      onError: Color.lerp(onError, other.onError, t) ?? onError,
      success: Color.lerp(success, other.success, t) ?? success,
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t) ?? onSuccess,
      warning: Color.lerp(warning, other.warning, t) ?? warning,
      onWarning: Color.lerp(onWarning, other.onWarning, t) ?? onWarning,
      outline: Color.lerp(outline, other.outline, t) ?? outline,
      outline2: Color.lerp(outline2, other.outline2, t) ?? outline2,
      primaryGradient:
          LinearGradient.lerp(primaryGradient, other.primaryGradient, t) ??
              primaryGradient,
      backgroundGradient: LinearGradient.lerp(
              backgroundGradient, other.backgroundGradient, t) ??
          backgroundGradient,
      cardGradient: LinearGradient.lerp(cardGradient, other.cardGradient, t) ??
          cardGradient,
      lineGradient: LinearGradient.lerp(lineGradient, other.lineGradient, t) ??
          lineGradient,
    );
  }
}
