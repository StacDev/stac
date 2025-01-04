// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_hero.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiHeroImpl _$$MiraiHeroImplFromJson(Map<String, dynamic> json) =>
    _$MiraiHeroImpl(
      tag: json['tag'] as Object,
      child: json['child'] as Map<String, dynamic>,
      createRectTween: json['createRectTween'] as Map<String, dynamic>?,
      flightShuttleBuilder:
          json['flightShuttleBuilder'] as Map<String, dynamic>?,
      placeholderBuilder: json['placeholderBuilder'] as Map<String, dynamic>?,
      transitionOnUserGestures:
          json['transitionOnUserGestures'] as bool? ?? false,
    );

Map<String, dynamic> _$$MiraiHeroImplToJson(_$MiraiHeroImpl instance) =>
    <String, dynamic>{
      'tag': instance.tag,
      'child': instance.child,
      'createRectTween': instance.createRectTween,
      'flightShuttleBuilder': instance.flightShuttleBuilder,
      'placeholderBuilder': instance.placeholderBuilder,
      'transitionOnUserGestures': instance.transitionOnUserGestures,
    };
