import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart' as path;

import '../config/env.dart';
import '../exceptions/stac_exception.dart';
import '../utils/console_logger.dart';
import '../utils/file_utils.dart';
import '../utils/http_client.dart';

/// Service for deploying Stac JSON files to the cloud
class DeployService {
  /// Creates a deploy service.
  ///
  /// [httpClient] is injectable for testing; when omitted the shared
  /// [HttpClientService.instance] is used (resolved lazily so constructing
  /// the service never touches the network configuration).
  DeployService({HttpClientService? httpClient})
    : _httpClientOverride = httpClient;

  final HttpClientService? _httpClientOverride;

  HttpClientService get _httpClient =>
      _httpClientOverride ?? HttpClientService.instance;

  /// Deploy all built JSON files (from stac/.build) to the cloud.
  ///
  /// Default: assembles all screens and themes into a single bundle and
  /// publishes it atomically with one POST to the Bundles API — any failure
  /// leaves the project untouched. Pass [legacy] to use the previous
  /// per-file `/screens` + `/themes` uploads instead.
  Future<void> deploy({String? projectPath, bool legacy = false}) async {
    final projectDir = projectPath ?? Directory.current.path;

    // Read projectId from default_stac_options.dart
    final projectId = await _readProjectIdFromOptions(projectDir);
    if (projectId == null || projectId.isEmpty) {
      throw StacException(
        'Could not determine projectId from lib/default_stac_options.dart. Run "stac init" first.',
      );
    }

    // Build output directory produced by BuildService
    final buildDirPath = path.join(projectDir, 'stac', '.build');
    final buildDir = Directory(buildDirPath);
    if (!await buildDir.exists()) {
      throw StacException(
        'Build directory not found at $buildDirPath. Run "stac build" first.',
      );
    }

    if (legacy) {
      await _deployLegacy(projectId: projectId, buildDirPath: buildDirPath);
      return;
    }

    await _deployBundle(
      projectDir: projectDir,
      projectId: projectId,
      buildDirPath: buildDirPath,
    );
  }

  /// Computes the advisory sha256 checksum for a bundle.
  ///
  /// The digest is taken over a deterministic JSON document —
  /// `{projectId, screens, themes}` with fixed top-level key order and
  /// screen/theme map keys sorted — so the result is stable regardless of
  /// map insertion order. The server recomputes and owns the authoritative
  /// checksum; this value is advisory (used for the server-side no-op check)
  /// and a mismatch alone never fails a deploy.
  static String computeBundleChecksum({
    required String projectId,
    required Map<String, String> screens,
    required Map<String, String> themes,
  }) {
    Map<String, String> sortByKey(Map<String, String> map) {
      final keys = map.keys.toList()..sort();
      return {for (final key in keys) key: map[key]!};
    }

    final canonicalJson = jsonEncode({
      'projectId': projectId,
      'screens': sortByKey(screens),
      'themes': sortByKey(themes),
    });
    return sha256.convert(utf8.encode(canonicalJson)).toString();
  }

