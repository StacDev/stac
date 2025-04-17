// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_drawer_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacDrawerThemeData _$StacDrawerThemeDataFromJson(Map<String, dynamic> json) =>
    _StacDrawerThemeData(
      backgroundColor: json['backgroundColor'] as String?,
      scrimColor: json['scrimColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      shape: json['shape'] == null
          ? null
          : StacShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
      endShape: json['endShape'] == null
          ? null
          : StacShapeBorder.fromJson(json['endShape'] as Map<String, dynamic>),
      width: (json['width'] as num?)?.toDouble(),
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']),
    );

Map<String, dynamic> _$StacDrawerThemeDataToJson(
        _StacDrawerThemeData instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'scrimColor': instance.scrimColor,
      'elevation': instance.elevation,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'shape': instance.shape,
      'endShape': instance.endShape,
      'width': instance.width,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior],
    };

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
