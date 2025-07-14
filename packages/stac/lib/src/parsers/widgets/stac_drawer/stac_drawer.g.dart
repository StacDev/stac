// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_drawer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacDrawer _$StacDrawerFromJson(Map<String, dynamic> json) => _StacDrawer(
      backgroundColor: json['backgroundColor'] as String?,
      elevation: json['elevation'] == null
          ? null
          : StacDouble.fromJson(json['elevation']),
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      shape: json['shape'] == null
          ? null
          : StacShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
      width: json['width'] == null ? null : StacDouble.fromJson(json['width']),
      child: json['child'] as Map<String, dynamic>?,
      semanticLabel: json['semanticLabel'] as String?,
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']),
    );

Map<String, dynamic> _$StacDrawerToJson(_StacDrawer instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'elevation': instance.elevation,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'shape': instance.shape,
      'width': instance.width,
      'child': instance.child,
      'semanticLabel': instance.semanticLabel,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior],
    };

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
