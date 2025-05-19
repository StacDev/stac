// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_gradient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacGradient _$StacGradientFromJson(Map<String, dynamic> json) =>
    _StacGradient(
      colors:
          (json['colors'] as List<dynamic>).map((e) => e as String).toList(),
      stops:
          (json['stops'] as List<dynamic>?)?.map(StacDouble.fromJson).toList(),
      begin: $enumDecodeNullable(_$StacAlignmentEnumMap, json['begin']) ??
          StacAlignment.centerLeft,
      end: $enumDecodeNullable(_$StacAlignmentEnumMap, json['end']) ??
          StacAlignment.centerRight,
      center: $enumDecodeNullable(_$StacAlignmentEnumMap, json['center']) ??
          StacAlignment.center,
      gradientType: $enumDecodeNullable(
              _$StacGradientTypeEnumMap, json['gradientType']) ??
          StacGradientType.linear,
      focal: json['focal'] == null
          ? null
          : StacAlignmentGeometry.fromJson(
              json['focal'] as Map<String, dynamic>),
      tileMode: $enumDecodeNullable(_$TileModeEnumMap, json['tileMode']) ??
          TileMode.clamp,
      focalRadius: json['focalRadius'] == null
          ? StacDouble.zero
          : StacDouble.fromJson(json['focalRadius']),
      radius: json['radius'] == null
          ? const StacDouble(0.5)
          : StacDouble.fromJson(json['radius']),
      startAngle: json['startAngle'] == null
          ? StacDouble.zero
          : StacDouble.fromJson(json['startAngle']),
      endAngle: json['endAngle'] == null
          ? const StacDouble(math.pi * 2)
          : StacDouble.fromJson(json['endAngle']),
    );

Map<String, dynamic> _$StacGradientToJson(_StacGradient instance) =>
    <String, dynamic>{
      'colors': instance.colors,
      'stops': instance.stops,
      'begin': _$StacAlignmentEnumMap[instance.begin]!,
      'end': _$StacAlignmentEnumMap[instance.end]!,
      'center': _$StacAlignmentEnumMap[instance.center]!,
      'gradientType': _$StacGradientTypeEnumMap[instance.gradientType]!,
      'focal': instance.focal,
      'tileMode': _$TileModeEnumMap[instance.tileMode]!,
      'focalRadius': instance.focalRadius,
      'radius': instance.radius,
      'startAngle': instance.startAngle,
      'endAngle': instance.endAngle,
    };

const _$StacAlignmentEnumMap = {
  StacAlignment.topLeft: 'topLeft',
  StacAlignment.topCenter: 'topCenter',
  StacAlignment.topRight: 'topRight',
  StacAlignment.centerLeft: 'centerLeft',
  StacAlignment.center: 'center',
  StacAlignment.centerRight: 'centerRight',
  StacAlignment.bottomLeft: 'bottomLeft',
  StacAlignment.bottomCenter: 'bottomCenter',
  StacAlignment.bottomRight: 'bottomRight',
};

const _$StacGradientTypeEnumMap = {
  StacGradientType.linear: 'linear',
  StacGradientType.radial: 'radial',
  StacGradientType.sweep: 'sweep',
};

const _$TileModeEnumMap = {
  TileMode.clamp: 'clamp',
  TileMode.repeated: 'repeated',
  TileMode.mirror: 'mirror',
  TileMode.decal: 'decal',
};
