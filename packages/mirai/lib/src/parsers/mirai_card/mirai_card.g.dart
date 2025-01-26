// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiCardImpl _$$MiraiCardImplFromJson(Map<String, dynamic> json) =>
    _$MiraiCardImpl(
      color: json['color'] as String?,
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      shape: json['shape'] == null
          ? null
          : MiraiShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
      borderOnForeground: json['borderOnForeground'] as bool? ?? true,
      margin: json['margin'] == null
          ? null
          : MiraiEdgeInsets.fromJson(json['margin']),
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']),
      child: json['child'] as Map<String, dynamic>?,
      semanticContainer: json['semanticContainer'] as bool? ?? true,
    );

Map<String, dynamic> _$$MiraiCardImplToJson(_$MiraiCardImpl instance) =>
    <String, dynamic>{
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
