// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_drawer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacDrawer _$StacDrawerFromJson(Map<String, dynamic> json) => StacDrawer(
  backgroundColor: json['backgroundColor'] as String?,
  elevation: const DoubleConverter().fromJson(json['elevation']),
  shadowColor: json['shadowColor'] as String?,
  surfaceTintColor: json['surfaceTintColor'] as String?,
  shape: json['shape'] == null
      ? null
      : StacShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
  width: const DoubleConverter().fromJson(json['width']),
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
  semanticLabel: json['semanticLabel'] as String?,
  clipBehavior: $enumDecodeNullable(_$StacClipEnumMap, json['clipBehavior']),
);

Map<String, dynamic> _$StacDrawerToJson(StacDrawer instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'elevation': const DoubleConverter().toJson(instance.elevation),
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'shape': instance.shape?.toJson(),
      'width': const DoubleConverter().toJson(instance.width),
      'child': instance.child?.toJson(),
      'semanticLabel': instance.semanticLabel,
      'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
      'type': instance.type,
    };

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
