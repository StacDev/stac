// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_box_shadow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacBoxShadow _$StacBoxShadowFromJson(Map<String, dynamic> json) =>
    _StacBoxShadow(
      color: json['color'] as String?,
      blurRadius: json['blurRadius'] == null
          ? StacDouble.zero
          : StacDouble.fromJson(json['blurRadius']),
      offset: json['offset'] == null
          ? const StacOffset(dx: StacDouble.zero, dy: StacDouble.zero)
          : StacOffset.fromJson(json['offset'] as Map<String, dynamic>),
      spreadRadius: json['spreadRadius'] == null
          ? StacDouble.zero
          : StacDouble.fromJson(json['spreadRadius']),
      blurStyle: $enumDecodeNullable(_$BlurStyleEnumMap, json['blurStyle']) ??
          BlurStyle.normal,
    );

Map<String, dynamic> _$StacBoxShadowToJson(_StacBoxShadow instance) =>
    <String, dynamic>{
      'color': instance.color,
      'blurRadius': instance.blurRadius,
      'offset': instance.offset,
      'spreadRadius': instance.spreadRadius,
      'blurStyle': _$BlurStyleEnumMap[instance.blurStyle],
    };

const _$BlurStyleEnumMap = {
  BlurStyle.normal: 'normal',
  BlurStyle.solid: 'solid',
  BlurStyle.outer: 'outer',
  BlurStyle.inner: 'inner',
};