  /// Publish all built screens/themes as a single atomic bundle.
  Future<void> _deployBundle({
    required String projectDir,
    required String projectId,
    required String buildDirPath,
  }) async {
    ConsoleLogger.info('Deploying bundle to cloud...');
    ConsoleLogger.debug('Project ID: $projectId');

    final screens = await _readArtifactDirectory(
      path.join(buildDirPath, 'screens'),
      label: 'screen',
    );
    final themes = await _readArtifactDirectory(
      path.join(buildDirPath, 'themes'),
      label: 'theme',
    );

    if (screens.isEmpty && themes.isEmpty) {
      throw StacException(
        'No built screens or themes found in $buildDirPath. Run "stac build" first.',
      );
    }

    final checksum = computeBundleChecksum(
      projectId: projectId,
      screens: screens,
      themes: themes,
    );

    final bundlesApiUrl = _resolveBundlesApiUrl();
    ConsoleLogger.debug('Bundles API: $bundlesApiUrl');

    final payload = <String, dynamic>{
      'projectId': projectId,
      'checksum': checksum,
      'screens': screens,
      'themes': themes,
    };
    final payloadBytes = utf8.encode(jsonEncode(payload)).length;
    ConsoleLogger.info(
      'Bundle contents: ${screens.length} screen(s), ${themes.length} theme(s) — payload ${_formatBytes(payloadBytes)} ($payloadBytes bytes)',
    );

    Response response;
    try {
      response = await _httpClient.post(bundlesApiUrl, data: payload);
    } on StacException {
      rethrow;
    } catch (e) {
      throw StacException('Bundle deploy failed: $e');
    }

    final status = response.statusCode;
    if (status != 200 && status != 201) {
      throw StacException(
        'Bundle deploy failed: unexpected response (${status ?? 'no-status'}) from $bundlesApiUrl.',
      );
    }

    final body = _decodeResponseBody(response.data);
    final version = body['version'];

    // The server's checksum is authoritative — ours is advisory only.
    final serverChecksum = body['checksum']?.toString();
    if (serverChecksum != null && serverChecksum != checksum) {
      ConsoleLogger.debug(
        'Local checksum ($checksum) differs from server checksum ($serverChecksum). Using the server value.',
      );
    }

    if (version is! int) {
      // The deploy succeeded server-side, but the response carries no
      // usable version. Never write a seed with a null/invalid version —
      // the client rejects it, silently breaking offline first launches.
      if (status == 201) {
        ConsoleLogger.success(
          '✓ Deployed bundle (server did not return a version)',
        );
      } else {
        ConsoleLogger.info(
          'No changes — bundle already current (server did not return a version)',
        );
      }
      ConsoleLogger.warning(
        'The deploy succeeded, but the server response did not include a bundle version. '
        'Skipping the seed bundle write (assets/stac_bundle.json was not updated).',
      );
    } else {
      if (status == 201) {
        ConsoleLogger.success('✓ Deployed bundle v$version');
      } else {
        ConsoleLogger.info('No changes — bundle v$version already current');
      }

      await _writeSeedAsset(
        projectDir: projectDir,
        projectId: projectId,
        responseBody: body,
        screens: screens,
        themes: themes,
      );
    }

    final consoleUrl = 'https://console.stac.dev/project/$projectId';
    ConsoleLogger.info(
      'Open your project in the Stac Console to inspect your screens and themes: $consoleUrl',
    );
  }

  /// Read every `*.json` file in [dirPath] into a map keyed by the file name
  /// without its `.json` extension.
  Future<Map<String, String>> _readArtifactDirectory(
    String dirPath, {
    required String label,
  }) async {
    final artifacts = <String, String>{};
    final dir = Directory(dirPath);
    if (!await dir.exists()) {
      ConsoleLogger.debug('No $label output found at $dirPath. Skipping.');
      return artifacts;
    }

    await for (final entity in dir.list()) {
      if (entity is! File || !entity.path.endsWith('.json')) continue;
      final name = path.basenameWithoutExtension(entity.path);
      artifacts[name] = await entity.readAsString();
    }
    return artifacts;
  }

  /// Write the just-published bundle body to `<project>/assets/stac_bundle.json`
  /// so first app launches can hydrate instantly (and offline) from the seed.
  ///
  /// `version`/`etag`/`checksum` come from the deploy response — the server
  /// is authoritative; a locally invented version is never written.
  Future<void> _writeSeedAsset({
    required String projectDir,
    required String projectId,
    required Map<String, dynamic> responseBody,
    required Map<String, String> screens,
    required Map<String, String> themes,
  }) async {
    final assetsDirPath = path.join(projectDir, 'assets');
    final seedPath = path.join(assetsDirPath, 'stac_bundle.json');

    try {
      await Directory(assetsDirPath).create(recursive: true);
      final seed = <String, dynamic>{
        'projectId': projectId,
        'version': responseBody['version'],
        'etag': responseBody['etag'],
        'checksum': responseBody['checksum'],
        'screens': screens,
        'themes': themes,
      };
      await File(seedPath).writeAsString(jsonEncode(seed));
      ConsoleLogger.info(
        'Seed bundle written to ${path.relative(seedPath, from: projectDir)}',
      );
    } catch (e) {
      // The bundle is already live server-side; a seed write failure must not
      // turn a successful deploy into a failure — warn and move on.
      ConsoleLogger.warning('Could not write seed bundle to $seedPath: $e');
      return;
    }

    await _warnIfSeedAssetNotDeclared(projectDir);
  }

