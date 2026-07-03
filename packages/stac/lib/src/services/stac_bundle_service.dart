import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:stac/src/framework/stac_service.dart';
import 'package:stac/src/models/stac_bundle.dart';
import 'package:stac/src/models/stac_bundle_config.dart';
import 'package:stac/src/services/stac_bundle_store.dart';
import 'package:stac_logger/stac_logger.dart';

/// Reads a string asset; seam for testing seed hydration without a real
/// asset bundle.
typedef StacBundleAssetReader = Future<String> Function(String assetPath);

/// Service for syncing and serving Stac bundles.
///
/// A bundle is a single blob containing every screen and theme for a
/// project at one server-owned version. Screens always render from the
/// cached bundle; the body is re-downloaded only when a conditional
/// version check ([sync]) returns a new version (decision: no
/// strategies/TTL — the server-owned version is the only invalidator).
class StacBundleService {
  const StacBundleService._();

  static Dio _dio = _createDio();

  static Dio _createDio() {
    return Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );
  }

  /// Overrides the Dio client used for bundle requests.
  @visibleForTesting
  static set dio(Dio dio) => _dio = dio;

  static StacBundleStore _store = const SharedPreferencesBundleStore();

  /// Overrides the store used to persist bundles.
  @visibleForTesting
  static set store(StacBundleStore store) => _store = store;

  static StacBundleAssetReader _assetReader = rootBundle.loadString;

  /// Overrides the asset reader used for seed bundle hydration.
  @visibleForTesting
  static set assetReader(StacBundleAssetReader reader) =>
      _assetReader = reader;

  /// The bundle currently held in memory, if any.
  static StacBundle? _bundle;

  /// The bundle currently held in memory, if any.
  static StacBundle? get current => _bundle;

  /// Whether hydration (store + seed asset) has completed.
  static bool _hydrated = false;

  /// In-flight hydration, deduped across concurrent callers.
  static Future<void>? _inFlightHydration;

  /// In-flight sync, deduped so at most one GET runs at a time.
  static Future<StacBundle?>? _inFlightSync;

  static StreamController<StacBundle> _updatesController =
      StreamController<StacBundle>.broadcast();

  /// Broadcast stream emitting whenever a sync lands a new bundle version,
  /// so host apps can prompt the user or trigger a rebuild on their own
  /// terms. Nothing is emitted on `304`/`204` (no change) or on errors.
  static Stream<StacBundle> get updates => _updatesController.stream;

  static StacBundleConfig get _config => StacService.bundleConfig;

  static String get _projectId {
    final options = StacService.options;
    if (options == null) {
      throw Exception('StacOptions is not set');
    }
    return options.projectId;
  }

  /// Runs a conditional bundle version check against the server.
  ///
  /// Sends `GET {baseUrl}/bundles?projectId=..&since=<version>` with
  /// `If-None-Match` when an etag is cached. A `200` parses, persists and
  /// swaps in the new bundle (and emits on [updates]); `304`/`204` keep the
  /// current bundle; errors (offline, server failures) return the stale
  /// bundle. Concurrent calls are deduped onto a single in-flight request.
  ///
  /// Set [force] to skip the conditional headers and re-download the body
  /// unconditionally.
  static Future<StacBundle?> sync({bool force = false}) {
    return _inFlightSync ??= _syncInternal(force: force).whenComplete(() {
      _inFlightSync = null;
    });
  }

  static Future<StacBundle?> _syncInternal({required bool force}) async {
    final projectId = _projectId;

    // Hydrate first so the request can be conditional on the cached version.
    await _hydrate();

    final cached = _bundle;
    try {
      final response = await _dio.get<dynamic>(
        '${_config.baseUrl}/bundles',
        queryParameters: <String, dynamic>{
          'projectId': projectId,
          if (!force && cached != null) 'since': cached.version,
        },
        options: Options(
          headers: <String, dynamic>{
            if (!force && cached?.etag != null) 'If-None-Match': cached!.etag,
          },
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      final statusCode = response.statusCode;

      if (statusCode == 200) {
        final data = response.data;
        if (data is! Map) {
          Log.w('StacBundleService: Unexpected bundle response body');
          return cached;
        }

        final bundle = _bundleFromResponse(
          Map<String, dynamic>.from(data),
          projectId: projectId,
          etagHeader: response.headers.value('etag'),
        );
        if (bundle == null) {
          Log.w('StacBundleService: Bundle response is missing a version');
          return cached;
        }

        _bundle = bundle;
        await _store.write(bundle);
        _updatesController.add(bundle);
        Log.d('StacBundleService: Synced bundle v${bundle.version}');
        return bundle;
      }

      if (statusCode == 304 || statusCode == 204) {
        // Not modified: keep the cached bundle.
        return cached;
      }

      Log.w(
        'StacBundleService: Bundle sync failed with status $statusCode, '
        'using ${cached == null ? 'no bundle' : 'stale bundle v${cached.version}'}',
      );
      return cached;
    } catch (e) {
      // Offline or server error: keep serving the stale bundle.
      Log.d('StacBundleService: Bundle sync failed ($e), using stale bundle');
      return cached;
    }
  }

  /// Builds a [StacBundle] from a `200` response body.
  ///
  /// Returns `null` when the body has no usable version.
  static StacBundle? _bundleFromResponse(
    Map<String, dynamic> data, {
    required String projectId,
    String? etagHeader,
  }) {
    final version = data['version'];
    if (version is! int) return null;

    return StacBundle(
      projectId: data['projectId'] as String? ?? projectId,
      version: version,
      etag: etagHeader ?? data['etag'] as String?,
      checksum: data['checksum'] as String?,
      fetchedAt: DateTime.now(),
      screens: _stringMap(data['screens']),
      themes: _stringMap(data['themes']),
    );
  }

  static Map<String, String> _stringMap(dynamic value) {
    if (value is! Map) return const {};
    return Map<String, String>.from(value);
  }

  /// Ensures a bundle is loaded, hydrating from on-device storage and the
  /// seed asset (highest version wins) without any network call.
  ///
  /// Only when no bundle exists in either source (first launch of a
  /// seedless app) does this await [sync] so the first screens can render.
  static Future<StacBundle?> ensureLoaded() async {
    await _hydrate();
    if (_bundle != null) return _bundle;
    return sync();
  }

  /// Hydrates the in-memory bundle once from the store and seed asset.
  static Future<void> _hydrate() {
    if (_hydrated) return Future.value();
    return _inFlightHydration ??= _hydrateInternal().whenComplete(() {
      _hydrated = true;
      _inFlightHydration = null;
    });
  }

  static Future<void> _hydrateInternal() async {
    final projectId = _projectId;

    // Read the persisted bundle (schema mismatch reads as empty).
    var stored = await _store.read(projectId);
    if (stored != null && stored.projectId != projectId) {
      // Stale data from another project: clear it.
      Log.w(
        'StacBundleService: Stored bundle belongs to project '
        '${stored.projectId}, expected $projectId — clearing',
      );
      await _store.clear(projectId);
      stored = null;
    }

    // Read the seed asset shipped with the app, when configured.
    final seed = await _readSeed(projectId);

    // Highest version wins (an app-store update can ship a seed newer than
    // the cached bundle, and vice versa).
    if (seed != null && (stored == null || seed.version > stored.version)) {
      _bundle = seed;
      await _store.write(seed);
      Log.d('StacBundleService: Hydrated from seed bundle v${seed.version}');
    } else if (stored != null) {
      _bundle = stored;
      Log.d('StacBundleService: Hydrated from stored bundle v${stored.version}');
    }
  }

  /// Loads and parses the seed bundle asset, tolerating a missing or
  /// malformed asset.
  static Future<StacBundle?> _readSeed(String projectId) async {
    final seedAsset = _config.seedAsset;
    if (seedAsset == null) return null;

    try {
      final raw = await _assetReader(seedAsset);
      final data = jsonDecode(raw);
      if (data is! Map) {
        Log.w('StacBundleService: Seed asset $seedAsset is not a JSON object');
        return null;
      }

      final map = Map<String, dynamic>.from(data);
      // Seed bundles written by `stac deploy` carry no fetchedAt.
      map.putIfAbsent('fetchedAt', () => DateTime.now().toIso8601String());

      final seed = StacBundle.fromJson(map);
      if (seed.projectId != projectId) {
        Log.w(
          'StacBundleService: Seed bundle belongs to project '
          '${seed.projectId}, expected $projectId — ignoring',
        );
        return null;
      }
      return seed;
    } catch (e) {
      // Missing or unreadable seed asset is not an error.
      Log.d('StacBundleService: No usable seed bundle at $seedAsset ($e)');
      return null;
    }
  }

  /// Returns the Stac JSON string for the screen [name] from the bundle,
  /// or `null` if the screen is not in the bundle.
  static Future<String?> getScreenJson(String name) async {
    final bundle = await ensureLoaded();
    return bundle?.screen(name);
  }

  /// Returns the Stac JSON string for the theme [name] from the bundle,
  /// or `null` if the theme is not in the bundle.
  static Future<String?> getThemeJson(String name) async {
    final bundle = await ensureLoaded();
    return bundle?.theme(name);
  }

  /// Clears the persisted and in-memory bundle for the current project.
  static Future<bool> clear() async {
    _bundle = null;
    return _store.clear(_projectId);
  }

  /// Resets all static state; for tests only.
  @visibleForTesting
  static void reset() {
    _bundle = null;
    _hydrated = false;
    _inFlightHydration = null;
    _inFlightSync = null;
    _dio = _createDio();
    _store = const SharedPreferencesBundleStore();
    _assetReader = rootBundle.loadString;
    _updatesController.close();
    _updatesController = StreamController<StacBundle>.broadcast();
  }
}
