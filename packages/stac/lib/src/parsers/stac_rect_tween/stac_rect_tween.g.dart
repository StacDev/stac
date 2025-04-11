// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_rect_tween.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacRectTween _$StacRectTweenFromJson(Map<String, dynamic> json) =>
    _StacRectTween(
      type: json['type'] as String,
      begin: json['begin'] == null
          ? null
          : StacRect.fromJson(json['begin'] as Map<String, dynamic>),
      end: json['end'] == null
          ? null
          : StacRect.fromJson(json['end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacRectTweenToJson(_StacRectTween instance) =>
    <String, dynamic>{
      'type': instance.type,
      'begin': instance.begin,
      'end': instance.end,
    };
