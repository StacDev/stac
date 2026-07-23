// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_webview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacWebView _$StacWebViewFromJson(Map<String, dynamic> json) => StacWebView(
      url: json['url'] as String,
      javaScriptMode:
          $enumDecodeNullable(_$JavaScriptModeEnumMap, json['javaScriptMode']),
      backgroundColor: json['backgroundColor'] as String?,
      userAgent: json['userAgent'] as String?,
      enableZoom: json['enableZoom'] as bool?,
      layoutDirection:
          $enumDecodeNullable(_$TextDirectionEnumMap, json['layoutDirection']),
    );

Map<String, dynamic> _$StacWebViewToJson(StacWebView instance) =>
    <String, dynamic>{
      'url': instance.url,
      'javaScriptMode': _$JavaScriptModeEnumMap[instance.javaScriptMode],
      'backgroundColor': instance.backgroundColor,
      'userAgent': instance.userAgent,
      'enableZoom': instance.enableZoom,
      'layoutDirection': _$TextDirectionEnumMap[instance.layoutDirection],
      'type': instance.type,
    };

const _$JavaScriptModeEnumMap = {
  JavaScriptMode.disabled: 'disabled',
  JavaScriptMode.unrestricted: 'unrestricted',
};

const _$TextDirectionEnumMap = {
  TextDirection.rtl: 'rtl',
  TextDirection.ltr: 'ltr',
};
