// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_placeholder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiPlaceholderImpl _$$MiraiPlaceholderImplFromJson(
        Map<String, dynamic> json) =>
    _$MiraiPlaceholderImpl(
      fallbackWidth: (json['fallbackWidth'] as num?)?.toDouble(),
      fallbackHeight: (json['fallbackHeight'] as num?)?.toDouble(),
      strokeWidth: (json['strokeWidth'] as num?)?.toDouble(),
      color: json['color'] as String?,
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MiraiPlaceholderImplToJson(
        _$MiraiPlaceholderImpl instance) =>
    <String, dynamic>{
      'fallbackWidth': instance.fallbackWidth,
      'fallbackHeight': instance.fallbackHeight,
      'strokeWidth': instance.strokeWidth,
      'color': instance.color,
      'child': instance.child,
    };
