// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_opacity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacOpacity _$StacOpacityFromJson(Map<String, dynamic> json) => _StacOpacity(
      opacity: (json['opacity'] as num).toDouble(),
      child: json['child'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$StacOpacityToJson(_StacOpacity instance) =>
    <String, dynamic>{
      'opacity': instance.opacity,
      'child': instance.child,
    };
