// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_rect.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacRect _$StacRectFromJson(Map<String, dynamic> json) => StacRect(
  rectType: $enumDecode(_$StacRectTypeEnumMap, json['rectType']),
  left: const DoubleConverter().fromJson(json['left']),
  top: const DoubleConverter().fromJson(json['top']),
  right: const DoubleConverter().fromJson(json['right']),
  bottom: const DoubleConverter().fromJson(json['bottom']),
  width: const DoubleConverter().fromJson(json['width']),
  height: const DoubleConverter().fromJson(json['height']),
  center: json['center'] == null
      ? null
      : StacOffset.fromJson(json['center'] as Map<String, dynamic>),
  radius: const DoubleConverter().fromJson(json['radius']),
  a: json['a'] == null
      ? null
      : StacOffset.fromJson(json['a'] as Map<String, dynamic>),
  b: json['b'] == null
      ? null
      : StacOffset.fromJson(json['b'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacRectToJson(StacRect instance) => <String, dynamic>{
  'rectType': _$StacRectTypeEnumMap[instance.rectType]!,
  'left': const DoubleConverter().toJson(instance.left),
  'top': const DoubleConverter().toJson(instance.top),
  'right': const DoubleConverter().toJson(instance.right),
  'bottom': const DoubleConverter().toJson(instance.bottom),
  'width': const DoubleConverter().toJson(instance.width),
  'height': const DoubleConverter().toJson(instance.height),
  'center': instance.center?.toJson(),
  'radius': const DoubleConverter().toJson(instance.radius),
  'a': instance.a?.toJson(),
  'b': instance.b?.toJson(),
};

const _$StacRectTypeEnumMap = {
  StacRectType.fromCenter: 'fromCenter',
  StacRectType.fromCircle: 'fromCircle',
  StacRectType.fromLTRB: 'fromLTRB',
  StacRectType.fromLTWH: 'fromLTWH',
  StacRectType.fromPoints: 'fromPoints',
};
