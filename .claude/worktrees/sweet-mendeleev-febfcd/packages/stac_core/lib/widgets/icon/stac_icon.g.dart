// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_icon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacIcon _$StacIconFromJson(Map<String, dynamic> json) => StacIcon(
  icon: json['icon'] as String,
  iconType:
      $enumDecodeNullable(_$StacIconTypeEnumMap, json['iconType']) ??
      StacIconType.material,
  size: const DoubleConverter().fromJson(json['size']),
  fill: const DoubleConverter().fromJson(json['fill']),
  weight: const DoubleConverter().fromJson(json['weight']),
  grade: const DoubleConverter().fromJson(json['grade']),
  opticalSize: const DoubleConverter().fromJson(json['opticalSize']),
  color: json['color'] as String?,
  shadows: (json['shadows'] as List<dynamic>?)
      ?.map((e) => StacShadow.fromJson(e as Map<String, dynamic>))
      .toList(),
  semanticLabel: json['semanticLabel'] as String?,
  textDirection: $enumDecodeNullable(
    _$StacTextDirectionEnumMap,
    json['textDirection'],
  ),
  applyTextScaling: json['applyTextScaling'] as bool?,
  blendMode: $enumDecodeNullable(_$StacBlendModeEnumMap, json['blendMode']),
);

Map<String, dynamic> _$StacIconToJson(StacIcon instance) => <String, dynamic>{
  'icon': instance.icon,
  'iconType': _$StacIconTypeEnumMap[instance.iconType]!,
  'size': const DoubleConverter().toJson(instance.size),
  'fill': const DoubleConverter().toJson(instance.fill),
  'weight': const DoubleConverter().toJson(instance.weight),
  'grade': const DoubleConverter().toJson(instance.grade),
  'opticalSize': const DoubleConverter().toJson(instance.opticalSize),
  'color': instance.color,
  'shadows': instance.shadows?.map((e) => e.toJson()).toList(),
  'semanticLabel': instance.semanticLabel,
  'textDirection': _$StacTextDirectionEnumMap[instance.textDirection],
  'applyTextScaling': instance.applyTextScaling,
  'blendMode': _$StacBlendModeEnumMap[instance.blendMode],
  'type': instance.type,
};

const _$StacIconTypeEnumMap = {
  StacIconType.material: 'material',
  StacIconType.cupertino: 'cupertino',
};

const _$StacTextDirectionEnumMap = {
  StacTextDirection.rtl: 'rtl',
  StacTextDirection.ltr: 'ltr',
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
