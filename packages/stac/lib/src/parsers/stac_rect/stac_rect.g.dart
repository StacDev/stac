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
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      left: (json['left'] as num?)?.toDouble(),
      top: (json['top'] as num?)?.toDouble(),
      right: (json['right'] as num?)?.toDouble(),
      bottom: (json['bottom'] as num?)?.toDouble(),
      radius: (json['radius'] as num?)?.toDouble(),
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
