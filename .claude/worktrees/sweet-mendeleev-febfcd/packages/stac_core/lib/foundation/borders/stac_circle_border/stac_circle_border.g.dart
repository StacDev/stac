// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_circle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacCircleBorder _$StacCircleBorderFromJson(Map<String, dynamic> json) =>
    StacCircleBorder(
      side: json['side'] == null
          ? null
          : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      eccentricity: (json['eccentricity'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$StacCircleBorderToJson(StacCircleBorder instance) =>
    <String, dynamic>{
      'side': instance.side?.toJson(),
      'type': _$StacShapeBorderTypeEnumMap[instance.type]!,
      'eccentricity': instance.eccentricity,
    };

const _$StacShapeBorderTypeEnumMap = {
  StacShapeBorderType.circleBorder: 'circleBorder',
  StacShapeBorderType.roundedRectangleBorder: 'roundedRectangleBorder',
  StacShapeBorderType.continuousRectangleBorder: 'continuousRectangleBorder',
  StacShapeBorderType.beveledRectangleBorder: 'beveledRectangleBorder',
};
