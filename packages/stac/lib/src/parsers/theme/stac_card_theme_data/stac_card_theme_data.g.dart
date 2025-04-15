// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_card_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacCardThemeData _$StacCardThemeDataFromJson(Map<String, dynamic> json) =>
    _StacCardThemeData(
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']),
      color: json['color'] as String?,
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      margin: json['margin'] == null
          ? null
          : StacEdgeInsets.fromJson(json['margin']),
      shape: json['shape'] == null
          ? null
          : StacBorder.fromJson(json['shape'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacCardThemeDataToJson(_StacCardThemeData instance) =>
    <String, dynamic>{
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior],
      'color': instance.color,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'elevation': instance.elevation,
      'margin': instance.margin,
      'shape': instance.shape,
    };

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
