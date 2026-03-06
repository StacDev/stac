import 'dart:convert';

import '../exceptions/stac_exception.dart';
import '../models/auth_token.dart';
import '../utils/file_utils.dart';

/// Service for managing configuration and persistent storage
class ConfigService {
  static ConfigService? _instance;

  /// Singleton instance
  static ConfigService get instance {
    _instance ??= ConfigService._();
    return _instance!;
  }

  ConfigService._();

  /// Initialize the config service
  Future<void> initialize() async {
    await FileUtils.ensureConfigDirectory();
  }

  /// Store authentication token
  Future<void> storeAuthToken(AuthToken token) async {
    try {
      final tokenJson = json.encode(token.toJson());
      await FileUtils.writeFile(FileUtils.tokenFilePath, tokenJson);
      await FileUtils.enforceFileOwnerOnlyAccess(FileUtils.tokenFilePath);
    } catch (e) {
      throw StacException('Failed to store auth token: $e');
    }
  }

  /// Get stored authentication token
  Future<AuthToken?> getAuthToken() async {
    try {
      if (!await FileUtils.fileExists(FileUtils.tokenFilePath)) {
        return null;
      }

      final tokenJson = await FileUtils.readFile(FileUtils.tokenFilePath);
      final tokenData = json.decode(tokenJson) as Map<String, dynamic>;
      return AuthToken.fromJson(tokenData);
    } catch (e) {
      throw StacException('Failed to read auth token: $e');
    }
  }

  /// Clear stored authentication token
  Future<void> clearAuthToken() async {
    try {
      await FileUtils.deleteFile(FileUtils.tokenFilePath);
    } catch (e) {
      throw StacException('Failed to clear auth token: $e');
    }
  }

  /// Check if user is authenticated (without attempting refresh)
  Future<bool> isAuthenticated() async {
    final token = await getAuthToken();
    return token != null && !token.isExpired;
  }

  /// Check if user has a valid token (including refresh capability)
  Future<bool> hasValidToken() async {
    final token = await getAuthToken();
    if (token == null) {
      return false;
    }

    // If token is not expired, it's valid
    if (!token.isExpired) {
      return true;
    }

    // If token is expired but we have a refresh token, it might be refreshable
    return token.refreshToken != null;
  }
}
