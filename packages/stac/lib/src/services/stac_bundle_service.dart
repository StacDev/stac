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

  /// How long [ensureLoaded] waits after a failed sync before triggering
  /// another automatic sync. Explicit [sync] calls are never backed off.
  static const Duration _syncFailureBackoff = Duration(seconds: 30);

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
  static set assetReader(StacBundleAssetReader reader) => _assetReader = reader;

  static DateTime Function() _now = DateTime.now;

  /// Overrides the clock used for sync-failure backoff; for tests only.
  @visibleForTesting
  static set clock(DateTime Function() clock) => _now = clock;

  /// The bundle currently held in memory, if any.
  static StacBundle? _bundle;

  /// The bundle currently held in memory, if any.
  static StacBundle? get current => _bundle;

  /// Whether hydration (store + seed asset) has completed.
  static bool _hydrated = false;

  /// The projectId the in-memory state ([_bundle], [_hydrated], failure
  /// tracking) belongs to. A re-initialize with a different project drops
  /// all of it (see [_ensureProject]).
  static String? _activeProjectId;

  /// Generation counter, bumped by [clear] and by a projectId switch.
  /// In-flight hydrations/syncs capture it at start and discard their
  /// results when it has changed by the time they complete.
  static int _epoch = 0;

  /// When the last sync failed (non-200/304/204 status, malformed body, or
  /// exception); cleared by any successful sync. Drives the [ensureLoaded]
  /// backoff.
  static DateTime? _lastSyncFailureAt;

  /// Whether the last sync failure was a project-level rejection
  /// (HTTP 403/404 from the bundles endpoint).
  static bool _projectRejected = false;

  /// Whether the last bundle sync failed because the bundles endpoint
  /// rejected this project (HTTP 403/404).
  ///
  /// Internal signal for `StacCloud`: when no bundle exists and the project
  /// was rejected, the legacy per-artifact fallback is skipped so failed
  /// renders don't hammer the per-artifact endpoints.
  static bool get lastSyncProjectRejected => _projectRejected;

  /// Whether the missing-options warning has been logged already.
  static bool _warnedMissingOptions = false;

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

  /// The bundles endpoint URL, with any trailing slash on the configured
  /// base URL normalized away.
  static String get _bundlesUrl {
    var baseUrl = _config.baseUrl;
    while (baseUrl.endsWith('/')) {
      baseUrl = baseUrl.substring(0, baseUrl.length - 1);
    }
    return '$baseUrl/bundles';
  }

  /// Drops all in-memory bundle state and invalidates any in-flight
  /// hydration or sync (their results are discarded via the epoch guard).
  static void _invalidate() {
    _epoch++;
    _bundle = null;
    _hydrated = false;
    _inFlightHydration = null;
    _inFlightSync = null;
    _lastSyncFailureAt = null;
    _projectRejected = false;
  }

  /// Re-validates the in-memory state against the current
  /// `StacService.options.projectId`; a switch (re-initialize with another
  /// project) drops the old project's bundle so it is never served.
  static void _ensureProject() {
    final projectId = _projectId;
    if (_activeProjectId == projectId) return;
    if (_activeProjectId != null) {
      Log.d(
        'StacBundleService: Project switched from $_activeProjectId to '
        '$projectId — dropping in-memory bundle state',
      );
      _invalidate();
    }
    _activeProjectId = projectId;
  }

  static void _recordSyncFailure({required bool projectRejected}) {
    _lastSyncFailureAt = _now();
    _projectRejected = projectRejected;
  }

  static void _clearSyncFailure() {
    _lastSyncFailureAt = null;
    _projectRejected = false;
  }

  /// Runs a conditional bundle version check against the server.
  ///
  /// Sends `GET {baseUrl}/bundles?projectId=..&since=<version>` with
  /// `If-None-Match` when an etag is cached. A `200` parses, persists and
  /// swaps in the new bundle (and emits on [updates]); `304`/`204` keep the
  /// current bundle; errors (offline, server failures) return the stale
  /// bundle. Concurrent calls are deduped onto a single in-flight request.
  ///
  /// Returns `null` (with a single warning) when `Stac.initialize` was
  /// called without options — unawaited resume/poll triggers must never
  /// throw.
  ///
  /// Set [force] to skip the conditional headers and re-download the body
  /// unconditionally. A forced call made while a conditional sync is in
  /// flight runs after it completes instead of being coalesced into it.
  static Future<StacBundle?> sync({bool force = false}) {
    if (StacService.options == null) {
      if (!_warnedMissingOptions) {
        _warnedMissingOptions = true;
        Log.w(
          'StacBundleService: Skipping bundle sync — StacOptions is not set',
        );
      }
      return Future<StacBundle?>.value();
    }

    final inFlight = _inFlightSync;
    if (inFlight != null) {
      if (!force) return inFlight;
      // Do not silently downgrade a forced sync into the in-flight
      // conditional one: chain it after the in-flight sync completes.
      return inFlight.then<StacBundle?>(
        (_) => sync(force: true),
        onError: (Object _) => sync(force: true),
      );
    }

    late final Future<StacBundle?> future;
    future = _syncInternal(force: force).whenComplete(() {
      // clear()/project switches may have already detached this future.
      if (identical(_inFlightSync, future)) _inFlightSync = null;
    });
    _inFlightSync = future;
    return future;
  }

  static Future<StacBundle?> _syncInternal({required bool force}) async {
    _ensureProject();
    final projectId = _projectId;
    final epoch = _epoch;

    // Hydrate first so the request can be conditional on the cached version.
    await _hydrate();
    if (epoch != _epoch) return null;

    final cached = _bundle;
    try {
      final response = await _dio.get<dynamic>(
        _bundlesUrl,
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

      if (epoch != _epoch) {
        // clear() or a project switch happened mid-request: the result
        // belongs to state that no longer exists.
        Log.d('StacBundleService: Discarding sync result from a stale epoch');
        return null;
      }

      final statusCode = response.statusCode;

      if (statusCode == 200) {
        final data = response.data;
        if (data is! Map) {
          Log.w('StacBundleService: Unexpected bundle response body');
          _recordSyncFailure(projectRejected: false);
          return cached;
        }

        final bundle = _bundleFromResponse(
          Map<String, dynamic>.from(data),
          projectId: projectId,
          etagHeader: response.headers.value('etag'),
        );
        if (bundle == null) {
          Log.w('StacBundleService: Bundle response is missing a version');
          _recordSyncFailure(projectRejected: false);
          return cached;
        }

        _bundle = bundle;
        _clearSyncFailure();
        final wrote = await _store.write(bundle);
        if (epoch != _epoch) {
          // clear()/project switch raced the store write: undo it so the
          // cleared bundle is not resurrected from disk.
          await _store.clear(bundle.projectId);
          return null;
        }
        if (!wrote) {
          Log.w(
            'StacBundleService: Failed to persist bundle v${bundle.version} '
            'to the store',
          );
        }
        _updatesController.add(bundle);
        Log.d('StacBundleService: Synced bundle v${bundle.version}');
        return bundle;
      }

      if (statusCode == 304 || statusCode == 204) {
        // Not modified: keep the cached bundle.
        _clearSyncFailure();
        return cached;
      }

      _recordSyncFailure(
        projectRejected: statusCode == 403 || statusCode == 404,
      );
      Log.w(
        'StacBundleService: Bundle sync failed with status $statusCode, '
        'using ${cached == null ? 'no bundle' : 'stale bundle v${cached.version}'}',
      );
      return cached;
    } catch (e) {
      if (epoch != _epoch) return null;
      _recordSyncFailure(projectRejected: false);
      // Offline or server error: keep serving the stale bundle.
      if (e is DioException) {
        // Normal offline/server noise.
        Log.d('StacBundleService: Bundle sync failed ($e), using stale bundle');
      } else {
        // Anything else is a contract break (e.g. malformed 200 body).
        Log.w(
          'StacBundleService: Bundle sync failed with unexpected error ($e), '
          'using stale bundle',
        );
      }
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
  /// After a failed sync, the automatic sync is suppressed for
  /// [_syncFailureBackoff] so widget rebuilds don't hammer the server;
  /// explicit [sync] calls are never backed off.
  static Future<StacBundle?> ensureLoaded() async {
    await _hydrate();
    if (_bundle != null) return _bundle;

    final failedAt = _lastSyncFailureAt;
    if (failedAt != null && _now().difference(failedAt) < _syncFailureBackoff) {
      return null;
    }
    return sync();
  }

  /// Hydrates the in-memory bundle once from the store and seed asset.
  static Future<void> _hydrate() {
    _ensureProject();
    if (_hydrated) return Future.value();
    final existing = _inFlightHydration;
    if (existing != null) return existing;

    final epoch = _epoch;
    late final Future<void> future;
    future = _hydrateInternal(epoch)
        .then((_) {
          // Only a hydration that completed successfully (and still belongs
          // to the current epoch) marks the state hydrated.
          if (epoch == _epoch) _hydrated = true;
        })
        .whenComplete(() {
          if (identical(_inFlightHydration, future)) _inFlightHydration = null;
        });
    _inFlightHydration = future;
    return future;
  }

  static Future<void> _hydrateInternal(int epoch) async {
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

    if (epoch != _epoch) return;

    // Highest version wins (an app-store update can ship a seed newer than
    // the cached bundle, and vice versa).
    if (seed != null && (stored == null || seed.version > stored.version)) {
      _bundle = seed;
      final wrote = await _store.write(seed);
      if (!wrote) {
        Log.w(
          'StacBundleService: Failed to persist seed bundle v${seed.version} '
          'to the store',
        );
      }
      Log.d('StacBundleService: Hydrated from seed bundle v${seed.version}');
    } else if (stored != null) {
      _bundle = stored;
      Log.d(
        'StacBundleService: Hydrated from stored bundle v${stored.version}',
      );
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
  ///
  /// Any in-flight sync result is discarded (it belongs to the state that
  /// was just cleared), and the next [ensureLoaded] re-hydrates from the
  /// seed asset/store as on a first launch.
  static Future<bool> clear() async {
    final projectId = _projectId;
    _invalidate();
    _activeProjectId = projectId;
    return _store.clear(projectId);
  }

  /// Resets all static state; for tests only.
  @visibleForTesting
  static void reset() {
    _invalidate();
    _epoch = 0;
    _activeProjectId = null;
    _warnedMissingOptions = false;
    _now = DateTime.now;
    _dio = _createDio();
    _store = const SharedPreferencesBundleStore();
    _assetReader = rootBundle.loadString;
    _updatesController.close();
    _updatesController = StreamController<StacBundle>.broadcast();
  }
}
