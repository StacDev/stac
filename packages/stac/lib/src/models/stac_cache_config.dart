/// Defines different cache strategies for Stac screens.
///
/// These strategies follow industry-standard patterns used in service workers
/// (Workbox), HTTP caching (RFC 5861), and data fetching libraries (SWR).
enum StacCacheStrategy {
  /// Always fetch from network, use cache as fallback on failure.
  /// Best for: real-time data, frequently changing content.
  networkFirst,

  /// Use cache if available and valid, fallback to network.
  /// Best for: offline-first apps, read-heavy content.
  cacheFirst,

  /// Return cache immediately, update in background (stale-while-revalidate).
  /// Best for: fast loading with eventual consistency.
  optimistic,

  /// Only use cache, never fetch from network.
  /// Best for: offline-only mode, airplane mode.
  cacheOnly,

  /// Only use network, never cache.
  /// Best for: sensitive data that shouldn't persist.
  networkOnly,
}

/// Configuration for Stac screen caching behavior.
///
/// This class allows fine-grained control over how screens are cached,
/// when they expire, and how updates are handled.
///
/// ## Basic Usage
///
/// ```dart
/// await Stac.initialize(
///   options: StacOptions(...),
///   cacheConfig: StacCacheConfig(
///     maxAge: Duration(hours: 24),
///     strategy: StacCacheStrategy.optimistic,
///   ),
/// );
/// ```
class StacCacheConfig {
  /// Creates a [StacCacheConfig] instance.
  const StacCacheConfig({
    this.maxAge,
    this.strategy = StacCacheStrategy.networkFirst,
    this.refreshInBackground = true,
  });

  /// Maximum age of cached data before it's considered stale.
  ///
  /// When `null`, cache validity is determined by version only.
  ///
  /// Examples:
  /// - `Duration(hours: 1)` - Cache is stale after 1 hour
  /// - `Duration(days: 7)` - Cache is stale after 7 days
  final Duration? maxAge;

  /// The caching strategy to use.
  ///
  /// Defaults to [StacCacheStrategy.networkFirst].
  final StacCacheStrategy strategy;

  /// Whether to refresh cache in the background.
  ///
  /// When `true` (default): Shows cached data immediately, fetches updates
  /// in background for the next load.
  ///
  /// When `false`: Only fetches when cache is invalid or missing.
  ///
  /// Only applies to [StacCacheStrategy.optimistic] and
  /// [StacCacheStrategy.cacheFirst].
  final bool refreshInBackground;

  // ─────────────────────────────────────────────────────────────────────────
  // Methods
  // ─────────────────────────────────────────────────────────────────────────

  /// Creates a copy of this config with the given fields replaced.
  StacCacheConfig copyWith({
    Duration? maxAge,
    StacCacheStrategy? strategy,
    bool? refreshInBackground,
  }) {
    return StacCacheConfig(
      maxAge: maxAge ?? this.maxAge,
      strategy: strategy ?? this.strategy,
      refreshInBackground: refreshInBackground ?? this.refreshInBackground,
    );
  }

  @override
  String toString() {
    return 'StacCacheConfig(maxAge: $maxAge, strategy: $strategy, refreshInBackground: $refreshInBackground)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StacCacheConfig &&
        other.maxAge == maxAge &&
        other.strategy == strategy &&
        other.refreshInBackground == refreshInBackground;
  }

  @override
  int get hashCode {
    return Object.hash(maxAge, strategy, refreshInBackground);
  }
}
