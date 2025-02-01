// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_rect_tween.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacRectTweenImpl _$$StacRectTweenImplFromJson(Map<String, dynamic> json) =>
    _$StacRectTweenImpl(
      type: json['type'] as String,
      begin: json['begin'] == null
          ? null
          : StacRect.fromJson(json['begin'] as Map<String, dynamic>),
      end: json['end'] == null
          ? null
          : StacRect.fromJson(json['end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StacRectTweenImplToJson(_$StacRectTweenImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'begin': instance.begin,
      'end': instance.end,
    };
