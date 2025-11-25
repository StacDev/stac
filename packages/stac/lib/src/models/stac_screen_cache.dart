import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'stac_screen_cache.g.dart';

/// Model representing a cached screen from Stac Cloud.
///
/// This model stores the screen data along with metadata for caching purposes.
@JsonSerializable()
class StacScreenCache {
  /// Creates a [StacScreenCache] instance.
  const StacScreenCache({
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

  /// Creates a [StacScreenCache] from a JSON map.
  factory StacScreenCache.fromJson(Map<String, dynamic> json) =>
      _$StacScreenCacheFromJson(json);

  /// Converts this [StacScreenCache] to a JSON map.
  Map<String, dynamic> toJson() => _$StacScreenCacheToJson(this);

  /// Creates a [StacScreenCache] from a JSON string.
  factory StacScreenCache.fromJsonString(String jsonString) {
    return StacScreenCache.fromJson(
      jsonDecode(jsonString) as Map<String, dynamic>,
    );
  }

  /// Converts this [StacScreenCache] to a JSON string.
  String toJsonString() {
    return jsonEncode(toJson());
  }

  /// Creates a copy of this [StacScreenCache] with the given fields replaced.
  StacScreenCache copyWith({
    String? name,
    String? stacJson,
    int? version,
    DateTime? cachedAt,
  }) {
    return StacScreenCache(
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

    return other is StacScreenCache &&
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
