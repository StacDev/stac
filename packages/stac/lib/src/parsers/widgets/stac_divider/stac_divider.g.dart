// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_divider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacDivider _$StacDividerFromJson(Map<String, dynamic> json) => _StacDivider(
      thickness: (json['thickness'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      color: json['color'] as String?,
    );

Map<String, dynamic> _$StacDividerToJson(_StacDivider instance) =>
    <String, dynamic>{
      'thickness': instance.thickness,
      'height': instance.height,
      'color': instance.color,
    };
