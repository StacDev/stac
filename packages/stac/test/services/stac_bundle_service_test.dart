import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stac/src/framework/stac_service.dart';
import 'package:stac/src/models/stac_bundle.dart';
import 'package:stac/src/models/stac_bundle_config.dart';
import 'package:stac/src/services/stac_bundle_service.dart';
import 'package:stac/src/services/stac_bundle_store.dart';
import 'package:stac/src/services/stac_bundle_updater.dart';
import 'package:stac/src/services/stac_cloud.dart';
import 'package:stac_core/stac_core.dart';

/// Fake [HttpClientAdapter] that records requests and answers via [handler].
class _FakeHttpClientAdapter implements HttpClientAdapter {
  FutureOr<ResponseBody> Function(RequestOptions options) handler = (options) {
    throw StateError('Unexpected network request to ${options.uri}');
  };

  final List<RequestOptions> requests = [];

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    requests.add(options);
    return handler(options);
  }

  @override
  void close({bool force = false}) {}
}

/// [StacBundleStore] spy that counts operations and delegates to [inner].
class _SpyBundleStore implements StacBundleStore {
  final StacBundleStore inner = const SharedPreferencesBundleStore();
  int readCount = 0;
  int writeCount = 0;
  int clearCount = 0;

  @override
  Future<StacBundle?> read(String projectId) {
    readCount++;
    return inner.read(projectId);
  }

  @override
  Future<bool> write(StacBundle bundle) {
    writeCount++;
    return inner.write(bundle);
  }

