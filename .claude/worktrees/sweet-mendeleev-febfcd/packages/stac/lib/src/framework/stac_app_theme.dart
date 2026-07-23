import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:stac/src/services/stac_cloud.dart';
import 'package:stac/src/services/stac_network_service.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';
import 'package:stac_core/foundation/theme/stac_theme/stac_theme.dart';
import 'package:stac_logger/stac_logger.dart';

/// Provides helpers to load [StacTheme] definitions for [StacApp].
///
/// Can be used as a wrapper to fetch themes from different sources:
/// ```dart
/// // From DSL (StacTheme object)
/// StacAppTheme.dsl(theme: myTheme)
///
/// // From cloud
/// StacAppTheme(name: "xyz")
///
/// // From network
/// StacAppTheme.network(context: context, request: request)
///
/// // From JSON
/// StacAppTheme.json(payload: jsonData)
/// ```
class StacAppTheme {
  /// Creates a [StacAppTheme] wrapper for using a DSL theme.
  ///
  /// The [theme] should be a `StacTheme` object defined with `@StacThemeRef` annotation.
  const StacAppTheme.dsl({required StacTheme theme})
    : _source = _ThemeSource.dsl,
      name = null,
      _context = null,
      _request = null,
      _jsonPayload = null,
      _dslTheme = theme;

  /// Creates a [StacAppTheme] wrapper for fetching a theme from the cloud by [name].
  const StacAppTheme({required this.name})
    : _source = _ThemeSource.cloud,
      _context = null,
      _request = null,
      _jsonPayload = null,
      _dslTheme = null;

  /// Creates a [StacAppTheme] wrapper for fetching a theme from network.
  const StacAppTheme.network({
    required BuildContext context,
    required StacNetworkRequest request,
  }) : _source = _ThemeSource.network,
       name = null,
       _context = context,
       _request = request,
       _jsonPayload = null,
       _dslTheme = null;

  /// Creates a [StacAppTheme] wrapper for creating a theme from JSON.
  const StacAppTheme.json({required dynamic payload})
    : _source = _ThemeSource.json,
      name = null,
      _context = null,
      _request = null,
      _jsonPayload = payload,
      _dslTheme = null;

  /// The name of the theme to fetch from cloud (only used for cloud source).
  final String? name;

  final _ThemeSource _source;
  final BuildContext? _context;
  final StacNetworkRequest? _request;
  final Object? _jsonPayload;
  final StacTheme? _dslTheme;

  /// Resolves the theme based on the configured source.
  ///
  /// Returns `null` if the fetch/parse fails or the payload is malformed.
  Future<StacTheme?> resolve() async {
    switch (_source) {
      case _ThemeSource.dsl:
        return _dslTheme;
      case _ThemeSource.cloud:
        return fromCloud(themeName: name!);
      case _ThemeSource.network:
        return fromNetwork(context: _context!, request: _request!);
      case _ThemeSource.json:
        return fromJson(_jsonPayload);
    }
  }

  /// Fetches a theme from the `/themes` endpoint by [themeName].
  ///
  /// Returns `null` if the network call fails or the payload is malformed.
  static Future<StacTheme?> fromCloud({required String themeName}) async {
    final response = await StacCloud.fetchTheme(themeName: themeName);
    if (response == null) {
      return null;
    }

    final rawData = response.data;
    if (rawData is! Map<String, dynamic>) {
      return null;
    }

    final themePayload = _themeJsonDynamicToMap(rawData['stacJson']);
    if (themePayload == null) {
      return null;
    }

    return StacTheme.fromJson(themePayload);
  }

  /// Fetches a theme over HTTP using a [StacNetworkRequest].
  ///
  /// Mirrors [Stac.fromNetwork], allowing callers to reuse existing request
  /// builders and middleware.
  static Future<StacTheme?> fromNetwork({
    required BuildContext context,
    required StacNetworkRequest request,
  }) async {
    final response = await StacNetworkService.request(context, request);
    if (response == null) {
      return null;
    }

    return fromJson(response.data);
  }

  /// Creates a [StacTheme] from raw JSON payloads.
  ///
  /// Accepts either a `Map<String, dynamic>` or a JSON `String`. Returns `null`
  /// when the payload cannot be parsed into a valid [StacTheme].
  static StacTheme? fromJson(dynamic payload) {
    final themePayload = _themeJsonDynamicToMap(payload);
    if (themePayload == null) {
      return null;
    }
    return StacTheme.fromJson(themePayload);
  }

  static Map<String, dynamic>? _themeJsonDynamicToMap(dynamic payload) {
    if (payload == null) {
      return null;
    }
    if (payload is Map<String, dynamic> && payload['stacJson'] != null) {
      return _themeJsonDynamicToMap(payload['stacJson']);
    }
    if (payload is Map<String, dynamic>) {
      return payload;
    }
    if (payload is String) {
      try {
        final decoded = jsonDecode(payload);
        if (decoded is Map<String, dynamic>) {
          return decoded;
        }
      } catch (e) {
        Log.w('Unexpected error parsing theme JSON: $e');
        return null;
      }
    }
    return null;
  }
}

enum _ThemeSource { dsl, cloud, network, json }
