/// Defines different cache strategies for Stac screens.
enum StacCacheStrategy {
  /// Always fetch from network, update cache in background.
  /// Best for real-time data.
  networkFirst,

  /// Use cache if available and valid, fallback to network.
  /// Best for offline-first apps.
  cacheFirst,

  /// Return cache immediately, update in background.
  /// Best for fast loading with eventual consistency.
  optimistic,

  /// Only use cache, never fetch from network.
  /// Best for offline-only mode.
  cacheOnly,

  /// Only use network, never cache.
  /// Best for sensitive data that shouldn't be cached.
  networkOnly,
}

/// Configuration for Stac screen caching behavior.
///
/// This class allows fine-grained control over how screens are cached,
/// when they expire, and how updates are handled.
///
/// Example:
/// ```dart
/// Stac(
///   routeName: '/home',
///   cacheConfig: StacCacheConfig(
///     maxAge: Duration(hours: 24),
///     strategy: StacCacheStrategy.optimistic,
///   ),
/// )
/// ```
class StacCacheConfig {
  /// Creates a [StacCacheConfig] instance.
  const StacCacheConfig({
    this.maxAge,
    this.strategy = StacCacheStrategy.optimistic,
    this.refreshInBackground = true,
    this.staleWhileRevalidate = false,
  });

  /// Maximum age of cached data before it's considered expired.
  ///
  /// When `null`, cache never expires based on time (only version updates matter).
  ///
  /// Examples:
  /// - `Duration(hours: 1)` - Cache expires after 1 hour
  /// - `Duration(days: 7)` - Cache expires after 7 days
  /// - `Duration(minutes: 30)` - Cache expires after 30 minutes
  final Duration? maxAge;

  /// The caching strategy to use.
  ///
  /// Defaults to [StacCacheStrategy.optimistic].
  final StacCacheStrategy strategy;

  /// Whether to refresh cache in the background when data is stale but valid.
  ///
  /// Only applies to [StacCacheStrategy.optimistic] and [StacCacheStrategy.cacheFirst].
  ///
  /// When `true`: Shows cached data, fetches updates in background
  /// When `false`: Only updates when cache is completely invalid
  final bool refreshInBackground;

  /// Use stale cache while revalidating (fetch in background).
  ///
  /// When `true`: Even expired cache will be shown while fetching fresh data.
  /// When `false`: Expired cache is treated as invalid.
  ///
  /// Useful for providing instant UI even when cache is expired.
  final bool staleWhileRevalidate;

  /// Creates a copy of this config with the given fields replaced.
  StacCacheConfig copyWith({
    Duration? maxAge,
    StacCacheStrategy? strategy,
    bool? refreshInBackground,
    bool? staleWhileRevalidate,
  }) {
    return StacCacheConfig(
      maxAge: maxAge ?? this.maxAge,
      strategy: strategy ?? this.strategy,
      refreshInBackground: refreshInBackground ?? this.refreshInBackground,
      staleWhileRevalidate: staleWhileRevalidate ?? this.staleWhileRevalidate,
    );
  }

  @override
  String toString() {
    return 'StacCacheConfig(maxAge: $maxAge, strategy: $strategy, refreshInBackground: $refreshInBackground, staleWhileRevalidate: $staleWhileRevalidate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StacCacheConfig &&
        other.maxAge == maxAge &&
        other.strategy == strategy &&
        other.refreshInBackground == refreshInBackground &&
        other.staleWhileRevalidate == staleWhileRevalidate;
  }

  @override
  int get hashCode {
    return Object.hash(
      maxAge,
      strategy,
      refreshInBackground,
      staleWhileRevalidate,
    );
  }
}
