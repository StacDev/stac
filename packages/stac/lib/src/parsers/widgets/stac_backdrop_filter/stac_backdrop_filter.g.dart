// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_backdrop_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacBackdropFilter _$StacBackdropFilterFromJson(Map<String, dynamic> json) =>
    _StacBackdropFilter(
      filter: StacImageFilter.fromJson(json['filter'] as Map<String, dynamic>),
      child: json['child'] as Map<String, dynamic>?,
      enabled: json['enabled'] as bool? ?? true,
      blendMode: $enumDecodeNullable(_$BlendModeEnumMap, json['blendMode']) ??
          BlendMode.srcOver,
    );

Map<String, dynamic> _$StacBackdropFilterToJson(_StacBackdropFilter instance) =>
    <String, dynamic>{
      'filter': instance.filter,
      'child': instance.child,
      'enabled': instance.enabled,
      'blendMode': _$BlendModeEnumMap[instance.blendMode]!,
    };

const _$BlendModeEnumMap = {
  BlendMode.clear: 'clear',
  BlendMode.src: 'src',
  BlendMode.dst: 'dst',
  BlendMode.srcOver: 'srcOver',
  BlendMode.dstOver: 'dstOver',
  BlendMode.srcIn: 'srcIn',
  BlendMode.dstIn: 'dstIn',
  BlendMode.srcOut: 'srcOut',
  BlendMode.dstOut: 'dstOut',
  BlendMode.srcATop: 'srcATop',
  BlendMode.dstATop: 'dstATop',
  BlendMode.xor: 'xor',
  BlendMode.plus: 'plus',
  BlendMode.modulate: 'modulate',
  BlendMode.screen: 'screen',
  BlendMode.overlay: 'overlay',
  BlendMode.darken: 'darken',
  BlendMode.lighten: 'lighten',
  BlendMode.colorDodge: 'colorDodge',
  BlendMode.colorBurn: 'colorBurn',
  BlendMode.hardLight: 'hardLight',
  BlendMode.softLight: 'softLight',
  BlendMode.difference: 'difference',
  BlendMode.exclusion: 'exclusion',
  BlendMode.multiply: 'multiply',
  BlendMode.hue: 'hue',
  BlendMode.saturation: 'saturation',
  BlendMode.color: 'color',
  BlendMode.luminosity: 'luminosity',
};
