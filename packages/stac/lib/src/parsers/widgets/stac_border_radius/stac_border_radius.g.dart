// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_border_radius.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacBorder _$StacBorderFromJson(Map<String, dynamic> json) => _StacBorder(
      topLeft: json['topLeft'] == null
          ? StacDouble.zero
          : StacDouble.fromJson(json['topLeft']),
      topRight: json['topRight'] == null
          ? StacDouble.zero
          : StacDouble.fromJson(json['topRight']),
      bottomLeft: json['bottomLeft'] == null
          ? StacDouble.zero
          : StacDouble.fromJson(json['bottomLeft']),
      bottomRight: json['bottomRight'] == null
          ? StacDouble.zero
          : StacDouble.fromJson(json['bottomRight']),
    );

Map<String, dynamic> _$StacBorderToJson(_StacBorder instance) =>
    <String, dynamic>{
      'topLeft': instance.topLeft,
      'topRight': instance.topRight,
      'bottomLeft': instance.bottomLeft,
      'bottomRight': instance.bottomRight,
    };
