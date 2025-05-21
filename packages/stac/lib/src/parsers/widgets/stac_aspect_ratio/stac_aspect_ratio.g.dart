// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_aspect_ratio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacAspectRatio _$StacAspectRatioFromJson(Map<String, dynamic> json) =>
    _StacAspectRatio(
      aspectRatio: json['aspectRatio'] == null
          ? const StacDouble(1)
          : StacDouble.fromJson(json['aspectRatio']),
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacAspectRatioToJson(_StacAspectRatio instance) =>
    <String, dynamic>{
      'aspectRatio': instance.aspectRatio,
      'child': instance.child,
    };
