// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_drawer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiDrawerImpl _$$MiraiDrawerImplFromJson(Map<String, dynamic> json) =>
    _$MiraiDrawerImpl(
      backgroundColor: json['backgroundColor'] as String?,
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      semanticLabel: json['semanticLabel'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      shape: json['shape'] == null
          ? null
          : MiraiShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']),
      child: json['child'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$MiraiDrawerImplToJson(_$MiraiDrawerImpl instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'semanticLabel': instance.semanticLabel,
      'elevation': instance.elevation,
      'width': instance.width,
      'shape': instance.shape,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior],
      'child': instance.child,
    };

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
