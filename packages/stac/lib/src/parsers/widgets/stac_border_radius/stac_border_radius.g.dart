// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_border_radius.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacBorder _$StacBorderFromJson(Map<String, dynamic> json) => _StacBorder(
      topLeft: (json['topLeft'] as num?)?.toDouble() ?? 0.0,
      topRight: (json['topRight'] as num?)?.toDouble() ?? 0.0,
      bottomLeft: (json['bottomLeft'] as num?)?.toDouble() ?? 0.0,
      bottomRight: (json['bottomRight'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$StacBorderToJson(_StacBorder instance) =>
    <String, dynamic>{
      'topLeft': instance.topLeft,
      'topRight': instance.topRight,
      'bottomLeft': instance.bottomLeft,
      'bottomRight': instance.bottomRight,
    };
