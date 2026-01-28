// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_offstage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacOffstage _$StacOffstageFromJson(Map<String, dynamic> json) => StacOffstage(
  offstage: json['offstage'] as bool?,
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacOffstageToJson(StacOffstage instance) =>
    <String, dynamic>{
      'offstage': instance.offstage,
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
