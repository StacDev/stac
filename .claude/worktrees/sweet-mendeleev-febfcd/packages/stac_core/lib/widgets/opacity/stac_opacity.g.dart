// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_opacity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacOpacity _$StacOpacityFromJson(Map<String, dynamic> json) => StacOpacity(
  opacity: (json['opacity'] as num).toDouble(),
  alwaysIncludeSemantics: json['alwaysIncludeSemantics'] as bool?,
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacOpacityToJson(StacOpacity instance) =>
    <String, dynamic>{
      'opacity': instance.opacity,
      'alwaysIncludeSemantics': instance.alwaysIncludeSemantics,
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
