// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_expanded.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacExpanded _$StacExpandedFromJson(Map<String, dynamic> json) => StacExpanded(
  flex: (json['flex'] as num?)?.toInt(),
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacExpandedToJson(StacExpanded instance) =>
    <String, dynamic>{
      'flex': instance.flex,
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
