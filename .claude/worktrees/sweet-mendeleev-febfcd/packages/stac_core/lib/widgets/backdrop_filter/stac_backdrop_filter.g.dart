// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_backdrop_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacBackdropFilter _$StacBackdropFilterFromJson(Map<String, dynamic> json) =>
    StacBackdropFilter(
      filter: StacImageFilter.fromJson(json['filter'] as Map<String, dynamic>),
      child: json['child'] == null
          ? null
          : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
      enabled: json['enabled'] as bool?,
      blendMode: $enumDecodeNullable(_$StacBlendModeEnumMap, json['blendMode']),
    );

Map<String, dynamic> _$StacBackdropFilterToJson(StacBackdropFilter instance) =>
    <String, dynamic>{
      'filter': instance.filter.toJson(),
      'child': instance.child?.toJson(),
      'enabled': instance.enabled,
      'blendMode': _$StacBlendModeEnumMap[instance.blendMode],
      'type': instance.type,
    };

const _$StacBlendModeEnumMap = {
  StacBlendMode.clear: 'clear',
  StacBlendMode.src: 'src',
  StacBlendMode.dst: 'dst',
  StacBlendMode.srcOver: 'srcOver',
  StacBlendMode.dstOver: 'dstOver',
  StacBlendMode.srcIn: 'srcIn',
  StacBlendMode.dstIn: 'dstIn',
  StacBlendMode.srcOut: 'srcOut',
  StacBlendMode.dstOut: 'dstOut',
  StacBlendMode.srcATop: 'srcATop',
  StacBlendMode.dstATop: 'dstATop',
  StacBlendMode.xor: 'xor',
  StacBlendMode.plus: 'plus',
  StacBlendMode.modulate: 'modulate',
  StacBlendMode.screen: 'screen',
  StacBlendMode.overlay: 'overlay',
  StacBlendMode.darken: 'darken',
  StacBlendMode.lighten: 'lighten',
  StacBlendMode.colorDodge: 'colorDodge',
  StacBlendMode.colorBurn: 'colorBurn',
  StacBlendMode.hardLight: 'hardLight',
  StacBlendMode.softLight: 'softLight',
  StacBlendMode.difference: 'difference',
  StacBlendMode.exclusion: 'exclusion',
  StacBlendMode.multiply: 'multiply',
  StacBlendMode.hue: 'hue',
  StacBlendMode.saturation: 'saturation',
  StacBlendMode.color: 'color',
  StacBlendMode.luminosity: 'luminosity',
};
