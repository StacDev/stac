// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_text_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacTextTheme _$StacTextThemeFromJson(Map<String, dynamic> json) =>
    _StacTextTheme(
      displayLarge: json['displayLarge'] == null
          ? null
          : StacTextStyle.fromJson(json['displayLarge']),
      displayMedium: json['displayMedium'] == null
          ? null
          : StacTextStyle.fromJson(json['displayMedium']),
      displaySmall: json['displaySmall'] == null
          ? null
          : StacTextStyle.fromJson(json['displaySmall']),
      headlineLarge: json['headlineLarge'] == null
          ? null
          : StacTextStyle.fromJson(json['headlineLarge']),
      headlineMedium: json['headlineMedium'] == null
          ? null
          : StacTextStyle.fromJson(json['headlineMedium']),
      headlineSmall: json['headlineSmall'] == null
          ? null
          : StacTextStyle.fromJson(json['headlineSmall']),
      titleLarge: json['titleLarge'] == null
          ? null
          : StacTextStyle.fromJson(json['titleLarge']),
      titleMedium: json['titleMedium'] == null
          ? null
          : StacTextStyle.fromJson(json['titleMedium']),
      titleSmall: json['titleSmall'] == null
          ? null
          : StacTextStyle.fromJson(json['titleSmall']),
      bodyLarge: json['bodyLarge'] == null
          ? null
          : StacTextStyle.fromJson(json['bodyLarge']),
      bodyMedium: json['bodyMedium'] == null
          ? null
          : StacTextStyle.fromJson(json['bodyMedium']),
      bodySmall: json['bodySmall'] == null
          ? null
          : StacTextStyle.fromJson(json['bodySmall']),
      labelLarge: json['labelLarge'] == null
          ? null
          : StacTextStyle.fromJson(json['labelLarge']),
      labelMedium: json['labelMedium'] == null
          ? null
          : StacTextStyle.fromJson(json['labelMedium']),
      labelSmall: json['labelSmall'] == null
          ? null
          : StacTextStyle.fromJson(json['labelSmall']),
    );

Map<String, dynamic> _$StacTextThemeToJson(_StacTextTheme instance) =>
    <String, dynamic>{
      'displayLarge': instance.displayLarge,
      'displayMedium': instance.displayMedium,
      'displaySmall': instance.displaySmall,
      'headlineLarge': instance.headlineLarge,
      'headlineMedium': instance.headlineMedium,
      'headlineSmall': instance.headlineSmall,
      'titleLarge': instance.titleLarge,
      'titleMedium': instance.titleMedium,
      'titleSmall': instance.titleSmall,
      'bodyLarge': instance.bodyLarge,
      'bodyMedium': instance.bodyMedium,
      'bodySmall': instance.bodySmall,
      'labelLarge': instance.labelLarge,
      'labelMedium': instance.labelMedium,
      'labelSmall': instance.labelSmall,
    };
