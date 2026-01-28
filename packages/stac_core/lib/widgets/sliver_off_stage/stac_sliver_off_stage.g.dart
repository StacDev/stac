// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_sliver_off_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSliverOffstage _$StacSliverOffstageFromJson(Map<String, dynamic> json) =>
    StacSliverOffstage(
      offstage: json['offstage'] as bool?,
      sliver: json['sliver'] == null
          ? null
          : StacWidget.fromJson(json['sliver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacSliverOffstageToJson(StacSliverOffstage instance) =>
    <String, dynamic>{
      'offstage': instance.offstage,
      'sliver': instance.sliver?.toJson(),
      'type': instance.type,
    };
