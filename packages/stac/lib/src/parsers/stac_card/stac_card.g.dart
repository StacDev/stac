// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacCard _$StacCardFromJson(Map<String, dynamic> json) => _StacCard(
      color: json['color'] as String?,
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      shape: json['shape'] == null
          ? null
          : StacShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
      borderOnForeground: json['borderOnForeground'] as bool? ?? true,
      margin: json['margin'] == null
          ? null
          : StacEdgeInsets.fromJson(json['margin']),
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']),
      child: json['child'] as Map<String, dynamic>?,
      semanticContainer: json['semanticContainer'] as bool? ?? true,
    );

Map<String, dynamic> _$StacCardToJson(_StacCard instance) => <String, dynamic>{
      'color': instance.color,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'elevation': instance.elevation,
      'shape': instance.shape,
      'borderOnForeground': instance.borderOnForeground,
      'margin': instance.margin,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior],
      'child': instance.child,
      'semanticContainer': instance.semanticContainer,
    };

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
