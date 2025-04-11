// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacImage _$StacImageFromJson(Map<String, dynamic> json) => _StacImage(
      src: json['src'] as String,
      alignment:
          $enumDecodeNullable(_$StacAlignmentEnumMap, json['alignment']) ??
              StacAlignment.center,
      imageType:
          $enumDecodeNullable(_$StacImageTypeEnumMap, json['imageType']) ??
              StacImageType.network,
      color: json['color'] as String?,
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      fit: $enumDecodeNullable(_$BoxFitEnumMap, json['fit']),
    );

Map<String, dynamic> _$StacImageToJson(_StacImage instance) =>
    <String, dynamic>{
      'src': instance.src,
      'alignment': _$StacAlignmentEnumMap[instance.alignment]!,
      'imageType': _$StacImageTypeEnumMap[instance.imageType]!,
      'color': instance.color,
      'width': instance.width,
      'height': instance.height,
      'fit': _$BoxFitEnumMap[instance.fit],
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

const _$BoxFitEnumMap = {
  BoxFit.fill: 'fill',
  BoxFit.contain: 'contain',
  BoxFit.cover: 'cover',
  BoxFit.fitWidth: 'fitWidth',
  BoxFit.fitHeight: 'fitHeight',
  BoxFit.none: 'none',
  BoxFit.scaleDown: 'scaleDown',
};
