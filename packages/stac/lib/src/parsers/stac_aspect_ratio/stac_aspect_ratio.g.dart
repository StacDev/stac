// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_aspect_ratio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacAspectRatioImpl _$$StacAspectRatioImplFromJson(
        Map<String, dynamic> json) =>
    _$StacAspectRatioImpl(
      aspectRatio: (json['aspectRatio'] as num?)?.toDouble() ?? 1,
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$StacAspectRatioImplToJson(
        _$StacAspectRatioImpl instance) =>
    <String, dynamic>{
      'aspectRatio': instance.aspectRatio,
      'child': instance.child,
    };
