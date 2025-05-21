// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_placeholder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacPlaceholder _$StacPlaceholderFromJson(Map<String, dynamic> json) =>
    _StacPlaceholder(
      fallbackWidth: json['fallbackWidth'] == null
          ? const StacDouble(2.0)
          : StacDouble.fromJson(json['fallbackWidth']),
      fallbackHeight: json['fallbackHeight'] == null
          ? const StacDouble(400.0)
          : StacDouble.fromJson(json['fallbackHeight']),
      strokeWidth: json['strokeWidth'] == null
          ? const StacDouble(400.0)
          : StacDouble.fromJson(json['strokeWidth']),
      color: json['color'] as String? ?? '#455A64',
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacPlaceholderToJson(_StacPlaceholder instance) =>
    <String, dynamic>{
      'fallbackWidth': instance.fallbackWidth,
      'fallbackHeight': instance.fallbackHeight,
      'strokeWidth': instance.strokeWidth,
      'color': instance.color,
      'child': instance.child,
    };
