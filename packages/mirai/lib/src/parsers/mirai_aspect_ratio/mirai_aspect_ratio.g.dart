// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_aspect_ratio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiAspectRatioImpl _$$MiraiAspectRatioImplFromJson(
        Map<String, dynamic> json) =>
    _$MiraiAspectRatioImpl(
      aspectRatio: (json['aspectRatio'] as num?)?.toDouble() ?? 1,
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MiraiAspectRatioImplToJson(
        _$MiraiAspectRatioImpl instance) =>
    <String, dynamic>{
      'aspectRatio': instance.aspectRatio,
      'child': instance.child,
    };
