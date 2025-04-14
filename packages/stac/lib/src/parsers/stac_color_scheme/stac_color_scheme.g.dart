// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_color_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacColorScheme _$StacColorSchemeFromJson(Map<String, dynamic> json) =>
    _StacColorScheme(
      brightness: $enumDecode(_$BrightnessEnumMap, json['brightness']),
      primary: json['primary'] as String,
      onPrimary: json['onPrimary'] as String,
      primaryContainer: json['primaryContainer'] as String?,
      onPrimaryContainer: json['onPrimaryContainer'] as String?,
      secondary: json['secondary'] as String,
      onSecondary: json['onSecondary'] as String,
      secondaryContainer: json['secondaryContainer'] as String?,
      onSecondaryContainer: json['onSecondaryContainer'] as String?,
      tertiary: json['tertiary'] as String?,
      onTertiary: json['onTertiary'] as String?,
      tertiaryContainer: json['tertiaryContainer'] as String?,
      onTertiaryContainer: json['onTertiaryContainer'] as String?,
      error: json['error'] as String,
      onError: json['onError'] as String,
      errorContainer: json['errorContainer'] as String?,
      onErrorContainer: json['onErrorContainer'] as String?,
      background: json['background'] as String?,
      onBackground: json['onBackground'] as String,
      surface: json['surface'] as String,
      onSurface: json['onSurface'] as String,
      surfaceVariant: json['surfaceVariant'] as String?,
      onSurfaceVariant: json['onSurfaceVariant'] as String?,
      outline: json['outline'] as String?,
      outlineVariant: json['outlineVariant'] as String?,
      shadow: json['shadow'] as String?,
      scrim: json['scrim'] as String?,
      inverseSurface: json['inverseSurface'] as String?,
      onInverseSurface: json['onInverseSurface'] as String?,
      inversePrimary: json['inversePrimary'] as String?,
      surfaceTint: json['surfaceTint'] as String?,
    );

Map<String, dynamic> _$StacColorSchemeToJson(_StacColorScheme instance) =>
    <String, dynamic>{
      'brightness': _$BrightnessEnumMap[instance.brightness]!,
      'primary': instance.primary,
      'onPrimary': instance.onPrimary,
      'primaryContainer': instance.primaryContainer,
      'onPrimaryContainer': instance.onPrimaryContainer,
      'secondary': instance.secondary,
      'onSecondary': instance.onSecondary,
      'secondaryContainer': instance.secondaryContainer,
      'onSecondaryContainer': instance.onSecondaryContainer,
      'tertiary': instance.tertiary,
      'onTertiary': instance.onTertiary,
      'tertiaryContainer': instance.tertiaryContainer,
      'onTertiaryContainer': instance.onTertiaryContainer,
      'error': instance.error,
      'onError': instance.onError,
      'errorContainer': instance.errorContainer,
      'onErrorContainer': instance.onErrorContainer,
      'background': instance.background,
      'onBackground': instance.onBackground,
      'surface': instance.surface,
      'onSurface': instance.onSurface,
      'surfaceVariant': instance.surfaceVariant,
      'onSurfaceVariant': instance.onSurfaceVariant,
      'outline': instance.outline,
      'outlineVariant': instance.outlineVariant,
      'shadow': instance.shadow,
      'scrim': instance.scrim,
      'inverseSurface': instance.inverseSurface,
      'onInverseSurface': instance.onInverseSurface,
      'inversePrimary': instance.inversePrimary,
      'surfaceTint': instance.surfaceTint,
    };

const _$BrightnessEnumMap = {
  Brightness.dark: 'dark',
  Brightness.light: 'light',
};
