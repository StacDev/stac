// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_opacity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacOpacityImpl _$$StacOpacityImplFromJson(Map<String, dynamic> json) =>
    _$StacOpacityImpl(
      opacity: (json['opacity'] as num).toDouble(),
      child: json['child'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$StacOpacityImplToJson(_$StacOpacityImpl instance) =>
    <String, dynamic>{
      'opacity': instance.opacity,
      'child': instance.child,
    };
