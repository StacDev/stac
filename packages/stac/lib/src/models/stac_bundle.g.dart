// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_bundle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacBundle _$StacBundleFromJson(Map<String, dynamic> json) => StacBundle(
  projectId: json['projectId'] as String,
  version: (json['version'] as num).toInt(),
  etag: json['etag'] as String?,
  checksum: json['checksum'] as String?,
  fetchedAt: DateTime.parse(json['fetchedAt'] as String),
  screens: Map<String, String>.from(json['screens'] as Map),
  themes: Map<String, String>.from(json['themes'] as Map),
);

Map<String, dynamic> _$StacBundleToJson(StacBundle instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'version': instance.version,
      'etag': instance.etag,
      'checksum': instance.checksum,
      'fetchedAt': instance.fetchedAt.toIso8601String(),
      'screens': instance.screens,
      'themes': instance.themes,
    };
