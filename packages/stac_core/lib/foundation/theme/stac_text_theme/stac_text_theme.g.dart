// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_text_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacTextTheme _$StacTextThemeFromJson(Map<String, dynamic> json) =>
    StacTextTheme(
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

Map<String, dynamic> _$StacTextThemeToJson(StacTextTheme instance) =>
    <String, dynamic>{
      'displayLarge': instance.displayLarge?.toJson(),
      'displayMedium': instance.displayMedium?.toJson(),
      'displaySmall': instance.displaySmall?.toJson(),
      'headlineLarge': instance.headlineLarge?.toJson(),
      'headlineMedium': instance.headlineMedium?.toJson(),
      'headlineSmall': instance.headlineSmall?.toJson(),
      'titleLarge': instance.titleLarge?.toJson(),
      'titleMedium': instance.titleMedium?.toJson(),
      'titleSmall': instance.titleSmall?.toJson(),
      'bodyLarge': instance.bodyLarge?.toJson(),
      'bodyMedium': instance.bodyMedium?.toJson(),
      'bodySmall': instance.bodySmall?.toJson(),
      'labelLarge': instance.labelLarge?.toJson(),
      'labelMedium': instance.labelMedium?.toJson(),
      'labelSmall': instance.labelSmall?.toJson(),
    };
