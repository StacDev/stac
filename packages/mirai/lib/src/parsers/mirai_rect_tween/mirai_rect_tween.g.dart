// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_rect_tween.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiRectTweenImpl _$$MiraiRectTweenImplFromJson(Map<String, dynamic> json) =>
    _$MiraiRectTweenImpl(
      type: json['type'] as String,
      begin: json['begin'] == null
          ? null
          : MiraiRect.fromJson(json['begin'] as Map<String, dynamic>),
      end: json['end'] == null
          ? null
          : MiraiRect.fromJson(json['end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MiraiRectTweenImplToJson(
        _$MiraiRectTweenImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'begin': instance.begin,
      'end': instance.end,
    };
