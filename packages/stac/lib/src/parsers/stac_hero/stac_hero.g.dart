// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_hero.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacHero _$StacHeroFromJson(Map<String, dynamic> json) => _StacHero(
      tag: json['tag'] as Object,
      child: json['child'] as Map<String, dynamic>,
      createRectTween: json['createRectTween'] == null
          ? null
          : StacRectTween.fromJson(
              json['createRectTween'] as Map<String, dynamic>),
      flightShuttleBuilder:
          json['flightShuttleBuilder'] as Map<String, dynamic>?,
      placeholderBuilder: json['placeholderBuilder'] as Map<String, dynamic>?,
      transitionOnUserGestures:
          json['transitionOnUserGestures'] as bool? ?? false,
    );

Map<String, dynamic> _$StacHeroToJson(_StacHero instance) => <String, dynamic>{
      'tag': instance.tag,
      'child': instance.child,
      'createRectTween': instance.createRectTween,
      'flightShuttleBuilder': instance.flightShuttleBuilder,
      'placeholderBuilder': instance.placeholderBuilder,
      'transitionOnUserGestures': instance.transitionOnUserGestures,
    };