  /// Warn when `assets/stac_bundle.json` is not declared under
  /// `flutter/assets` in the app's pubspec.yaml. Never modifies the pubspec.
  Future<void> _warnIfSeedAssetNotDeclared(String projectDir) async {
    const assetEntry = 'assets/stac_bundle.json';
    final pubspecPath = path.join(projectDir, 'pubspec.yaml');

    var declared = false;
    try {
      final pubspec = await FileUtils.readYamlFile(pubspecPath);
      final flutterSection = pubspec?['flutter'];
      if (flutterSection is Map) {
        final assets = flutterSection['assets'];
        if (assets is List) {
          declared = assets.any((entry) {
            final value = entry?.toString().trim();
            // Note: a bare `assets` entry (no trailing slash) is NOT a
            // directory include in Flutter, so it does not count.
            return value == assetEntry || value == 'assets/';
          });
        }
      }
    } catch (e) {
      ConsoleLogger.debug('Could not parse $pubspecPath: $e');
    }

    if (declared) return;
    ConsoleLogger.warning(
      'The seed bundle is not declared as a Flutter asset in pubspec.yaml.\n'
      '         Add it so first launches can render instantly (and offline):\n'
      '         flutter:\n'
      '           assets:\n'
      '             - $assetEntry',
    );
  }

  Map<String, dynamic> _decodeResponseBody(dynamic data) {
    try {
      dynamic decoded = data;
      if (decoded is String && decoded.isNotEmpty) {
        decoded = jsonDecode(decoded);
      }
      if (decoded is Map) {
        final map = Map<String, dynamic>.from(decoded);
        // Tolerate `{..., data: {...}}` envelopes.
        if (map['version'] == null && map['data'] is Map) {
          return Map<String, dynamic>.from(map['data'] as Map);
        }
        return map;
      }
    } catch (e) {
      ConsoleLogger.debug('Could not parse bundle deploy response body: $e');
    }
    return const {};
  }

  String _formatBytes(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    return '${(bytes / (1024 * 1024)).toStringAsFixed(2)} MB';
  }

  // ---------------------------------------------------------------------
  // Legacy per-file deploy (kept behind `stac deploy --legacy` for one
  // release, then delete).
  // ---------------------------------------------------------------------