  @override
  Future<bool> clear(String projectId) {
    clearCount++;
    return inner.clear(projectId);
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const projectId = 'proj_1';

  late _FakeHttpClientAdapter adapter;

  Map<String, dynamic> bundleBody({
    String projectId = projectId,
    int version = 1,
    Map<String, String>? screens,
    Map<String, String>? themes,
  }) {
    return <String, dynamic>{
      'projectId': projectId,
      'version': version,
      'etag': '"$version"',
      'checksum': 'checksum-v$version',
      'screens': screens ?? {'home': '{"type":"text","data":"v$version"}'},
      'themes': themes ?? {'light': '{"brightness":"light-v$version"}'},
    };
  }

  ResponseBody jsonResponse(
    Map<String, dynamic> body, {
    int statusCode = 200,
    Map<String, List<String>>? headers,
  }) {
    return ResponseBody.fromString(
      jsonEncode(body),
      statusCode,
      headers: {
        Headers.contentTypeHeader: ['application/json'],
        ...?headers,
      },
    );
  }

  ResponseBody statusResponse(int statusCode) {
    return ResponseBody.fromString('', statusCode);
  }

  StacBundle storedBundle({
    String projectId = projectId,
    int version = 1,
    Map<String, String>? screens,
    Map<String, String>? themes,
  }) {
    return StacBundle(
      projectId: projectId,
      version: version,
      etag: '"$version"',
      checksum: 'checksum-v$version',
      fetchedAt: DateTime(2026, 7, 1),
      screens: screens ?? {'home': '{"type":"text","data":"v$version"}'},
      themes: themes ?? {'light': '{"brightness":"light-v$version"}'},
    );
  }

  Future<void> initStac({
    String projectId = projectId,
    StacBundleConfig bundleConfig = const StacBundleConfig(
      enabled: true,
      prefetchOnInit: false,
    ),
  }) {
    return StacService.initialize(
      options: StacOptions(name: 'Test', projectId: projectId),
      bundleConfig: bundleConfig,
    );
  }

  String? headerOf(RequestOptions options, String name) {
    for (final entry in options.headers.entries) {
      if (entry.key.toLowerCase() == name.toLowerCase()) {
        return entry.value?.toString();
      }
    }
    return null;
  }

  Future<void> pumpUntil(
    bool Function() condition, {
    Duration timeout = const Duration(seconds: 5),
  }) async {
    final deadline = DateTime.now().add(timeout);
    while (!condition() && DateTime.now().isBefore(deadline)) {
      await Future<void>.delayed(const Duration(milliseconds: 5));
    }
  }

  setUp(() {
    SharedPreferences.setMockInitialValues({});
    StacBundleUpdater.stop();
    StacBundleService.reset();
    StacCloud.reset();

    adapter = _FakeHttpClientAdapter();
    StacBundleService.dio = Dio()..httpClientAdapter = adapter;
  });

  tearDown(() {
    StacBundleUpdater.stop();
    StacBundleService.reset();
    StacCloud.reset();
  });

  group('sync', () {
    test('200 parses, persists and swaps the bundle', () async {
      adapter.handler = (options) => jsonResponse(
        bundleBody(version: 1),
        headers: {
          'etag': ['"1"'],
        },
      );
      await initStac();

      final result = await StacBundleService.sync();

      expect(result, isNotNull);
      expect(result!.version, 1);
      expect(result.projectId, projectId);
      expect(result.etag, '"1"');
      expect(StacBundleService.current?.version, 1);

      // Persisted blob + schema version.
      final prefs = await SharedPreferences.getInstance();
      final blob = prefs.getString('stac_bundle_$projectId');
      expect(blob, isNotNull);
      expect(StacBundle.fromJsonString(blob!).version, 1);
      expect(
        prefs.getInt('stac_bundle_schema_$projectId'),
        SharedPreferencesBundleStore.bundleSchemaVersion,
      );

      // The first request is unconditional (nothing cached).
      final request = adapter.requests.single;
      expect(request.uri.queryParameters['projectId'], projectId);
      expect(request.uri.queryParameters.containsKey('since'), isFalse);
      expect(headerOf(request, 'If-None-Match'), isNull);

      // Lookups now serve from the synced bundle with no further requests.
      expect(
        await StacBundleService.getScreenJson('home'),
        '{"type":"text","data":"v1"}',
      );
      expect(adapter.requests, hasLength(1));
    });

    test(
      'sends If-None-Match and since; 304 keeps cache without rewrite',
      () async {
        await const SharedPreferencesBundleStore().write(storedBundle());
        final spy = _SpyBundleStore();
        StacBundleService.store = spy;
        adapter.handler = (options) => statusResponse(304);
        await initStac();

        final result = await StacBundleService.sync();

        final request = adapter.requests.single;
        expect(request.uri.queryParameters['since'], '1');
        expect(headerOf(request, 'If-None-Match'), '"1"');

        expect(result?.version, 1);
        expect(StacBundleService.current?.version, 1);
        expect(spy.writeCount, 0);
      },
    );

    test('204 keeps cache without rewrite', () async {
      await const SharedPreferencesBundleStore().write(storedBundle());
      final spy = _SpyBundleStore();
      StacBundleService.store = spy;
      adapter.handler = (options) => statusResponse(204);
      await initStac();

      final result = await StacBundleService.sync();

      expect(result?.version, 1);
      expect(spy.writeCount, 0);
    });

    test('version bump swaps memory and store', () async {
      await const SharedPreferencesBundleStore().write(storedBundle());
      adapter.handler = (options) => jsonResponse(bundleBody(version: 2));
      await initStac();

      expect(await StacBundleService.getScreenJson('home'), contains('v1'));

      final result = await StacBundleService.sync();

      expect(result?.version, 2);
      expect(StacBundleService.current?.version, 2);
      expect(
        await StacBundleService.getScreenJson('home'),
        '{"type":"text","data":"v2"}',
      );

      final persisted = await const SharedPreferencesBundleStore().read(
        projectId,
      );
      expect(persisted?.version, 2);
    });

    test('offline sync returns the stale bundle', () async {
      await const SharedPreferencesBundleStore().write(storedBundle());
      adapter.handler = (options) => throw Exception('offline');
      await initStac();

      final result = await StacBundleService.sync();

      expect(result?.version, 1);
      expect(StacBundleService.current?.version, 1);
      expect(await StacBundleService.getScreenJson('home'), contains('v1'));
    });

    test('server error status returns the stale bundle', () async {
      await const SharedPreferencesBundleStore().write(storedBundle());
      adapter.handler = (options) =>
          jsonResponse({'error': 'limit'}, statusCode: 403);
      await initStac();

      final result = await StacBundleService.sync();

      expect(result?.version, 1);
      expect(StacBundleService.current?.version, 1);
    });

    test(
      'forced sync during an in-flight sync is chained, not dropped',
      () async {
        await const SharedPreferencesBundleStore().write(storedBundle());
        await initStac();

        final gate = Completer<void>();
        adapter.handler = (options) async {
          if (adapter.requests.length == 1) {
            await gate.future;
            return statusResponse(304);
          }
          return jsonResponse(bundleBody(version: 2));
        };

        final first = StacBundleService.sync();
        await pumpUntil(() => adapter.requests.isNotEmpty);

        final forced = StacBundleService.sync(force: true);
        // The forced sync waits for the in-flight one; only one request so far.
        expect(adapter.requests, hasLength(1));

        gate.complete();

        expect((await first)?.version, 1);
        expect((await forced)?.version, 2);
        expect(adapter.requests, hasLength(2));

        // The chained request really was forced: no conditional headers.
        final forcedRequest = adapter.requests[1];
        expect(forcedRequest.uri.queryParameters.containsKey('since'), isFalse);
        expect(headerOf(forcedRequest, 'If-None-Match'), isNull);
      },
    );

    test(
      'trailing slash on baseUrl is normalized in the bundles URL',
      () async {
        adapter.handler = (options) => jsonResponse(bundleBody(version: 1));
        await initStac(
          bundleConfig: const StacBundleConfig(
            enabled: true,
            prefetchOnInit: false,
            baseUrl: 'https://api.stac.dev/',
          ),
        );

        final result = await StacBundleService.sync();

        expect(result?.version, 1);
        expect(adapter.requests.single.uri.path, '/bundles');
      },
    );

    test('sync without options returns null instead of throwing', () async {
      await StacService.initialize(
        bundleConfig: const StacBundleConfig(
          enabled: true,
          prefetchOnInit: false,
        ),
      );

      expect(await StacBundleService.sync(), isNull);

      // Resume/poll ticks go through the same entry point and must not
      // produce unhandled async exceptions either.
      StacBundleUpdater.instance!.didChangeAppLifecycleState(
        AppLifecycleState.resumed,
      );
      await Future<void>.delayed(const Duration(milliseconds: 20));

      expect(adapter.requests, isEmpty);
    });

    test('updates emits on 200 and not on 304', () async {
      await const SharedPreferencesBundleStore().write(storedBundle());
      await initStac();

      final events = <StacBundle>[];
      final subscription = StacBundleService.updates.listen(events.add);
      addTearDown(subscription.cancel);

      adapter.handler = (options) => jsonResponse(bundleBody(version: 2));
      await StacBundleService.sync();
      await Future<void>.delayed(Duration.zero);

      expect(events, hasLength(1));
      expect(events.single.version, 2);

      adapter.handler = (options) => statusResponse(304);
      await StacBundleService.sync();
      await Future<void>.delayed(Duration.zero);

      expect(events, hasLength(1));
    });
  });

  group('ensureLoaded', () {
    test('concurrent calls dedupe to a single network request', () async {
      adapter.handler = (options) => jsonResponse(bundleBody(version: 1));
      await initStac();

      final results = await Future.wait([
        StacBundleService.ensureLoaded(),
        StacBundleService.ensureLoaded(),
        StacBundleService.ensureLoaded(),
      ]);

      expect(adapter.requests, hasLength(1));
      for (final result in results) {
        expect(result?.version, 1);
      }
    });

    test('hydrated cache lookups make zero network calls', () async {
      await const SharedPreferencesBundleStore().write(storedBundle());
      await initStac();

      final result = await StacBundleService.ensureLoaded();

      expect(result?.version, 1);
      expect(
        await StacBundleService.getScreenJson('home'),
        '{"type":"text","data":"v1"}',
      );
      expect(
        await StacBundleService.getThemeJson('light'),
        '{"brightness":"light-v1"}',
      );
      expect(adapter.requests, isEmpty);
    });

    test('screen absent from the bundle returns null', () async {
      await const SharedPreferencesBundleStore().write(storedBundle());
      await initStac();

      expect(await StacBundleService.getScreenJson('deleted'), isNull);
      expect(await StacBundleService.getThemeJson('deleted'), isNull);
      expect(adapter.requests, isEmpty);
    });

    test('stored bundle for another project is cleared', () async {
      // A blob under this project's key that claims another projectId.
      SharedPreferences.setMockInitialValues({
        'stac_bundle_proj_2': storedBundle(
          projectId: projectId,
          version: 5,
        ).toJsonString(),
        'stac_bundle_schema_proj_2':
            SharedPreferencesBundleStore.bundleSchemaVersion,
      });
      adapter.handler = (options) =>
          jsonResponse(bundleBody(projectId: 'proj_2', version: 1));
      await initStac(projectId: 'proj_2');

      final result = await StacBundleService.ensureLoaded();

      // The mismatched bundle was discarded, so the request is unconditional.
      final request = adapter.requests.single;
      expect(request.uri.queryParameters.containsKey('since'), isFalse);

      expect(result?.projectId, 'proj_2');
      expect(result?.version, 1);

      final persisted = await const SharedPreferencesBundleStore().read(
        'proj_2',
      );
      expect(persisted?.projectId, 'proj_2');
      expect(persisted?.version, 1);
    });

    test('schema version mismatch reads as empty', () async {
      SharedPreferences.setMockInitialValues({
        'stac_bundle_$projectId': storedBundle(version: 5).toJsonString(),
        'stac_bundle_schema_$projectId': 999,
      });
      adapter.handler = (options) => jsonResponse(bundleBody(version: 1));
      await initStac();

      final result = await StacBundleService.ensureLoaded();

      expect(adapter.requests, hasLength(1));
      expect(result?.version, 1);
    });

    test(
      'backs off after a failed sync; explicit sync is not backed off',
      () async {
        var nowValue = DateTime(2026, 7, 22, 12);
        StacBundleService.clock = () => nowValue;
        adapter.handler = (options) => throw Exception('offline');
        await initStac();

        // First ensureLoaded triggers the sync, which fails.
        expect(await StacBundleService.ensureLoaded(), isNull);
        expect(adapter.requests, hasLength(1));

        // Within the backoff window ensureLoaded does not re-sync.
        expect(await StacBundleService.ensureLoaded(), isNull);
        expect(await StacBundleService.ensureLoaded(), isNull);
        expect(adapter.requests, hasLength(1));

        // An explicit sync call is never subject to the backoff.
        await StacBundleService.sync();
        expect(adapter.requests, hasLength(2));

        // Once the backoff window has passed, ensureLoaded syncs again.
        nowValue = nowValue.add(const Duration(seconds: 31));
        adapter.handler = (options) => jsonResponse(bundleBody(version: 1));
        expect((await StacBundleService.ensureLoaded())?.version, 1);
        expect(adapter.requests, hasLength(3));

        // The successful sync cleared the failure state.
        expect((await StacBundleService.ensureLoaded())?.version, 1);
        expect(adapter.requests, hasLength(3));
      },
    );
  });

  group('projectId switch', () {
    test(
      're-initialize with a different projectId drops the old bundle',
      () async {
        await const SharedPreferencesBundleStore().write(storedBundle());
        await const SharedPreferencesBundleStore().write(
          storedBundle(projectId: 'proj_2', version: 7),
        );
        await initStac();

        expect((await StacBundleService.ensureLoaded())?.projectId, projectId);

        await initStac(projectId: 'proj_2');

        final result = await StacBundleService.ensureLoaded();
        expect(result?.projectId, 'proj_2');
        expect(result?.version, 7);
        expect(StacBundleService.current?.projectId, 'proj_2');
        expect(adapter.requests, isEmpty);
      },
    );

    test('switching projects does not reuse the old project etag', () async {
      await const SharedPreferencesBundleStore().write(
        storedBundle(version: 5),
      );
      await initStac();
      expect((await StacBundleService.ensureLoaded())?.version, 5);

      adapter.handler = (options) =>
          jsonResponse(bundleBody(projectId: 'proj_2', version: 1));
      await initStac(projectId: 'proj_2');

      final result = await StacBundleService.sync();

      // No `since`/`If-None-Match` leaked from proj_1's bundle (etags are
      // version-shaped and collide across projects).
      final request = adapter.requests.single;
      expect(request.uri.queryParameters['projectId'], 'proj_2');
      expect(request.uri.queryParameters.containsKey('since'), isFalse);
      expect(headerOf(request, 'If-None-Match'), isNull);

      expect(result?.projectId, 'proj_2');
      expect(result?.version, 1);
    });
  });

  group('seed hydration', () {
    const seedConfig = StacBundleConfig(
      enabled: true,
      prefetchOnInit: false,
      seedAsset: 'assets/stac_bundle.json',
    );

    /// Seed bundle body as written by `stac deploy` (no fetchedAt).
    String seedJson({int version = 3, String projectId = projectId}) {
      return jsonEncode({
        'projectId': projectId,
        'version': version,
        'etag': '"$version"',
        'checksum': 'seed-checksum',
        'screens': {'home': '{"type":"text","data":"seed-v$version"}'},
        'themes': {'light': '{"brightness":"seed"}'},
      });
    }

    test('empty store hydrates from the seed asset offline', () async {
      StacBundleService.assetReader = (path) async {
        expect(path, 'assets/stac_bundle.json');
        return seedJson(version: 3);
      };
      await initStac(bundleConfig: seedConfig);

      final result = await StacBundleService.ensureLoaded();

      expect(result?.version, 3);
      expect(
        await StacBundleService.getScreenJson('home'),
        '{"type":"text","data":"seed-v3"}',
      );
      // No network call was made at any point.
      expect(adapter.requests, isEmpty);

      // The seed won, so it was persisted for the next launch.
      final persisted = await const SharedPreferencesBundleStore().read(
        projectId,
      );
      expect(persisted?.version, 3);
      expect(persisted?.etag, '"3"');
    });

    test('newer stored bundle wins over an older seed', () async {
      await const SharedPreferencesBundleStore().write(
        storedBundle(version: 2),
      );
      final spy = _SpyBundleStore();
      StacBundleService.store = spy;
      StacBundleService.assetReader = (path) async => seedJson(version: 1);
      await initStac(bundleConfig: seedConfig);

      final result = await StacBundleService.ensureLoaded();

      expect(result?.version, 2);
      expect(await StacBundleService.getScreenJson('home'), contains('v2'));
      expect(spy.writeCount, 0);
      expect(adapter.requests, isEmpty);
    });

    test(
      'newer seed wins over an older stored bundle and is persisted',
      () async {
        await const SharedPreferencesBundleStore().write(
          storedBundle(version: 1),
        );
        StacBundleService.assetReader = (path) async => seedJson(version: 3);
        await initStac(bundleConfig: seedConfig);

        final result = await StacBundleService.ensureLoaded();

        expect(result?.version, 3);
        expect(
          await StacBundleService.getScreenJson('home'),
          '{"type":"text","data":"seed-v3"}',
        );
        expect(adapter.requests, isEmpty);

        final persisted = await const SharedPreferencesBundleStore().read(
          projectId,
        );
        expect(persisted?.version, 3);
      },
    );

    test('missing seed asset is tolerated', () async {
      StacBundleService.assetReader = (path) async {
        throw FlutterError('Unable to load asset: $path');
      };
      adapter.handler = (options) => jsonResponse(bundleBody(version: 1));
      await initStac(bundleConfig: seedConfig);

      final result = await StacBundleService.ensureLoaded();

      // Falls back to a network sync as if no seed were configured.
      expect(result?.version, 1);
      expect(adapter.requests, hasLength(1));
    });

    test('seed for another project is ignored', () async {
      StacBundleService.assetReader = (path) async =>
          seedJson(version: 9, projectId: 'other_project');
      adapter.handler = (options) => jsonResponse(bundleBody(version: 1));
      await initStac(bundleConfig: seedConfig);

      final result = await StacBundleService.ensureLoaded();

      expect(result?.version, 1);
      expect(adapter.requests, hasLength(1));
    });

    test('clear() resets hydration so the seed re-hydrates', () async {
      var seedReads = 0;
      StacBundleService.assetReader = (path) async {
        seedReads++;
        return seedJson(version: 3);
      };
      await initStac(bundleConfig: seedConfig);

      expect((await StacBundleService.ensureLoaded())?.version, 3);
      expect(seedReads, 1);

      await StacBundleService.clear();
      expect(StacBundleService.current, isNull);

      // The next load re-hydrates from the seed — no restart, no network.
      final result = await StacBundleService.ensureLoaded();
      expect(result?.version, 3);
      expect(seedReads, 2);
      expect(adapter.requests, isEmpty);
    });
  });

  group('StacBundleUpdater', () {
    test('resume triggers a conditional sync', () async {
      await const SharedPreferencesBundleStore().write(storedBundle());
      adapter.handler = (options) => statusResponse(304);
      await initStac();

      final updater = StacBundleUpdater.instance;
      expect(updater, isNotNull);

      updater!.didChangeAppLifecycleState(AppLifecycleState.resumed);
      await pumpUntil(() => adapter.requests.isNotEmpty);

      final request = adapter.requests.single;
      expect(request.uri.queryParameters['since'], '1');
      expect(headerOf(request, 'If-None-Match'), '"1"');
    });

    test('resume does not sync when checkOnResume is off', () async {
      await const SharedPreferencesBundleStore().write(storedBundle());
      await initStac(
        bundleConfig: const StacBundleConfig(
          enabled: true,
          prefetchOnInit: false,
          checkOnResume: false,
        ),
      );

      StacBundleUpdater.instance!.didChangeAppLifecycleState(
        AppLifecycleState.resumed,
      );
      await Future<void>.delayed(const Duration(milliseconds: 20));

      expect(adapter.requests, isEmpty);
    });

    test(
      'polling interval triggers conditional syncs and pause cancels them',
      () async {
        await const SharedPreferencesBundleStore().write(storedBundle());
        adapter.handler = (options) => statusResponse(304);
        await initStac(
          bundleConfig: const StacBundleConfig(
            enabled: true,
            prefetchOnInit: false,
            checkOnResume: false,
            pollingInterval: Duration(milliseconds: 20),
          ),
        );

        await pumpUntil(() => adapter.requests.isNotEmpty);
        expect(adapter.requests, isNotEmpty);

        // Pausing cancels the timer: no further requests come in.
        StacBundleUpdater.instance!.didChangeAppLifecycleState(
          AppLifecycleState.paused,
        );
        await Future<void>.delayed(const Duration(milliseconds: 30));
        final countAfterPause = adapter.requests.length;
        await Future<void>.delayed(const Duration(milliseconds: 60));
        expect(adapter.requests.length, countAfterPause);
      },
    );

    test('re-initialize with bundle mode disabled stops the updater', () async {
      await initStac();
      expect(StacBundleUpdater.instance, isNotNull);

      await initStac(bundleConfig: const StacBundleConfig());

      expect(StacBundleUpdater.instance, isNull);
    });

    test(
      're-initialize re-arms the polling timer from the new config',
      () async {
        await const SharedPreferencesBundleStore().write(storedBundle());
        adapter.handler = (options) => statusResponse(304);
        await initStac(
          bundleConfig: const StacBundleConfig(
            enabled: true,
            prefetchOnInit: false,
            checkOnResume: false,
          ),
        );
        await Future<void>.delayed(const Duration(milliseconds: 40));
        expect(adapter.requests, isEmpty);

        // Re-initialize with polling on: the already-started updater must
        // pick up the new interval.
        await initStac(
          bundleConfig: const StacBundleConfig(
            enabled: true,
            prefetchOnInit: false,
            checkOnResume: false,
            pollingInterval: Duration(milliseconds: 20),
          ),
        );
        await pumpUntil(() => adapter.requests.isNotEmpty);
        expect(adapter.requests, isNotEmpty);

        // Re-initialize with polling off again: the timer is disarmed.
        await initStac(
          bundleConfig: const StacBundleConfig(
            enabled: true,
            prefetchOnInit: false,
            checkOnResume: false,
          ),
        );
        await Future<void>.delayed(const Duration(milliseconds: 10));
        final countAfterDisable = adapter.requests.length;
        await Future<void>.delayed(const Duration(milliseconds: 60));
        expect(adapter.requests.length, countAfterDisable);
      },
    );
  });

  group('clear', () {
    test('removes the persisted and in-memory bundle', () async {
      await const SharedPreferencesBundleStore().write(storedBundle());
      await initStac();

      expect(await StacBundleService.ensureLoaded(), isNotNull);

      await StacBundleService.clear();

      expect(StacBundleService.current, isNull);
      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getString('stac_bundle_$projectId'), isNull);
      expect(prefs.getInt('stac_bundle_schema_$projectId'), isNull);
    });

    test('an in-flight sync completing after clear() is discarded', () async {
      await initStac();

      final gate = Completer<void>();
      adapter.handler = (options) async {
        await gate.future;
        return jsonResponse(bundleBody(version: 5));
      };

      final syncFuture = StacBundleService.sync();
      await pumpUntil(() => adapter.requests.isNotEmpty);

      await StacBundleService.clear();
      gate.complete();

      // The cleared bundle is not resurrected in memory or in the store.
      expect(await syncFuture, isNull);
      expect(StacBundleService.current, isNull);
      expect(
        await const SharedPreferencesBundleStore().read(projectId),
        isNull,
      );
    });
  });

