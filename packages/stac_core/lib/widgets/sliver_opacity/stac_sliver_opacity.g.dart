// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_sliver_opacity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSliverOpacity _$StacSliverOpacityFromJson(Map<String, dynamic> json) =>
    StacSliverOpacity(
      opacity: (json['opacity'] as num).toDouble(),
      alwaysIncludeSemantics: json['alwaysIncludeSemantics'] as bool?,
      sliver: json['sliver'] == null
          ? null
          : StacWidget.fromJson(json['sliver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacSliverOpacityToJson(StacSliverOpacity instance) =>
    <String, dynamic>{
      'opacity': instance.opacity,
      'alwaysIncludeSemantics': instance.alwaysIncludeSemantics,
      'sliver': instance.sliver?.toJson(),
      'type': instance.type,
    };
