// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_decoration_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacDecorationImage _$StacDecorationImageFromJson(Map<String, dynamic> json) =>
    _StacDecorationImage(
      src: json['src'] as String,
      fit: $enumDecodeNullable(_$BoxFitEnumMap, json['fit']),
      imageType: $enumDecodeNullable(
              _$StacDecorationImageTypeEnumMap, json['imageType']) ??
          StacDecorationImageType.network,
      alignment:
          $enumDecodeNullable(_$StacAlignmentEnumMap, json['alignment']) ??
              StacAlignment.center,
      centerSlice: json['centerSlice'] == null
          ? null
          : StacRect.fromJson(json['centerSlice'] as Map<String, dynamic>),
      repeat: $enumDecodeNullable(_$ImageRepeatEnumMap, json['repeat']) ??
          ImageRepeat.noRepeat,
      matchTextDirection: json['matchTextDirection'] as bool? ?? false,
      scale: (json['scale'] as num?)?.toDouble() ?? 1.0,
      opacity: (json['opacity'] as num?)?.toDouble() ?? 1.0,
      filterQuality:
          $enumDecodeNullable(_$FilterQualityEnumMap, json['filterQuality']) ??
              FilterQuality.low,
      invertColors: json['invertColors'] as bool? ?? false,
      isAntiAlias: json['isAntiAlias'] as bool? ?? false,
    );

Map<String, dynamic> _$StacDecorationImageToJson(
        _StacDecorationImage instance) =>
    <String, dynamic>{
      'src': instance.src,
      'fit': _$BoxFitEnumMap[instance.fit],
      'imageType': _$StacDecorationImageTypeEnumMap[instance.imageType]!,
      'alignment': _$StacAlignmentEnumMap[instance.alignment]!,
      'centerSlice': instance.centerSlice,
      'repeat': _$ImageRepeatEnumMap[instance.repeat]!,
      'matchTextDirection': instance.matchTextDirection,
      'scale': instance.scale,
      'opacity': instance.opacity,
      'filterQuality': _$FilterQualityEnumMap[instance.filterQuality]!,
      'invertColors': instance.invertColors,
      'isAntiAlias': instance.isAntiAlias,
    };

const _$BoxFitEnumMap = {
  BoxFit.fill: 'fill',
  BoxFit.contain: 'contain',
  BoxFit.cover: 'cover',
  BoxFit.fitWidth: 'fitWidth',
  BoxFit.fitHeight: 'fitHeight',
  BoxFit.none: 'none',
  BoxFit.scaleDown: 'scaleDown',
};

const _$StacDecorationImageTypeEnumMap = {
  StacDecorationImageType.file: 'file',
  StacDecorationImageType.network: 'network',
  StacDecorationImageType.asset: 'asset',
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

const _$ImageRepeatEnumMap = {
  ImageRepeat.repeat: 'repeat',
  ImageRepeat.repeatX: 'repeatX',
  ImageRepeat.repeatY: 'repeatY',
  ImageRepeat.noRepeat: 'noRepeat',
};

const _$FilterQualityEnumMap = {
  FilterQuality.none: 'none',
  FilterQuality.low: 'low',
  FilterQuality.medium: 'medium',
  FilterQuality.high: 'high',
};
