// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_decoration_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacDecorationImage _$StacDecorationImageFromJson(Map<String, dynamic> json) =>
    StacDecorationImage(
      src: json['src'] as String,
      fit: $enumDecodeNullable(_$StacBoxFitEnumMap, json['fit']),
      imageType: $enumDecodeNullable(_$StacImageTypeEnumMap, json['imageType']),
      alignment: $enumDecodeNullable(_$StacAlignmentEnumMap, json['alignment']),
      centerSlice: json['centerSlice'] == null
          ? null
          : StacRect.fromJson(json['centerSlice'] as Map<String, dynamic>),
      repeat: $enumDecodeNullable(_$StacImageRepeatEnumMap, json['repeat']),
      matchTextDirection: json['matchTextDirection'] as bool?,
      scale: (json['scale'] as num?)?.toDouble(),
      opacity: (json['opacity'] as num?)?.toDouble(),
      filterQuality: $enumDecodeNullable(
        _$StacFilterQualityEnumMap,
        json['filterQuality'],
      ),
      invertColors: json['invertColors'] as bool?,
      isAntiAlias: json['isAntiAlias'] as bool?,
    );

Map<String, dynamic> _$StacDecorationImageToJson(
  StacDecorationImage instance,
) => <String, dynamic>{
  'src': instance.src,
  'fit': _$StacBoxFitEnumMap[instance.fit],
  'imageType': _$StacImageTypeEnumMap[instance.imageType],
  'alignment': _$StacAlignmentEnumMap[instance.alignment],
  'centerSlice': instance.centerSlice?.toJson(),
  'repeat': _$StacImageRepeatEnumMap[instance.repeat],
  'matchTextDirection': instance.matchTextDirection,
  'scale': instance.scale,
  'opacity': instance.opacity,
  'filterQuality': _$StacFilterQualityEnumMap[instance.filterQuality],
  'invertColors': instance.invertColors,
  'isAntiAlias': instance.isAntiAlias,
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

const _$StacImageTypeEnumMap = {
  StacImageType.file: 'file',
  StacImageType.network: 'network',
  StacImageType.asset: 'asset',
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
