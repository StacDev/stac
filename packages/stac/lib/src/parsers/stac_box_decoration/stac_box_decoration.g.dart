// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_box_decoration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacBoxDecoration _$StacBoxDecorationFromJson(Map<String, dynamic> json) =>
    _StacBoxDecoration(
      color: json['color'] as String?,
      backgroundBlendMode:
          $enumDecodeNullable(_$BlendModeEnumMap, json['backgroundBlendMode']),
      boxShadow: (json['boxShadow'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : StacBoxShadow.fromJson(e as Map<String, dynamic>))
          .toList(),
      shape: $enumDecodeNullable(_$BoxShapeEnumMap, json['shape']) ??
          BoxShape.rectangle,
      border: json['border'] == null
          ? null
          : StacBorder.fromJson(json['border'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? null
          : StacBorderRadius.fromJson(json['borderRadius']),
      image: json['image'] == null
          ? null
          : StacDecorationImage.fromJson(json['image'] as Map<String, dynamic>),
      gradient: json['gradient'] == null
          ? null
          : StacGradient.fromJson(json['gradient'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacBoxDecorationToJson(_StacBoxDecoration instance) =>
    <String, dynamic>{
      'color': instance.color,
      'backgroundBlendMode': _$BlendModeEnumMap[instance.backgroundBlendMode],
      'boxShadow': instance.boxShadow,
      'shape': _$BoxShapeEnumMap[instance.shape]!,
      'border': instance.border,
      'borderRadius': instance.borderRadius,
      'image': instance.image,
      'gradient': instance.gradient,
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

const _$BoxShapeEnumMap = {
  BoxShape.rectangle: 'rectangle',
  BoxShape.circle: 'circle',
};
