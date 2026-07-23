// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_system_ui_overlay_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSystemUIOverlayStyle _$StacSystemUIOverlayStyleFromJson(
  Map<String, dynamic> json,
) => StacSystemUIOverlayStyle(
  systemNavigationBarColor: json['systemNavigationBarColor'] as String?,
  systemNavigationBarDividerColor:
      json['systemNavigationBarDividerColor'] as String?,
  systemNavigationBarIconBrightness: $enumDecodeNullable(
    _$StacBrightnessEnumMap,
    json['systemNavigationBarIconBrightness'],
  ),
  systemNavigationBarContrastEnforced:
      json['systemNavigationBarContrastEnforced'] as bool?,
  statusBarColor: json['statusBarColor'] as String?,
  statusBarBrightness: $enumDecodeNullable(
    _$StacBrightnessEnumMap,
    json['statusBarBrightness'],
  ),
  statusBarIconBrightness: $enumDecodeNullable(
    _$StacBrightnessEnumMap,
    json['statusBarIconBrightness'],
  ),
  systemStatusBarContrastEnforced:
      json['systemStatusBarContrastEnforced'] as bool?,
);

Map<String, dynamic> _$StacSystemUIOverlayStyleToJson(
  StacSystemUIOverlayStyle instance,
) => <String, dynamic>{
  'systemNavigationBarColor': instance.systemNavigationBarColor,
  'systemNavigationBarDividerColor': instance.systemNavigationBarDividerColor,
  'systemNavigationBarIconBrightness':
      _$StacBrightnessEnumMap[instance.systemNavigationBarIconBrightness],
  'systemNavigationBarContrastEnforced':
      instance.systemNavigationBarContrastEnforced,
  'statusBarColor': instance.statusBarColor,
  'statusBarBrightness': _$StacBrightnessEnumMap[instance.statusBarBrightness],
  'statusBarIconBrightness':
      _$StacBrightnessEnumMap[instance.statusBarIconBrightness],
  'systemStatusBarContrastEnforced': instance.systemStatusBarContrastEnforced,
};

const _$StacBrightnessEnumMap = {
  StacBrightness.light: 'light',
  StacBrightness.dark: 'dark',
  StacBrightness.system: 'system',
};
