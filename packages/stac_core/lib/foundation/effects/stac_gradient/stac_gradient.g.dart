// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_gradient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacGradient _$StacGradientFromJson(Map<String, dynamic> json) => StacGradient(
  gradientType: $enumDecodeNullable(
    _$StacGradientTypeEnumMap,
    json['gradientType'],
  ),
  colors: (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList(),
  stops: (json['stops'] as List<dynamic>?)
      ?.map((e) => (e as num).toDouble())
      .toList(),
  begin: $enumDecodeNullable(_$StacAlignmentEnumMap, json['begin']),
  end: $enumDecodeNullable(_$StacAlignmentEnumMap, json['end']),
  center: $enumDecodeNullable(_$StacAlignmentEnumMap, json['center']),
  focal: $enumDecodeNullable(_$StacAlignmentEnumMap, json['focal']),
  tileMode: $enumDecodeNullable(_$StacTileModeEnumMap, json['tileMode']),
  focalRadius: (json['focalRadius'] as num?)?.toDouble(),
  radius: (json['radius'] as num?)?.toDouble(),
  startAngle: (json['startAngle'] as num?)?.toDouble(),
  endAngle: (json['endAngle'] as num?)?.toDouble(),
);

Map<String, dynamic> _$StacGradientToJson(StacGradient instance) =>
    <String, dynamic>{
      'gradientType': _$StacGradientTypeEnumMap[instance.gradientType],
      'colors': instance.colors,
      'stops': instance.stops,
      'begin': _$StacAlignmentEnumMap[instance.begin],
      'end': _$StacAlignmentEnumMap[instance.end],
      'center': _$StacAlignmentEnumMap[instance.center],
      'focal': _$StacAlignmentEnumMap[instance.focal],
      'tileMode': _$StacTileModeEnumMap[instance.tileMode],
      'focalRadius': instance.focalRadius,
      'radius': instance.radius,
      'startAngle': instance.startAngle,
      'endAngle': instance.endAngle,
    };

const _$StacGradientTypeEnumMap = {
  StacGradientType.linear: 'linear',
  StacGradientType.radial: 'radial',
  StacGradientType.sweep: 'sweep',
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

const _$StacTileModeEnumMap = {
  StacTileMode.clamp: 'clamp',
  StacTileMode.repeated: 'repeated',
  StacTileMode.mirror: 'mirror',
  StacTileMode.decal: 'decal',
};
