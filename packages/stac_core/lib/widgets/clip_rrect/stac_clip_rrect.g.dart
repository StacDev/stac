// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_clip_rrect.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacClipRRect _$StacClipRRectFromJson(Map<String, dynamic> json) =>
    StacClipRRect(
      borderRadius: json['borderRadius'] == null
          ? null
          : StacBorderRadius.fromJson(json['borderRadius']),
      clipBehavior: $enumDecodeNullable(
        _$StacClipEnumMap,
        json['clipBehavior'],
      ),
      child: json['child'] == null
          ? null
          : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacClipRRectToJson(StacClipRRect instance) =>
    <String, dynamic>{
      'borderRadius': instance.borderRadius?.toJson(),
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
