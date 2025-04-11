// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_system_ui_overlay_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacSystemUIOverlayStyle _$StacSystemUIOverlayStyleFromJson(
        Map<String, dynamic> json) =>
    _StacSystemUIOverlayStyle(
      systemNavigationBarColor: json['systemNavigationBarColor'] as String?,
      systemNavigationBarDividerColor:
          json['systemNavigationBarDividerColor'] as String?,
      systemNavigationBarIconBrightness: $enumDecodeNullable(
          _$BrightnessEnumMap, json['systemNavigationBarIconBrightness']),
      systemNavigationBarContrastEnforced:
          json['systemNavigationBarContrastEnforced'] as bool?,
      statusBarColor: json['statusBarColor'] as String?,
      statusBarBrightness:
          $enumDecodeNullable(_$BrightnessEnumMap, json['statusBarBrightness']),
      statusBarIconBrightness: $enumDecodeNullable(
          _$BrightnessEnumMap, json['statusBarIconBrightness']),
      systemStatusBarContrastEnforced:
          json['systemStatusBarContrastEnforced'] as bool?,
    );

Map<String, dynamic> _$StacSystemUIOverlayStyleToJson(
        _StacSystemUIOverlayStyle instance) =>
    <String, dynamic>{
      'systemNavigationBarColor': instance.systemNavigationBarColor,
      'systemNavigationBarDividerColor':
          instance.systemNavigationBarDividerColor,
      'systemNavigationBarIconBrightness':
          _$BrightnessEnumMap[instance.systemNavigationBarIconBrightness],
      'systemNavigationBarContrastEnforced':
          instance.systemNavigationBarContrastEnforced,
      'statusBarColor': instance.statusBarColor,
      'statusBarBrightness': _$BrightnessEnumMap[instance.statusBarBrightness],
      'statusBarIconBrightness':
          _$BrightnessEnumMap[instance.statusBarIconBrightness],
      'systemStatusBarContrastEnforced':
          instance.systemStatusBarContrastEnforced,
    };

const _$BrightnessEnumMap = {
  Brightness.dark: 'dark',
  Brightness.light: 'light',
};
