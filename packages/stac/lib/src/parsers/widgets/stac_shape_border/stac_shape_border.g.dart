// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_shape_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacShapeBorder _$StacShapeBorderFromJson(Map<String, dynamic> json) =>
    _StacShapeBorder(
      borderType: $enumDecode(_$StacShapeBorderTypeEnumMap, json['borderType']),
      data: json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$StacShapeBorderToJson(_StacShapeBorder instance) =>
    <String, dynamic>{
      'borderType': _$StacShapeBorderTypeEnumMap[instance.borderType]!,
      'data': instance.data,
    };

const _$StacShapeBorderTypeEnumMap = {
  StacShapeBorderType.circleBorder: 'circleBorder',
  StacShapeBorderType.roundedRectangleBorder: 'roundedRectangleBorder',
  StacShapeBorderType.continuousRectangleBorder: 'continuousRectangleBorder',
  StacShapeBorderType.beveledRectangleBorder: 'beveledRectangleBorder',
};
