// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_shadow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacShadowImpl _$$StacShadowImplFromJson(Map<String, dynamic> json) =>
    _$StacShadowImpl(
      color: json['color'] as String? ?? '#000000',
      offset: json['offset'] == null
          ? const StacOffset(dx: 0, dy: 0)
          : StacOffset.fromJson(json['offset'] as Map<String, dynamic>),
      blurRadius: (json['blurRadius'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$StacShadowImplToJson(_$StacShadowImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'offset': instance.offset,
      'blurRadius': instance.blurRadius,
    };
