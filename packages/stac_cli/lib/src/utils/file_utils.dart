import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:yaml/yaml.dart';
import 'console_logger.dart';

/// Utility functions for file operations
class FileUtils {
  /// Get the user's home directory
  static String get homeDirectory {
    if (Platform.isWindows) {
      return Platform.environment['USERPROFILE'] ?? '';
    }
    return Platform.environment['HOME'] ?? '';
  }

  /// Get the Stac CLI configuration directory
  static String get configDirectory {
    final home = homeDirectory;
    if (Platform.isWindows) {
      return path.join(home, 'AppData', 'Local', 'stac_cli');
    }
    return path.join(home, '.stac');
  }

  /// Get the path to the auth token file
  static String get tokenFilePath {
    return path.join(configDirectory, 'auth.json');
  }

  /// Get the path to the main config file
  static String get configFilePath {
    return path.join(configDirectory, 'config.yaml');
  }

  /// Ensure the config directory exists
  static Future<void> ensureConfigDirectory() async {
    final dir = Directory(configDirectory);
    if (!await dir.exists()) {
      await dir.create(recursive: true);
    }
    await enforceDirectoryOwnerOnlyAccess(configDirectory);
  }

  /// Check if a file exists
  static Future<bool> fileExists(String filePath) async {
    return await File(filePath).exists();
  }

  /// Read a file as string
  static Future<String> readFile(String filePath) async {
    return await File(filePath).readAsString();
  }

  /// Write a string to a file
  static Future<void> writeFile(String filePath, String content) async {
    await File(filePath).writeAsString(content);
  }

  /// Delete a file
  static Future<void> deleteFile(String filePath) async {
    final file = File(filePath);
    if (await file.exists()) {
      await file.delete();
    }
  }

  /// Read and parse a YAML file
  static Future<Map<String, dynamic>?> readYamlFile(String filePath) async {
    if (!await fileExists(filePath)) {
      return null;
    }

    final content = await readFile(filePath);
    final yaml = loadYaml(content);

    if (yaml is Map) {
      return Map<String, dynamic>.from(yaml);
    }

    return null;
  }

  /// Best-effort owner-only directory permissions on Unix-like systems.
  static Future<void> enforceDirectoryOwnerOnlyAccess(
    String directoryPath,
  ) async {
    if (Platform.isWindows) return;
    try {
      final result = await Process.run('chmod', ['700', directoryPath]);
      if (result.exitCode != 0) {
        throw Exception(result.stderr);
      }
    } catch (e) {
      ConsoleLogger.warning(
        'Could not enforce secure directory permissions for $directoryPath',
      );
      ConsoleLogger.debug('chmod 700 failed: $e');
    }
  }

  /// Best-effort owner-only file permissions on Unix-like systems.
  static Future<void> enforceFileOwnerOnlyAccess(String filePath) async {
    if (Platform.isWindows) return;
    try {
      final result = await Process.run('chmod', ['600', filePath]);
      if (result.exitCode != 0) {
        throw Exception(result.stderr);
      }
    } catch (e) {
      ConsoleLogger.warning(
        'Could not enforce secure file permissions for $filePath',
      );
      ConsoleLogger.debug('chmod 600 failed: $e');
    }
  }
}
