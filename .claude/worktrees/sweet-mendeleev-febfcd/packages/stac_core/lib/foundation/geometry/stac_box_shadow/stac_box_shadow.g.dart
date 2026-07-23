// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_box_shadow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacBoxShadow _$StacBoxShadowFromJson(Map<String, dynamic> json) =>
    StacBoxShadow(
      color: json['color'] as String?,
      blurRadius: const DoubleConverter().fromJson(json['blurRadius']),
      offset: json['offset'] == null
          ? null
          : StacOffset.fromJson(json['offset'] as Map<String, dynamic>),
      spreadRadius: const DoubleConverter().fromJson(json['spreadRadius']),
      blurStyle: $enumDecodeNullable(_$StacBlurStyleEnumMap, json['blurStyle']),
    );

Map<String, dynamic> _$StacBoxShadowToJson(StacBoxShadow instance) =>
    <String, dynamic>{
      'color': instance.color,
      'blurRadius': const DoubleConverter().toJson(instance.blurRadius),
      'offset': instance.offset?.toJson(),
      'spreadRadius': const DoubleConverter().toJson(instance.spreadRadius),
      'blurStyle': _$StacBlurStyleEnumMap[instance.blurStyle],
    };

const _$StacBlurStyleEnumMap = {
  StacBlurStyle.normal: 'normal',
  StacBlurStyle.solid: 'solid',
  StacBlurStyle.outer: 'outer',
  StacBlurStyle.inner: 'inner',
};
