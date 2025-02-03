// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_webview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacWebViewImpl _$$StacWebViewImplFromJson(Map<String, dynamic> json) =>
    _$StacWebViewImpl(
      url: json['url'] as String,
      javaScriptMode: $enumDecodeNullable(
              _$JavaScriptModeEnumMap, json['javaScriptMode']) ??
          JavaScriptMode.unrestricted,
      backgroundColor: json['backgroundColor'] as String? ?? "#FFFFFF",
      userAgent: json['userAgent'] as String?,
      enableZoom: json['enableZoom'] as bool? ?? false,
      layoutDirection: $enumDecodeNullable(
              _$TextDirectionEnumMap, json['layoutDirection']) ??
          TextDirection.ltr,
    );

Map<String, dynamic> _$$StacWebViewImplToJson(_$StacWebViewImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'javaScriptMode': _$JavaScriptModeEnumMap[instance.javaScriptMode]!,
      'backgroundColor': instance.backgroundColor,
      'userAgent': instance.userAgent,
      'enableZoom': instance.enableZoom,
      'layoutDirection': _$TextDirectionEnumMap[instance.layoutDirection]!,
    };

const _$JavaScriptModeEnumMap = {
  JavaScriptMode.disabled: 'disabled',
  JavaScriptMode.unrestricted: 'unrestricted',
};

const _$TextDirectionEnumMap = {
  TextDirection.rtl: 'rtl',
  TextDirection.ltr: 'ltr',
};
