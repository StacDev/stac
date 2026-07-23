// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacCard _$StacCardFromJson(Map<String, dynamic> json) => StacCard(
  color: json['color'] as String?,
  shadowColor: json['shadowColor'] as String?,
  surfaceTintColor: json['surfaceTintColor'] as String?,
  elevation: const DoubleConverter().fromJson(json['elevation']),
  shape: json['shape'] == null
      ? null
      : StacShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
  borderOnForeground: json['borderOnForeground'] as bool?,
  margin: json['margin'] == null
      ? null
      : StacEdgeInsets.fromJson(json['margin']),
  clipBehavior: $enumDecodeNullable(_$StacClipEnumMap, json['clipBehavior']),
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
  semanticContainer: json['semanticContainer'] as bool?,
);

Map<String, dynamic> _$StacCardToJson(StacCard instance) => <String, dynamic>{
  'color': instance.color,
  'shadowColor': instance.shadowColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'elevation': const DoubleConverter().toJson(instance.elevation),
  'shape': instance.shape?.toJson(),
  'borderOnForeground': instance.borderOnForeground,
  'margin': instance.margin?.toJson(),
  'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
  'child': instance.child?.toJson(),
  'semanticContainer': instance.semanticContainer,
  'type': instance.type,
};

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
