// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_opacity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiOpacityImpl _$$MiraiOpacityImplFromJson(Map<String, dynamic> json) =>
    _$MiraiOpacityImpl(
      opacity: (json['opacity'] as num).toDouble(),
      child: json['child'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$MiraiOpacityImplToJson(_$MiraiOpacityImpl instance) =>
    <String, dynamic>{
      'opacity': instance.opacity,
      'child': instance.child,
    };
