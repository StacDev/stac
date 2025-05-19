// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_circle_avatar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacCircleAvatar _$StacCircleAvatarFromJson(Map<String, dynamic> json) =>
    _StacCircleAvatar(
      child: json['child'] as Map<String, dynamic>?,
      backgroundColor: json['backgroundColor'] as String?,
      backgroundImage: json['backgroundImage'] as String?,
      foregroundImage: json['foregroundImage'] as String?,
      onBackgroundImageError:
          json['onBackgroundImageError'] as Map<String, dynamic>?,
      onForegroundImageError:
          json['onForegroundImageError'] as Map<String, dynamic>?,
      foregroundColor: json['foregroundColor'] as String?,
      radius:
          json['radius'] == null ? null : StacDouble.fromJson(json['radius']),
      minRadius: json['minRadius'] == null
          ? null
          : StacDouble.fromJson(json['minRadius']),
      maxRadius: json['maxRadius'] == null
          ? null
          : StacDouble.fromJson(json['maxRadius']),
    );

Map<String, dynamic> _$StacCircleAvatarToJson(_StacCircleAvatar instance) =>
    <String, dynamic>{
      'child': instance.child,
      'backgroundColor': instance.backgroundColor,
      'backgroundImage': instance.backgroundImage,
      'foregroundImage': instance.foregroundImage,
      'onBackgroundImageError': instance.onBackgroundImageError,
      'onForegroundImageError': instance.onForegroundImageError,
      'foregroundColor': instance.foregroundColor,
      'radius': instance.radius,
      'minRadius': instance.minRadius,
      'maxRadius': instance.maxRadius,
    };
