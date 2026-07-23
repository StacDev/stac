// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_box_decoration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacBoxDecoration _$StacBoxDecorationFromJson(Map<String, dynamic> json) =>
    StacBoxDecoration(
      color: json['color'] as String?,
      image: json['image'] == null
          ? null
          : StacDecorationImage.fromJson(json['image'] as Map<String, dynamic>),
      border: json['border'] == null
          ? null
          : StacBorder.fromJson(json['border'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? null
          : StacBorderRadius.fromJson(json['borderRadius']),
      boxShadow: (json['boxShadow'] as List<dynamic>?)
          ?.map((e) => StacBoxShadow.fromJson(e as Map<String, dynamic>))
          .toList(),
      gradient: json['gradient'] == null
          ? null
          : StacGradient.fromJson(json['gradient'] as Map<String, dynamic>),
      backgroundBlendMode: $enumDecodeNullable(
        _$StacBlendModeEnumMap,
        json['backgroundBlendMode'],
      ),
      shape: $enumDecodeNullable(_$StacBoxShapeEnumMap, json['shape']),
    );

Map<String, dynamic> _$StacBoxDecorationToJson(
  StacBoxDecoration instance,
) => <String, dynamic>{
  'color': instance.color,
  'image': instance.image?.toJson(),
  'border': instance.border?.toJson(),
  'borderRadius': instance.borderRadius?.toJson(),
  'boxShadow': instance.boxShadow?.map((e) => e.toJson()).toList(),
  'gradient': instance.gradient?.toJson(),
  'backgroundBlendMode': _$StacBlendModeEnumMap[instance.backgroundBlendMode],
  'shape': _$StacBoxShapeEnumMap[instance.shape],
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

const _$StacBoxShapeEnumMap = {
  StacBoxShape.rectangle: 'rectangle',
  StacBoxShape.circle: 'circle',
};
