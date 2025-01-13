// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_shape_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiralShapeBorderImpl _$$MiralShapeBorderImplFromJson(
        Map<String, dynamic> json) =>
    _$MiralShapeBorderImpl(
      borderType:
          $enumDecode(_$MiraiShapeBorderTypeEnumMap, json['borderType']),
      data: json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$MiralShapeBorderImplToJson(
        _$MiralShapeBorderImpl instance) =>
    <String, dynamic>{
      'borderType': _$MiraiShapeBorderTypeEnumMap[instance.borderType]!,
      'data': instance.data,
    };

const _$MiraiShapeBorderTypeEnumMap = {
  MiraiShapeBorderType.circleBorder: 'circleBorder',
  MiraiShapeBorderType.roundedRectangleBorder: 'roundedRectangleBorder',
  MiraiShapeBorderType.continuousRectangleBorder: 'continuousRectangleBorder',
  MiraiShapeBorderType.beveledRectangleBorder: 'beveledRectangleBorder',
};
