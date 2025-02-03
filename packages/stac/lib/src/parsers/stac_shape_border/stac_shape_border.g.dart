// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_shape_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacShapeBorderImpl _$$StacShapeBorderImplFromJson(
        Map<String, dynamic> json) =>
    _$StacShapeBorderImpl(
      borderType: $enumDecode(_$StacShapeBorderTypeEnumMap, json['borderType']),
      data: json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$StacShapeBorderImplToJson(
        _$StacShapeBorderImpl instance) =>
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
