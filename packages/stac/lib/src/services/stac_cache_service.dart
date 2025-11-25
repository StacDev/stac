import 'package:shared_preferences/shared_preferences.dart';
import 'package:stac/src/models/stac_screen_cache.dart';

/// Service for managing cached Stac screens.
///
/// This service uses SharedPreferences to persist screen data locally,
/// enabling offline access and reducing unnecessary network requests.
class StacCacheService {
  StacCacheService._();

  static const String _cachePrefix = 'stac_screen_cache_';

  /// Cached SharedPreferences instance for better performance.
  static SharedPreferences? _prefs;

  /// Gets the SharedPreferences instance, caching it for subsequent calls.
  static Future<SharedPreferences> get _sharedPrefs async {
    return _prefs ??= await SharedPreferences.getInstance();
  }

  /// Gets a cached screen by its name.
  ///
  /// Returns `null` if the screen is not cached.
  static Future<StacScreenCache?> getCachedScreen(String screenName) async {
    try {
      final prefs = await _sharedPrefs;
      final cacheKey = _getCacheKey(screenName);
      final cachedData = prefs.getString(cacheKey);

      if (cachedData == null) {
        return null;
      }

      return StacScreenCache.fromJsonString(cachedData);
    } catch (e) {
      // If there's an error reading from cache, return null
      // and let the app fetch from network
      return null;
    }
  }

  /// Saves a screen to the cache.
  ///
  /// If a screen with the same name already exists, it will be overwritten.
  static Future<bool> saveScreen({
    required String name,
    required String stacJson,
    required int version,
  }) async {
    try {
      final prefs = await _sharedPrefs;
      final cacheKey = _getCacheKey(name);

      final screenCache = StacScreenCache(
        name: name,
        stacJson: stacJson,
        version: version,
        cachedAt: DateTime.now(),
      );

      return prefs.setString(cacheKey, screenCache.toJsonString());
    } catch (e) {
      // If there's an error saving to cache, return false
      // but don't throw - the app should still work without cache
      return false;
    }
  }

  /// Checks if a cached screen is still valid based on its age.
  ///
  /// Returns `true` if the cache is valid (not expired).
  /// Returns `false` if the cache is expired or doesn't exist.
  ///
  /// If [maxAge] is `null`, cache is considered valid (no time-based expiration).
  static Future<bool> isCacheValid({
    required String screenName,
    Duration? maxAge,
  }) async {
    final cachedScreen = await getCachedScreen(screenName);
    return isCacheValidSync(cachedScreen, maxAge);
  }

  /// Synchronous version of [isCacheValid] for when you already have the cache.
  ///
  /// Use this to avoid re-fetching the cache when you already have it.
  static bool isCacheValidSync(
    StacScreenCache? cachedScreen,
    Duration? maxAge,
  ) {
    if (cachedScreen == null) return false;
    if (maxAge == null) return true;

    final age = DateTime.now().difference(cachedScreen.cachedAt);
    return age <= maxAge;
  }

  /// Removes a specific screen from the cache.
  static Future<bool> removeScreen(String screenName) async {
    try {
      final prefs = await _sharedPrefs;
      final cacheKey = _getCacheKey(screenName);
      return prefs.remove(cacheKey);
    } catch (e) {
      return false;
    }
  }

  /// Clears all cached screens.
  static Future<bool> clearAllScreens() async {
    try {
      final prefs = await _sharedPrefs;
      final keys = prefs.getKeys();
      final cacheKeys = keys.where((key) => key.startsWith(_cachePrefix));

      // Use Future.wait for parallel deletion instead of sequential awaits
      await Future.wait(cacheKeys.map(prefs.remove));

      return true;
    } catch (e) {
      return false;
    }
  }

  /// Generates a cache key for a screen name.
  static String _getCacheKey(String screenName) {
    return '$_cachePrefix$screenName';
  }
}
