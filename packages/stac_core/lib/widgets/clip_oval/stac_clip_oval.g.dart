// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_clip_oval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacClipOval _$StacClipOvalFromJson(Map<String, dynamic> json) => StacClipOval(
  clipBehavior: $enumDecodeNullable(_$StacClipEnumMap, json['clipBehavior']),
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacClipOvalToJson(StacClipOval instance) =>
    <String, dynamic>{
      'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
      'child': instance.child?.toJson(),
      'type': instance.type,
    };

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
