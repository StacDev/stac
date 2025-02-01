// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_divider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacDividerImpl _$$StacDividerImplFromJson(Map<String, dynamic> json) =>
    _$StacDividerImpl(
      thickness: (json['thickness'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      color: json['color'] as String?,
    );

Map<String, dynamic> _$$StacDividerImplToJson(_$StacDividerImpl instance) =>
    <String, dynamic>{
      'thickness': instance.thickness,
      'height': instance.height,
      'color': instance.color,
    };