  group('StacCloud bundle mode', () {
    late _FakeHttpClientAdapter cloudAdapter;

    setUp(() {
      cloudAdapter = _FakeHttpClientAdapter();
      StacCloud.dio = Dio()..httpClientAdapter = cloudAdapter;
    });

    test(
      'project rejection (404) does not fall through to legacy fetch',
      () async {
        adapter.handler = (options) =>
            jsonResponse({'error': 'not found'}, statusCode: 404);
        await initStac();

        await expectLater(
          StacCloud.fetchScreen(routeName: 'home'),
          throwsA(isA<Exception>()),
        );

        // The bundles endpoint was hit once; /screens never.
        expect(adapter.requests, hasLength(1));
        expect(cloudAdapter.requests, isEmpty);

        // Rebuilds keep failing fast with no further network traffic
        // (ensureLoaded backoff + rejection short-circuit).
        await expectLater(
          StacCloud.fetchScreen(routeName: 'home'),
          throwsA(isA<Exception>()),
        );
        expect(adapter.requests, hasLength(1));
        expect(cloudAdapter.requests, isEmpty);
      },
    );

    test(
      'project rejection (403) does not fall through to legacy fetch',
      () async {
        adapter.handler = (options) =>
            jsonResponse({'error': 'forbidden'}, statusCode: 403);
        await initStac();

        await expectLater(
          StacCloud.fetchScreen(routeName: 'home'),
          throwsA(isA<Exception>()),
        );
        expect(cloudAdapter.requests, isEmpty);
      },
    );

    test(
      'artifact missing from a healthy bundle falls back to legacy fetch',
      () async {
        await const SharedPreferencesBundleStore().write(storedBundle());
        cloudAdapter.handler = (options) => jsonResponse({
          'name': 'missing',
          'stacJson': '{"type":"text","data":"legacy"}',
          'version': 9,
        });
        await initStac();

        final response = await StacCloud.fetchScreen(routeName: 'missing');

        expect(response, isNotNull);
        expect(response!.data['stacJson'], '{"type":"text","data":"legacy"}');

        final request = cloudAdapter.requests.single;
        expect(request.uri.path, '/screens');
        expect(request.uri.queryParameters['screenName'], 'missing');
        // The bundle was served from hydration; no bundle sync happened.
        expect(adapter.requests, isEmpty);
      },
    );
  });
}
