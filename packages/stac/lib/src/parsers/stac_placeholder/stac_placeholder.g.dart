// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_placeholder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacPlaceholderImpl _$$StacPlaceholderImplFromJson(
        Map<String, dynamic> json) =>
    _$StacPlaceholderImpl(
      fallbackWidth: (json['fallbackWidth'] as num?)?.toDouble() ?? 2.0,
      fallbackHeight: (json['fallbackHeight'] as num?)?.toDouble() ?? 400.0,
      strokeWidth: (json['strokeWidth'] as num?)?.toDouble() ?? 400.0,
      color: json['color'] as String? ?? '#455A64',
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$StacPlaceholderImplToJson(
        _$StacPlaceholderImpl instance) =>
    <String, dynamic>{
      'fallbackWidth': instance.fallbackWidth,
      'fallbackHeight': instance.fallbackHeight,
      'strokeWidth': instance.strokeWidth,
      'color': instance.color,
      'child': instance.child,
    };
