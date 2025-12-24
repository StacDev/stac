// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_artifact_cache.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacArtifactCache _$StacArtifactCacheFromJson(Map<String, dynamic> json) =>
    StacArtifactCache(
      name: json['name'] as String,
      stacJson: json['stacJson'] as String,
      version: (json['version'] as num).toInt(),
      cachedAt: DateTime.parse(json['cachedAt'] as String),
    );

Map<String, dynamic> _$StacArtifactCacheToJson(StacArtifactCache instance) =>
    <String, dynamic>{
      'name': instance.name,
      'stacJson': instance.stacJson,
      'version': instance.version,
      'cachedAt': instance.cachedAt.toIso8601String(),
    };
