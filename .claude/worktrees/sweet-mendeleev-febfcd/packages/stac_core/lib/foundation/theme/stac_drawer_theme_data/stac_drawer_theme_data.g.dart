// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_drawer_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacDrawerThemeData _$StacDrawerThemeDataFromJson(Map<String, dynamic> json) =>
    StacDrawerThemeData(
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
      clipBehavior: $enumDecodeNullable(
        _$StacClipEnumMap,
        json['clipBehavior'],
      ),
    );

Map<String, dynamic> _$StacDrawerThemeDataToJson(
  StacDrawerThemeData instance,
) => <String, dynamic>{
  'backgroundColor': instance.backgroundColor,
  'scrimColor': instance.scrimColor,
  'elevation': instance.elevation,
  'shadowColor': instance.shadowColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'shape': instance.shape?.toJson(),
  'endShape': instance.endShape?.toJson(),
  'width': instance.width,
  'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
};

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
