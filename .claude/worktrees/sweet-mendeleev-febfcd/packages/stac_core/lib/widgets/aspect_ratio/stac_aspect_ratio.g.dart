// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_aspect_ratio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacAspectRatio _$StacAspectRatioFromJson(Map<String, dynamic> json) =>
    StacAspectRatio(
      aspectRatio: (json['aspectRatio'] as num).toDouble(),
      child: json['child'] == null
          ? null
          : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacAspectRatioToJson(StacAspectRatio instance) =>
    <String, dynamic>{
      'aspectRatio': instance.aspectRatio,
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
