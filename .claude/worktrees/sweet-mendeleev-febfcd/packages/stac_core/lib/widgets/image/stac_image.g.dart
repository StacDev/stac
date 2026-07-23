// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacImage _$StacImageFromJson(Map<String, dynamic> json) => StacImage(
  src: json['src'] as String,
  alignment: $enumDecodeNullable(_$StacAlignmentEnumMap, json['alignment']),
  imageType: $enumDecodeNullable(_$StacImageTypeEnumMap, json['imageType']),
  color: json['color'] as String?,
  width: const DoubleConverter().fromJson(json['width']),
  height: const DoubleConverter().fromJson(json['height']),
  fit: $enumDecodeNullable(_$StacBoxFitEnumMap, json['fit']),
  repeat: $enumDecodeNullable(_$StacImageRepeatEnumMap, json['repeat']),
  filterQuality: $enumDecodeNullable(
    _$StacFilterQualityEnumMap,
    json['filterQuality'],
  ),
  semanticLabel: json['semanticLabel'] as String?,
  excludeFromSemantics: json['excludeFromSemantics'] as bool?,
);

Map<String, dynamic> _$StacImageToJson(StacImage instance) => <String, dynamic>{
  'src': instance.src,
  'alignment': _$StacAlignmentEnumMap[instance.alignment],
  'imageType': _$StacImageTypeEnumMap[instance.imageType],
  'color': instance.color,
  'width': const DoubleConverter().toJson(instance.width),
  'height': const DoubleConverter().toJson(instance.height),
  'fit': _$StacBoxFitEnumMap[instance.fit],
  'repeat': _$StacImageRepeatEnumMap[instance.repeat],
  'filterQuality': _$StacFilterQualityEnumMap[instance.filterQuality],
  'semanticLabel': instance.semanticLabel,
  'excludeFromSemantics': instance.excludeFromSemantics,
  'type': instance.type,
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

const _$StacImageTypeEnumMap = {
  StacImageType.file: 'file',
  StacImageType.network: 'network',
  StacImageType.asset: 'asset',
};

const _$StacBoxFitEnumMap = {
  StacBoxFit.fill: 'fill',
  StacBoxFit.contain: 'contain',
  StacBoxFit.cover: 'cover',
  StacBoxFit.fitWidth: 'fitWidth',
  StacBoxFit.fitHeight: 'fitHeight',
  StacBoxFit.none: 'none',
  StacBoxFit.scaleDown: 'scaleDown',
};

const _$StacImageRepeatEnumMap = {
  StacImageRepeat.repeat: 'repeat',
  StacImageRepeat.repeatX: 'repeatX',
  StacImageRepeat.repeatY: 'repeatY',
  StacImageRepeat.noRepeat: 'noRepeat',
};

const _$StacFilterQualityEnumMap = {
  StacFilterQuality.none: 'none',
  StacFilterQuality.low: 'low',
  StacFilterQuality.medium: 'medium',
  StacFilterQuality.high: 'high',
};
