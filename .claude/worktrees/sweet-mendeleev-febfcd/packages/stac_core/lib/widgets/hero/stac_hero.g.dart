// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_hero.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacHero _$StacHeroFromJson(Map<String, dynamic> json) => StacHero(
  tag: json['tag'],
  child: StacWidget.fromJson(json['child'] as Map<String, dynamic>),
  createRectTween: json['createRectTween'] == null
      ? null
      : StacRectTween.fromJson(json['createRectTween'] as Map<String, dynamic>),
  flightShuttleBuilder: json['flightShuttleBuilder'] == null
      ? null
      : StacWidget.fromJson(
          json['flightShuttleBuilder'] as Map<String, dynamic>,
        ),
  placeholderBuilder: json['placeholderBuilder'] == null
      ? null
      : StacWidget.fromJson(json['placeholderBuilder'] as Map<String, dynamic>),
  transitionOnUserGestures: json['transitionOnUserGestures'] as bool?,
);

Map<String, dynamic> _$StacHeroToJson(StacHero instance) => <String, dynamic>{
  'tag': instance.tag,
  'child': instance.child.toJson(),
  'createRectTween': instance.createRectTween?.toJson(),
  'flightShuttleBuilder': instance.flightShuttleBuilder?.toJson(),
  'placeholderBuilder': instance.placeholderBuilder?.toJson(),
  'transitionOnUserGestures': instance.transitionOnUserGestures,
  'type': instance.type,
};
