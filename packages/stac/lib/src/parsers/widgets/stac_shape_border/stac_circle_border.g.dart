// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_circle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacCircleBorder _$StacCircleBorderFromJson(Map<String, dynamic> json) =>
    _StacCircleBorder(
      side: json['side'] == null
          ? StacBorderSide.none
          : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      eccentricity: json['eccentricity'] == null
          ? StacDouble.zero
          : StacDouble.fromJson(json['eccentricity']),
    );

Map<String, dynamic> _$StacCircleBorderToJson(_StacCircleBorder instance) =>
    <String, dynamic>{
      'side': instance.side,
      'eccentricity': instance.eccentricity,
    };
