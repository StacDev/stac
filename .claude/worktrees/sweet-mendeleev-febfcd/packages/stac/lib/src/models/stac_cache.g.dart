// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_cache.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacCache _$StacCacheFromJson(Map<String, dynamic> json) => StacCache(
  name: json['name'] as String,
  stacJson: json['stacJson'] as String,
  version: (json['version'] as num).toInt(),
  cachedAt: DateTime.parse(json['cachedAt'] as String),
);

Map<String, dynamic> _$StacCacheToJson(StacCache instance) => <String, dynamic>{
  'name': instance.name,
  'stacJson': instance.stacJson,
  'version': instance.version,
  'cachedAt': instance.cachedAt.toIso8601String(),
};
