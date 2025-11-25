// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_screen_cache.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacScreenCache _$StacScreenCacheFromJson(Map<String, dynamic> json) =>
    StacScreenCache(
      name: json['name'] as String,
      stacJson: json['stacJson'] as String,
      version: (json['version'] as num).toInt(),
      cachedAt: DateTime.parse(json['cachedAt'] as String),
    );

Map<String, dynamic> _$StacScreenCacheToJson(StacScreenCache instance) =>
    <String, dynamic>{
      'name': instance.name,
      'stacJson': instance.stacJson,
      'version': instance.version,
      'cachedAt': instance.cachedAt.toIso8601String(),
    };
