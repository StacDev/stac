// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_box_shadow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacBoxShadowImpl _$$StacBoxShadowImplFromJson(Map<String, dynamic> json) =>
    _$StacBoxShadowImpl(
      color: json['color'] as String?,
      blurRadius: (json['blurRadius'] as num?)?.toDouble() ?? 0.0,
      offset: json['offset'] == null
          ? const StacOffset(dx: 0, dy: 0)
          : StacOffset.fromJson(json['offset'] as Map<String, dynamic>),
      spreadRadius: (json['spreadRadius'] as num?)?.toDouble() ?? 0.0,
      blurStyle: $enumDecodeNullable(_$BlurStyleEnumMap, json['blurStyle']) ??
          BlurStyle.normal,
    );

Map<String, dynamic> _$$StacBoxShadowImplToJson(_$StacBoxShadowImpl instance) =>
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
