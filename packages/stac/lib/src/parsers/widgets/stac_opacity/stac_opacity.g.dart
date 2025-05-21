// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_opacity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacOpacity _$StacOpacityFromJson(Map<String, dynamic> json) => _StacOpacity(
      opacity: StacDouble.fromJson(json['opacity']),
      child: json['child'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$StacOpacityToJson(_StacOpacity instance) =>
    <String, dynamic>{
      'opacity': instance.opacity,
      'child': instance.child,
    };
