// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_positioned.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacPositionedImpl _$$StacPositionedImplFromJson(Map<String, dynamic> json) =>
    _$StacPositionedImpl(
      positionedType: $enumDecodeNullable(
          _$StacPositionedTypeEnumMap, json['positionedType']),
      left: (json['left'] as num?)?.toDouble(),
      top: (json['top'] as num?)?.toDouble(),
      right: (json['right'] as num?)?.toDouble(),
      bottom: (json['bottom'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      start: (json['start'] as num?)?.toDouble(),
      end: (json['end'] as num?)?.toDouble(),
      textDirection:
          $enumDecodeNullable(_$TextDirectionEnumMap, json['textDirection']) ??
              TextDirection.ltr,
      rect: json['rect'] == null
          ? null
          : StacRect.fromJson(json['rect'] as Map<String, dynamic>),
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$StacPositionedImplToJson(
        _$StacPositionedImpl instance) =>
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
