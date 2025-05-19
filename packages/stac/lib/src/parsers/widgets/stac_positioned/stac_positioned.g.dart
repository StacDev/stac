// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_positioned.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacPositioned _$StacPositionedFromJson(Map<String, dynamic> json) =>
    _StacPositioned(
      positionedType: $enumDecodeNullable(
          _$StacPositionedTypeEnumMap, json['positionedType']),
      left: json['left'] == null ? null : StacDouble.fromJson(json['left']),
      top: json['top'] == null ? null : StacDouble.fromJson(json['top']),
      right: json['right'] == null ? null : StacDouble.fromJson(json['right']),
      bottom:
          json['bottom'] == null ? null : StacDouble.fromJson(json['bottom']),
      width: json['width'] == null ? null : StacDouble.fromJson(json['width']),
      height:
          json['height'] == null ? null : StacDouble.fromJson(json['height']),
      start: json['start'] == null ? null : StacDouble.fromJson(json['start']),
      end: json['end'] == null ? null : StacDouble.fromJson(json['end']),
      textDirection:
          $enumDecodeNullable(_$TextDirectionEnumMap, json['textDirection']) ??
              TextDirection.ltr,
      rect: json['rect'] == null
          ? null
          : StacRect.fromJson(json['rect'] as Map<String, dynamic>),
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacPositionedToJson(_StacPositioned instance) =>
    <String, dynamic>{
      'positionedType': _$StacPositionedTypeEnumMap[instance.positionedType],
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
      'width': instance.width,
      'height': instance.height,
      'start': instance.start,
      'end': instance.end,
      'textDirection': _$TextDirectionEnumMap[instance.textDirection]!,
      'rect': instance.rect,
      'child': instance.child,
    };

const _$StacPositionedTypeEnumMap = {
  StacPositionedType.directional: 'directional',
  StacPositionedType.fill: 'fill',
  StacPositionedType.fromRect: 'fromRect',
};

const _$TextDirectionEnumMap = {
  TextDirection.rtl: 'rtl',
  TextDirection.ltr: 'ltr',
};
