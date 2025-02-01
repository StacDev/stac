// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_border_radius.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacBorderImpl _$$StacBorderImplFromJson(Map<String, dynamic> json) =>
    _$StacBorderImpl(
      topLeft: (json['topLeft'] as num?)?.toDouble() ?? 0.0,
      topRight: (json['topRight'] as num?)?.toDouble() ?? 0.0,
      bottomLeft: (json['bottomLeft'] as num?)?.toDouble() ?? 0.0,
      bottomRight: (json['bottomRight'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$StacBorderImplToJson(_$StacBorderImpl instance) =>
    <String, dynamic>{
      'topLeft': instance.topLeft,
      'topRight': instance.topRight,
      'bottomLeft': instance.bottomLeft,
      'bottomRight': instance.bottomRight,
    };
