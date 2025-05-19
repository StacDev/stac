// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_rect.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacRect _$StacRectFromJson(Map<String, dynamic> json) => _StacRect(
      rectType: $enumDecode(_$StacRectTypeEnumMap, json['rectType']),
      center: json['center'] == null
          ? null
          : StacOffset.fromJson(json['center'] as Map<String, dynamic>),
      a: json['a'] == null
          ? null
          : StacOffset.fromJson(json['a'] as Map<String, dynamic>),
      b: json['b'] == null
          ? null
          : StacOffset.fromJson(json['b'] as Map<String, dynamic>),
      width: json['width'] == null ? null : StacDouble.fromJson(json['width']),
      height:
          json['height'] == null ? null : StacDouble.fromJson(json['height']),
      left: json['left'] == null ? null : StacDouble.fromJson(json['left']),
      top: json['top'] == null ? null : StacDouble.fromJson(json['top']),
      right: json['right'] == null ? null : StacDouble.fromJson(json['right']),
      bottom:
          json['bottom'] == null ? null : StacDouble.fromJson(json['bottom']),
      radius:
          json['radius'] == null ? null : StacDouble.fromJson(json['radius']),
    );

Map<String, dynamic> _$StacRectToJson(_StacRect instance) => <String, dynamic>{
      'rectType': _$StacRectTypeEnumMap[instance.rectType]!,
      'center': instance.center,
      'a': instance.a,
      'b': instance.b,
      'width': instance.width,
      'height': instance.height,
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
      'radius': instance.radius,
    };

const _$StacRectTypeEnumMap = {
  StacRectType.fromCenter: 'fromCenter',
  StacRectType.fromCircle: 'fromCircle',
  StacRectType.fromLTRB: 'fromLTRB',
  StacRectType.fromLTWH: 'fromLTWH',
  StacRectType.fromPoints: 'fromPoints',
};