  /// Deploy each built JSON file one at a time to the Screens/Themes APIs.
  Future<void> _deployLegacy({
    required String projectId,
    required String buildDirPath,
  }) async {
    ConsoleLogger.info('Deploying screens/themes to cloud...');
    ConsoleLogger.debug('Project ID: $projectId');

    final screensDir = Directory(path.join(buildDirPath, 'screens'));
    final themesDir = Directory(path.join(buildDirPath, 'themes'));

    final screensApiUrl = _resolveScreensApiUrl();
    final themesApiUrl = _resolveThemesApiUrl();
    ConsoleLogger.debug('Screens API: $screensApiUrl');
    ConsoleLogger.debug('Themes API: $themesApiUrl');

    int screenSuccess = 0;
    int screenFail = 0;
    int themeSuccess = 0;
    int themeFail = 0;

    if (await screensDir.exists()) {
      await for (final entity in screensDir.list()) {
        if (entity is! File || !entity.path.endsWith('.json')) continue;

        final fileName = path.basename(entity.path);
        final screenName = fileName.replaceAll('.json', '');
        ConsoleLogger.info('Uploading screen: $fileName');

        try {
          final jsonString = await entity.readAsString();
          await _uploadScreen(
            screensApiUrl: screensApiUrl,
            projectId: projectId,
            screenName: screenName,
            stacJson: jsonString,
          );
          ConsoleLogger.success('✓ Uploaded screen: $fileName');
          screenSuccess++;
        } catch (e) {
          ConsoleLogger.error('✗ Failed screen: $fileName — $e');
          screenFail++;
        }
      }
    } else {
      ConsoleLogger.warning(
        'Screens output directory not found at ${screensDir.path}. Skipping screen uploads.',
      );
    }

    if (await themesDir.exists()) {
      await for (final entity in themesDir.list()) {
        if (entity is! File || !entity.path.endsWith('.json')) continue;

        final fileName = path.basename(entity.path);
        final themeName = fileName.replaceAll('.json', '');
        ConsoleLogger.info('Uploading theme: $fileName');

        try {
          final jsonString = await entity.readAsString();
          await _uploadTheme(
            themesApiUrl: themesApiUrl,
            projectId: projectId,
            themeName: themeName,
            themeJson: jsonString,
          );
          ConsoleLogger.success('✓ Uploaded theme: $fileName');
          themeSuccess++;
        } catch (e) {
          ConsoleLogger.error('✗ Failed theme: $fileName — $e');
          themeFail++;
        }
      }
    } else {
      ConsoleLogger.info(
        'No theme output found at ${themesDir.path}. Skipping theme uploads.',
      );
    }

    final totalFailures = screenFail + themeFail;
    if (totalFailures == 0) {
      ConsoleLogger.success('✓ Deployment completed successfully!');
    } else {
      ConsoleLogger.warning('⚠️  Deployment completed with issues');
    }
    ConsoleLogger.info(
      'Screens → success: $screenSuccess, failed: $screenFail | Themes → success: $themeSuccess, failed: $themeFail',
    );

    if (totalFailures == 0) {
      final consoleUrl = 'https://console.stac.dev/project/$projectId';
      ConsoleLogger.info(
        'Open your project in the Stac Console to inspect your screens and themes: $consoleUrl',
      );
    }
  }

  /// Upload a single screen JSON to Cloud Functions API
  Future<void> _uploadScreen({
    required String screensApiUrl,
    required String projectId,
    required String screenName,
    required String stacJson,
  }) async {
    try {
      await _httpClient.post(
        screensApiUrl,
        data: {
          'projectId': projectId,
          'screenName': screenName,
          'stacJson': stacJson,
        },
      );
    } catch (e) {
      throw StacException('Failed to upload screen "$screenName": $e');
    }
  }

  /// Upload a single theme JSON to Cloud Functions API
  Future<void> _uploadTheme({
    required String themesApiUrl,
    required String projectId,
    required String themeName,
    required String themeJson,
  }) async {
    try {
      await _httpClient.post(
        themesApiUrl,
        data: {
          'projectId': projectId,
          'themeName': themeName,
          'themeJson': themeJson,
        },
      );
    } catch (e) {
      throw StacException('Failed to upload theme "$themeName": $e');
    }
  }

  /// Extract projectId from lib/default_stac_options.dart
  Future<String?> _readProjectIdFromOptions(String projectDir) async {
    final optionsPath = path.join(
      projectDir,
      'lib',
      'default_stac_options.dart',
    );
    if (!await FileUtils.fileExists(optionsPath)) return null;
    final content = await FileUtils.readFile(optionsPath);
    final match = RegExp(r"projectId:\s*'([^']*)'").firstMatch(content);
    return match?.group(1);
  }

  /// Resolve Cloud Function endpoint for bundles.save
  String _resolveBundlesApiUrl() {
    return '${env.baseApiUrl}/bundles';
  }

  /// Resolve Cloud Function endpoint for screens.save
  String _resolveScreensApiUrl() {
    // Use current environment's base URL + /screens endpoint
    return '${env.baseApiUrl}/screens';
  }

  /// Resolve Cloud Function endpoint for themes.save
  String _resolveThemesApiUrl() {
    return '${env.baseApiUrl}/themes';
  }
}
