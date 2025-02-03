// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_hero.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacHeroImpl _$$StacHeroImplFromJson(Map<String, dynamic> json) =>
    _$StacHeroImpl(
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

Map<String, dynamic> _$$StacHeroImplToJson(_$StacHeroImpl instance) =>
    <String, dynamic>{
      'tag': instance.tag,
      'child': instance.child,
      'createRectTween': instance.createRectTween,
      'flightShuttleBuilder': instance.flightShuttleBuilder,
      'placeholderBuilder': instance.placeholderBuilder,
      'transitionOnUserGestures': instance.transitionOnUserGestures,
    };
