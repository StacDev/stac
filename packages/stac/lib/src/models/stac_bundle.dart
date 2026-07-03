import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'stac_bundle.g.dart';

/// Model representing a bundle of screens and themes from Stac Cloud.
///
/// A bundle contains every screen and theme for a project at a single
/// server-owned monotonic [version]. Screens render from the cached bundle;
/// the body is re-downloaded only when a conditional version check returns
/// a new version.
@JsonSerializable()
class StacBundle {
  /// Creates a [StacBundle] instance.
  const StacBundle({
    required this.projectId,
    required this.version,
    this.etag,
    this.checksum,
    required this.fetchedAt,
    required this.screens,
    required this.themes,
  });

  /// The Stac Cloud project this bundle belongs to.
  final String projectId;

  /// The server-owned monotonic bundle version.
  final int version;

  /// The HTTP ETag for conditional (`If-None-Match`) requests.
  final String? etag;

  /// The sha256 checksum of the bundle content.
  final String? checksum;

  /// The timestamp when this bundle was fetched or hydrated.
  final DateTime fetchedAt;

  /// Screen name to Stac JSON string.
  final Map<String, String> screens;

  /// Theme name to Stac JSON string.
  final Map<String, String> themes;

  /// Returns the Stac JSON string for the screen [name], or `null` if the
  /// screen is not part of this bundle.
  String? screen(String name) => screens[name];

  /// Returns the Stac JSON string for the theme [name], or `null` if the
  /// theme is not part of this bundle.
  String? theme(String name) => themes[name];

  /// Creates a [StacBundle] from a JSON map.
  factory StacBundle.fromJson(Map<String, dynamic> json) =>
      _$StacBundleFromJson(json);

  /// Converts this [StacBundle] to a JSON map.
  Map<String, dynamic> toJson() => _$StacBundleToJson(this);

  /// Creates a [StacBundle] from a JSON string.
  factory StacBundle.fromJsonString(String jsonString) {
    return StacBundle.fromJson(jsonDecode(jsonString) as Map<String, dynamic>);
  }

  /// Converts this [StacBundle] to a JSON string.
  String toJsonString() {
    return jsonEncode(toJson());
  }

  /// Creates a copy of this [StacBundle] with the given fields replaced.
  StacBundle copyWith({
    String? projectId,
    int? version,
    String? etag,
    String? checksum,
    DateTime? fetchedAt,
    Map<String, String>? screens,
    Map<String, String>? themes,
  }) {
    return StacBundle(
      projectId: projectId ?? this.projectId,
      version: version ?? this.version,
      etag: etag ?? this.etag,
      checksum: checksum ?? this.checksum,
      fetchedAt: fetchedAt ?? this.fetchedAt,
      screens: screens ?? this.screens,
      themes: themes ?? this.themes,
    );
  }

  @override
  String toString() {
    return 'StacBundle(projectId: $projectId, version: $version, '
        'screens: ${screens.length}, themes: ${themes.length}, '
        'fetchedAt: $fetchedAt)';
  }
}
