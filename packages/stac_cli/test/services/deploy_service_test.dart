import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path/path.dart' as p;
import 'package:stac_cli/src/config/env.dart';
import 'package:stac_cli/src/exceptions/stac_exception.dart';
import 'package:stac_cli/src/services/deploy_service.dart';
import 'package:stac_cli/src/utils/http_client.dart';
import 'package:test/test.dart';

const _projectId = 'test-project';

/// Hand-rolled fake for [HttpClientService]; records every POST and answers
/// with the injected handler.
class _FakeHttpClientService implements HttpClientService {
  _FakeHttpClientService(this._onPost);

  final Future<Response<dynamic>> Function(String url, dynamic data) _onPost;

  final List<({String url, dynamic data})> postCalls = [];

  @override
  Future<Response<dynamic>> post(String path, {dynamic data}) async {
    postCalls.add((url: path, data: data));
    return _onPost(path, data);
  }

  @override
  Future<Response<dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) => throw UnimplementedError('GET is not expected in these tests');

  @override
  Future<Response<dynamic>> put(String path, {dynamic data}) =>
      throw UnimplementedError('PUT is not expected in these tests');

  @override
  Future<Response<dynamic>> delete(String path) =>
      throw UnimplementedError('DELETE is not expected in these tests');
}

Response<dynamic> _jsonResponse(
  String url,
  int statusCode,
  Map<String, dynamic> body,
) {
  return Response<dynamic>(
    requestOptions: RequestOptions(path: url),
    statusCode: statusCode,
    data: body,
  );
}

/// Creates a temporary fixture project with `lib/default_stac_options.dart`
/// and a populated `stac/.build` directory. Returns the project path.
Future<String> _createFixtureProject({
  Map<String, String> screens = const {},
  Map<String, String> themes = const {},
}) async {
  final dir = await Directory.systemTemp.createTemp('stac_cli_deploy_test_');
  final projectDir = dir.path;

  final optionsFile = File(
    p.join(projectDir, 'lib', 'default_stac_options.dart'),
  );
  await optionsFile.create(recursive: true);
  await optionsFile.writeAsString('''
const defaultStacOptions = StacOptions(
  name: 'Test',
  description: 'Test project',
  projectId: '$_projectId',
  sourceDir: 'stac',
  outputDir: 'stac/.build',
);
''');

  await Directory(p.join(projectDir, 'stac', '.build')).create(recursive: true);
  for (final entry in screens.entries) {
    final file = File(
      p.join(projectDir, 'stac', '.build', 'screens', '${entry.key}.json'),
    );
    await file.create(recursive: true);
    await file.writeAsString(entry.value);
  }
  for (final entry in themes.entries) {
    final file = File(
      p.join(projectDir, 'stac', '.build', 'themes', '${entry.key}.json'),
    );
    await file.create(recursive: true);
    await file.writeAsString(entry.value);
  }

  addTearDown(() => dir.delete(recursive: true));
  return projectDir;
}

/// Runs [body] capturing everything printed through [ConsoleLogger]
/// (which uses `print` under the hood) and returns the captured lines.
Future<List<String>> _capturePrints(Future<void> Function() body) async {
  final lines = <String>[];
  await runZoned(
    body,
    zoneSpecification: ZoneSpecification(
      print: (self, parent, zone, line) => lines.add(line),
    ),
  );
  return lines;
}

