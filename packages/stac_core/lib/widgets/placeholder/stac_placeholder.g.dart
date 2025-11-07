// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_placeholder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacPlaceholder _$StacPlaceholderFromJson(Map<String, dynamic> json) =>
    StacPlaceholder(
      fallbackWidth: const DoubleConverter().fromJson(json['fallbackWidth']),
      fallbackHeight: const DoubleConverter().fromJson(json['fallbackHeight']),
      strokeWidth: const DoubleConverter().fromJson(json['strokeWidth']),
      color: json['color'] as String?,
      child: json['child'] == null
          ? null
          : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacPlaceholderToJson(StacPlaceholder instance) =>
    <String, dynamic>{
      'fallbackWidth': const DoubleConverter().toJson(instance.fallbackWidth),
      'fallbackHeight': const DoubleConverter().toJson(instance.fallbackHeight),
      'strokeWidth': const DoubleConverter().toJson(instance.strokeWidth),
      'color': instance.color,
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
