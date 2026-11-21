// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_lifecycle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacLifecycle _$StacLifecycleFromJson(Map<String, dynamic> json) =>
    StacLifecycle(
      onLoad: json['onLoad'] == null
          ? null
          : StacAction.fromJson(json['onLoad'] as Map<String, dynamic>),
      onDispose: json['onDispose'] == null
          ? null
          : StacAction.fromJson(json['onDispose'] as Map<String, dynamic>),
      child: json['child'] == null
          ? null
          : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacLifecycleToJson(StacLifecycle instance) =>
    <String, dynamic>{
      'onLoad': instance.onLoad?.toJson(),
      'onDispose': instance.onDispose?.toJson(),
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
