import 'dart:io';

import 'package:path/path.dart' as path;

import '../config/env.dart';
import '../exceptions/stac_exception.dart';
import '../utils/console_logger.dart';
import '../utils/file_utils.dart';
import '../utils/http_client.dart';

/// Service for deploying Stac JSON files to the cloud
class DeployService {
  final HttpClientService _httpClient = HttpClientService.instance;

  /// Deploy all built JSON files (from stac/.build) to the Screens API
  /// - Reads projectId from lib/default_stac_options.dart
  /// - For each {name}.json in stac/.build, POST to Cloud Function "screens"
  Future<void> deploy({String? projectPath}) async {
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
