// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_clip_oval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacClipOval _$StacClipOvalFromJson(Map<String, dynamic> json) =>
    _StacClipOval(
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ??
          Clip.antiAlias,
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacClipOvalToJson(_StacClipOval instance) =>
    <String, dynamic>{
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
      'child': instance.child,
    };

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
