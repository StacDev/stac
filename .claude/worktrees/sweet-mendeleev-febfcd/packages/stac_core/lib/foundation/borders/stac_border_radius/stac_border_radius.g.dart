// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_border_radius.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacBorderRadius _$StacBorderRadiusFromJson(Map<String, dynamic> json) =>
    StacBorderRadius(
      topLeft: (json['topLeft'] as num?)?.toDouble(),
      topRight: (json['topRight'] as num?)?.toDouble(),
      bottomLeft: (json['bottomLeft'] as num?)?.toDouble(),
      bottomRight: (json['bottomRight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$StacBorderRadiusToJson(StacBorderRadius instance) =>
    <String, dynamic>{
      'topLeft': instance.topLeft,
      'topRight': instance.topRight,
      'bottomLeft': instance.bottomLeft,
      'bottomRight': instance.bottomRight,
    };
