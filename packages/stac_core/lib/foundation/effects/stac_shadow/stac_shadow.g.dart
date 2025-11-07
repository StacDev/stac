// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_shadow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacShadow _$StacShadowFromJson(Map<String, dynamic> json) => StacShadow(
  color: json['color'] as String?,
  offset: json['offset'] == null
      ? null
      : StacOffset.fromJson(json['offset'] as Map<String, dynamic>),
  blurRadius: const DoubleConverter().fromJson(json['blurRadius']),
);

Map<String, dynamic> _$StacShadowToJson(StacShadow instance) =>
    <String, dynamic>{
      'color': instance.color,
      'offset': instance.offset?.toJson(),
      'blurRadius': const DoubleConverter().toJson(instance.blurRadius),
    };
