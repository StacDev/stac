import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'stac_artifact_cache.g.dart';

/// Model representing a cached screen from Stac Cloud.
///
/// This model stores the screen data along with metadata for caching purposes.
@JsonSerializable()
class StacArtifactCache {
  /// Creates a [StacArtifactCache] instance.
  const StacArtifactCache({
    required this.name,
    required this.stacJson,
    required this.version,
    required this.cachedAt,
  });

  /// The screen name/route identifier.
  final String name;

  /// The JSON string containing the Stac widget definition.
  final String stacJson;

  /// The version number of the screen.
  final int version;

  /// The timestamp when this screen was cached.
  final DateTime cachedAt;

  /// Creates a [StacArtifactCache] from a JSON map.
  factory StacArtifactCache.fromJson(Map<String, dynamic> json) =>
      _$StacArtifactCacheFromJson(json);

  /// Converts this [StacArtifactCache] to a JSON map.
  Map<String, dynamic> toJson() => _$StacArtifactCacheToJson(this);

  /// Creates a [StacArtifactCache] from a JSON string.
  factory StacArtifactCache.fromJsonString(String jsonString) {
    return StacArtifactCache.fromJson(
      jsonDecode(jsonString) as Map<String, dynamic>,
    );
  }

  /// Converts this [StacArtifactCache] to a JSON string.
  String toJsonString() {
    return jsonEncode(toJson());
  }

  /// Creates a copy of this [StacArtifactCache] with the given fields replaced.
  StacArtifactCache copyWith({
    String? name,
    String? stacJson,
    int? version,
    DateTime? cachedAt,
  }) {
    return StacArtifactCache(
      name: name ?? this.name,
      stacJson: stacJson ?? this.stacJson,
      version: version ?? this.version,
      cachedAt: cachedAt ?? this.cachedAt,
    );
  }

  @override
  String toString() {
    return 'StacScreenCache(name: $name, version: $version, cachedAt: $cachedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StacArtifactCache &&
        other.name == name &&
        other.stacJson == stacJson &&
        other.version == version &&
        other.cachedAt == cachedAt;
  }

  @override
  int get hashCode {
    return Object.hash(name, stacJson, version, cachedAt);
  }
}
