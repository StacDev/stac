import 'package:dio/dio.dart';
import 'package:stac/src/framework/stac_service.dart';
import 'package:stac/src/models/stac_cache_config.dart';
import 'package:stac/src/models/stac_screen_cache.dart';
import 'package:stac/src/services/stac_cache_service.dart';
import 'package:stac_logger/stac_logger.dart';

/// Service for fetching screens from Stac Cloud with caching support.
///
/// This service automatically caches screens and compares versions
/// to avoid unnecessary network requests.
class StacCloud {
  const StacCloud._();

  static final Dio _dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 30),
    ),
  );

  static const String _fetchUrl = 'https://api.stac.dev/screens';

  /// Tracks screens currently being fetched in background to prevent duplicates.
  static final Set<String> _backgroundFetchInProgress = {};

  /// Fetches a screen from Stac Cloud with intelligent caching.
  ///
  /// The [cacheConfig] parameter controls caching behavior:
  /// - Strategy: How to handle cache vs network
  /// - maxAge: How long cache is valid
  /// - refreshInBackground: Whether to update stale cache in background
  /// - staleWhileRevalidate: Use expired cache while fetching fresh data
  ///
  /// Defaults to [StacCacheConfig.optimistic] if not provided.
  static Future<Response?> fetchScreen({
    required String routeName,
    StacCacheConfig cacheConfig = const StacCacheConfig(
      strategy: StacCacheStrategy.optimistic,
    ),
  }) async {
    final options = StacService.options;
    if (options == null) {
      throw Exception('StacOptions is not set');
    }

    // Handle network-only strategy
    if (cacheConfig.strategy == StacCacheStrategy.networkOnly) {
      return _fetchFromNetwork(routeName, saveToCache: false);
    }

    // Get cached screen
    final cachedScreen = await StacCacheService.getCachedScreen(routeName);

    // Handle cache-only strategy
    if (cacheConfig.strategy == StacCacheStrategy.cacheOnly) {
      if (cachedScreen != null) {
        return _buildCacheResponse(cachedScreen);
      }
      throw Exception(
        'No cached data available for $routeName (cache-only mode)',
      );
    }

    // Check if cache is valid based on maxAge (sync to avoid double cache read)
    final isCacheValid = StacCacheService.isCacheValidSync(
      cachedScreen,
      cacheConfig.maxAge,
    );

    // Handle different strategies
    switch (cacheConfig.strategy) {
      case StacCacheStrategy.networkFirst:
        return _handleNetworkFirst(routeName, cachedScreen);

      case StacCacheStrategy.cacheFirst:
        return _handleCacheFirst(
          routeName,
          cachedScreen,
          isCacheValid,
          cacheConfig,
        );

      case StacCacheStrategy.optimistic:
        return _handleOptimistic(
          routeName,
          cachedScreen,
          isCacheValid,
          cacheConfig,
        );

      case StacCacheStrategy.cacheOnly:
      case StacCacheStrategy.networkOnly:
        // Already handled above
        return _fetchFromNetwork(routeName, saveToCache: false);
    }
  }

  /// Handles network-first strategy: Try network, fallback to cache.
  static Future<Response?> _handleNetworkFirst(
    String routeName,
    StacScreenCache? cachedScreen,
  ) async {
    try {
      return await _fetchFromNetwork(routeName, saveToCache: true);
    } catch (e) {
      // Network failed, use cache as fallback
      if (cachedScreen != null) {
        Log.d('StacCloud: Network failed, using cached data for $routeName');
        return _buildCacheResponse(cachedScreen);
      }
      rethrow;
    }
  }

  /// Handles cache-first strategy: Use valid cache, fallback to network.
  static Future<Response?> _handleCacheFirst(
    String routeName,
    StacScreenCache? cachedScreen,
    bool isCacheValid,
    StacCacheConfig config,
  ) async {
    // If cache is valid and exists, use it
    if (cachedScreen != null && isCacheValid) {
      // Optionally refresh in background
      if (config.refreshInBackground) {
        _fetchAndUpdateInBackground(routeName, cachedScreen.version);
      }
      return _buildCacheResponse(cachedScreen);
    }

    // Cache invalid or doesn't exist, fetch from network
    try {
      return await _fetchFromNetwork(routeName, saveToCache: true);
    } catch (e) {
      // Network failed, use stale cache if available and staleWhileRevalidate is true
      if (cachedScreen != null && config.staleWhileRevalidate) {
        Log.d(
          'StacCloud: Using stale cache for $routeName due to network error',
        );
        return _buildCacheResponse(cachedScreen);
      }
      rethrow;
    }
  }

  /// Handles optimistic strategy: Return cache immediately, update in background.
  static Future<Response?> _handleOptimistic(
    String routeName,
    StacScreenCache? cachedScreen,
    bool isCacheValid,
    StacCacheConfig config,
  ) async {
    // If cache exists and is valid (or staleWhileRevalidate is true)
    if (cachedScreen != null && (isCacheValid || config.staleWhileRevalidate)) {
      // Update in background if configured
      if (config.refreshInBackground || !isCacheValid) {
        _fetchAndUpdateInBackground(routeName, cachedScreen.version);
      }
      return _buildCacheResponse(cachedScreen);
    }

    // No valid cache, must fetch from network
    return _fetchFromNetwork(routeName, saveToCache: true);
  }

  /// Makes a network request to fetch screen data.
  static Future<Response> _makeRequest(String routeName) {
    final options = StacService.options!;
    return _dio.get(
      _fetchUrl,
      queryParameters: <String, dynamic>{
        'projectId': options.projectId,
        'screenName': routeName,
      },
    );
  }

  /// Fetches screen data from network and optionally saves to cache.
  static Future<Response> _fetchFromNetwork(
    String routeName, {
    required bool saveToCache,
  }) async {
    final response = await _makeRequest(routeName);

    // Save to cache if enabled and response is valid
    if (saveToCache && response.data != null) {
      final version = response.data['version'] as int?;
      final stacJson = response.data['stacJson'] as String?;
      final name = response.data['name'] as String?;

      if (version != null && stacJson != null && name != null) {
        await StacCacheService.saveScreen(
          name: name,
          stacJson: stacJson,
          version: version,
        );
      }
    }

    return response;
  }

  /// Builds a Response from cached screen data.
  static Response _buildCacheResponse(StacScreenCache cachedScreen) {
    return Response(
      requestOptions: RequestOptions(path: _fetchUrl),
      data: {
        'name': cachedScreen.name,
        'stacJson': cachedScreen.stacJson,
        'version': cachedScreen.version,
      },
    );
  }

  /// Fetches the latest version in background and updates cache if newer.
  ///
  /// This method runs asynchronously without blocking the UI.
  /// If a newer version is found, it updates the cache for the next load.
  /// Prevents duplicate fetches for the same screen.
  static Future<void> _fetchAndUpdateInBackground(
    String routeName,
    int cachedVersion,
  ) async {
    // Prevent duplicate background fetches for the same screen
    if (!_backgroundFetchInProgress.add(routeName)) return;

    try {
      final response = await _makeRequest(routeName);

      if (response.data != null) {
        final serverVersion = response.data['version'] as int?;
        final serverStacJson = response.data['stacJson'] as String?;
        final name = response.data['name'] as String?;

        // Only update if server has newer version
        if (serverVersion != null &&
            serverStacJson != null &&
            name != null &&
            serverVersion > cachedVersion) {
          // Update cache with new version for next load
          await StacCacheService.saveScreen(
            name: name,
            stacJson: serverStacJson,
            version: serverVersion,
          );
        }
      }
    } catch (e) {
      // Silently fail - background update is optional
      Log.d('StacCloud: Background update failed for $routeName: $e');
    } finally {
      _backgroundFetchInProgress.remove(routeName);
    }
  }

  /// Clears the cache for a specific screen.
  static Future<bool> clearScreenCache(String routeName) {
    return StacCacheService.removeScreen(routeName);
  }

  /// Clears all cached screens.
  static Future<bool> clearAllCache() {
    return StacCacheService.clearAllScreens();
  }
}