void main() {
  const screensFixture = {
    'home': '{"type":"scaffold","body":{"type":"text","data":"Home"}}',
    'profile': '{"type":"scaffold","body":{"type":"text","data":"Profile"}}',
  };
  const themesFixture = {'light': '{"brightness":"light"}'};

  setUpAll(() {
    // Values are only used as fallbacks when the real variables are absent
    // from the process environment (configureEnvironment keeps OS env wins).
    configureEnvironment({
      'STAC_BASE_API_URL': 'https://api.stac.test',
      'STAC_GOOGLE_CLIENT_ID': 'test-client-id',
      'STAC_FIREBASE_API_KEY': 'test-firebase-key',
    });
  });

  group('DeployService.deploy (bundle mode)', () {
    test(
      'sends a single POST to /bundles with correctly assembled maps',
      () async {
        final projectDir = await _createFixtureProject(
          screens: screensFixture,
          themes: themesFixture,
        );
        final client = _FakeHttpClientService(
          (url, data) async => _jsonResponse(url, 201, {
            'projectId': _projectId,
            'version': 3,
            'etag': '"3"',
            'checksum': 'server-checksum',
            'deployedAt': '2026-07-03T00:00:00.000Z',
          }),
        );

        await DeployService(httpClient: client).deploy(projectPath: projectDir);

        expect(client.postCalls, hasLength(1));
        final call = client.postCalls.single;
        expect(call.url, '${env.baseApiUrl}/bundles');

        final payload = call.data as Map<String, dynamic>;
        expect(payload['projectId'], _projectId);
        expect(payload['screens'], equals(screensFixture));
        expect(payload['themes'], equals(themesFixture));
        expect(
          payload['checksum'],
          DeployService.computeBundleChecksum(
            projectId: _projectId,
            screens: screensFixture,
            themes: themesFixture,
          ),
        );
      },
    );

    test('writes the seed asset using the server response version', () async {
      final projectDir = await _createFixtureProject(
        screens: screensFixture,
        themes: themesFixture,
      );
      final client = _FakeHttpClientService(
        (url, data) async => _jsonResponse(url, 201, {
          'projectId': _projectId,
          'version': 7,
          'etag': '"7"',
          'checksum': 'authoritative-server-checksum',
          'deployedAt': '2026-07-03T00:00:00.000Z',
        }),
      );

      await DeployService(httpClient: client).deploy(projectPath: projectDir);

      final seedFile = File(p.join(projectDir, 'assets', 'stac_bundle.json'));
      expect(seedFile.existsSync(), isTrue);

      final seed =
          jsonDecode(await seedFile.readAsString()) as Map<String, dynamic>;
      expect(seed['projectId'], _projectId);
      expect(seed['version'], 7);
      expect(seed['etag'], '"7"');
      expect(seed['checksum'], 'authoritative-server-checksum');
      expect(seed['screens'], equals(screensFixture));
      expect(seed['themes'], equals(themesFixture));
    });

    test(
      'treats a 200 noop response as success and refreshes the seed',
      () async {
        final projectDir = await _createFixtureProject(
          screens: screensFixture,
          themes: themesFixture,
        );
        final client = _FakeHttpClientService(
          (url, data) async => _jsonResponse(url, 200, {
            'projectId': _projectId,
            'version': 5,
            'etag': '"5"',
            'checksum': 'unchanged-checksum',
            'noop': true,
          }),
        );

        await DeployService(httpClient: client).deploy(projectPath: projectDir);

        expect(client.postCalls, hasLength(1));
        final seedFile = File(p.join(projectDir, 'assets', 'stac_bundle.json'));
        final seed =
            jsonDecode(await seedFile.readAsString()) as Map<String, dynamic>;
        expect(seed['version'], 5);
      },
    );

    test('throws StacException on a non-2xx response', () async {
      final projectDir = await _createFixtureProject(
        screens: screensFixture,
        themes: themesFixture,
      );
      final client = _FakeHttpClientService(
        (url, data) async =>
            _jsonResponse(url, 500, {'error': 'internal error'}),
      );

      await expectLater(
        DeployService(httpClient: client).deploy(projectPath: projectDir),
        throwsA(isA<StacException>()),
      );

      // Atomic: nothing was applied, so no seed asset is written either.
      expect(
        File(p.join(projectDir, 'assets', 'stac_bundle.json')).existsSync(),
        isFalse,
      );
    });

    test('propagates HTTP-layer failures as StacException', () async {
      final projectDir = await _createFixtureProject(
        screens: screensFixture,
        themes: themesFixture,
      );
      final client = _FakeHttpClientService(
        (url, data) async => throw StacException(
          'HTTP request failed (503) for $url: service unavailable',
        ),
      );

      await expectLater(
        DeployService(httpClient: client).deploy(projectPath: projectDir),
        throwsA(isA<StacException>()),
      );
    });

    test(
      'versionless success response warns and skips the seed write',
      () async {
        final projectDir = await _createFixtureProject(
          screens: screensFixture,
          themes: themesFixture,
        );
        final client = _FakeHttpClientService(
          (url, data) async => _jsonResponse(url, 201, {'status': 'ok'}),
        );

        final prints = await _capturePrints(
          () =>
              DeployService(httpClient: client).deploy(projectPath: projectDir),
        );

        // The deploy itself is still a success and never logs "vnull".
        final output = prints.join('\n');
        expect(output, isNot(contains('vnull')));
        expect(
          output,
          contains('✓ Deployed bundle (server did not return a version)'),
        );
        expect(output, contains('[WARN]'));
        expect(output, contains('did not include a bundle version'));

        // No seed with a null version is ever written.
        expect(
          File(p.join(projectDir, 'assets', 'stac_bundle.json')).existsSync(),
          isFalse,
        );
      },
    );

    test(
      'warns when the seed is declared as bare "assets" (no trailing slash)',
      () async {
        final projectDir = await _createFixtureProject(screens: screensFixture);
        // Flutter only directory-includes `assets/`; a bare `assets` entry
        // does not cover assets/stac_bundle.json.
        File(p.join(projectDir, 'pubspec.yaml')).writeAsStringSync('''
name: fixture
flutter:
  assets:
    - assets
''');
        final client = _FakeHttpClientService(
          (url, data) async => _jsonResponse(url, 201, {
            'projectId': _projectId,
            'version': 1,
            'etag': '"1"',
            'checksum': 'c',
          }),
        );

        final prints = await _capturePrints(
          () =>
              DeployService(httpClient: client).deploy(projectPath: projectDir),
        );

        expect(prints.join('\n'), contains('not declared as a Flutter asset'));
      },
    );

    test('accepts "assets/" directory entry as declared', () async {
      final projectDir = await _createFixtureProject(screens: screensFixture);
      File(p.join(projectDir, 'pubspec.yaml')).writeAsStringSync('''
name: fixture
flutter:
  assets:
    - assets/
''');
      final client = _FakeHttpClientService(
        (url, data) async => _jsonResponse(url, 201, {
          'projectId': _projectId,
          'version': 1,
          'etag': '"1"',
          'checksum': 'c',
        }),
      );

      final prints = await _capturePrints(
        () => DeployService(httpClient: client).deploy(projectPath: projectDir),
      );

      expect(
        prints.join('\n'),
        isNot(contains('not declared as a Flutter asset')),
      );
    });

    test('throws StacException when there is nothing to deploy', () async {
      final projectDir = await _createFixtureProject();
      final client = _FakeHttpClientService(
        (url, data) async => _jsonResponse(url, 201, const {}),
      );

      await expectLater(
        DeployService(httpClient: client).deploy(projectPath: projectDir),
        throwsA(isA<StacException>()),
      );
      expect(client.postCalls, isEmpty);
    });
  });

  group('DeployService.computeBundleChecksum', () {
    test('is stable across map insertion orders', () {
      final a = DeployService.computeBundleChecksum(
        projectId: _projectId,
        screens: {'a': '1', 'b': '2'},
        themes: {'x': '9', 'y': '8'},
      );
      final b = DeployService.computeBundleChecksum(
        projectId: _projectId,
        screens: {'b': '2', 'a': '1'},
        themes: {'y': '8', 'x': '9'},
      );
      expect(a, b);
    });

    test('changes when content changes', () {
      final a = DeployService.computeBundleChecksum(
        projectId: _projectId,
        screens: {'a': '1'},
        themes: {},
      );
      final b = DeployService.computeBundleChecksum(
        projectId: _projectId,
        screens: {'a': '2'},
        themes: {},
      );
      final c = DeployService.computeBundleChecksum(
        projectId: 'other-project',
        screens: {'a': '1'},
        themes: {},
      );
      expect(a, isNot(b));
      expect(a, isNot(c));
    });
  });
}
