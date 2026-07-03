/// Configuration for Stac bundle mode.
///
/// Bundle mode replaces per-screen fetches with a single version-gated
/// bundle download containing every screen and theme for a project.
/// It is opt-in: [enabled] defaults to `false`, so an app without a
/// `bundleConfig` behaves exactly as before.
///
/// Bundle caching behavior is fixed (no strategies): screens always render
/// from the cached bundle, and the body is re-downloaded only when a
/// conditional version check returns a new version. The check runs at app
/// launch ([prefetchOnInit]), on app-resume ([checkOnResume]), on an optional
/// poll interval ([pollingInterval]), or via an explicit
/// `StacBundleService.sync()` call.
///
/// ## Basic Usage
///
/// ```dart
/// await Stac.initialize(
///   options: StacOptions(...),
///   bundleConfig: StacBundleConfig(
///     enabled: true,
///     seedAsset: 'assets/stac_bundle.json',
///   ),
/// );
/// ```
class StacBundleConfig {
  /// Creates a [StacBundleConfig] instance.
  const StacBundleConfig({
    this.enabled = false,
    this.prefetchOnInit = true,
    this.baseUrl = 'https://api.stac.dev',
    this.seedAsset,
    this.checkOnResume = true,
    this.pollingInterval,
  });

  /// Whether bundle mode is enabled.
  ///
  /// Defaults to `false` (opt-in). When disabled, the legacy per-artifact
  /// fetch and cache behavior is untouched.
  final bool enabled;

  /// Whether to kick off a conditional bundle sync during initialization.
  ///
  /// Defaults to `true`. The sync is not awaited, so it never delays startup.
  final bool prefetchOnInit;

  /// The base URL used for bundle requests.
  ///
  /// Defaults to `https://api.stac.dev`.
  final String baseUrl;

  /// Optional asset path of a seed bundle shipped with the app
  /// (e.g. `assets/stac_bundle.json`, written by `stac deploy`).
  ///
  /// When set, first launch hydrates from the seed instantly — no loading
  /// wait, and it works offline. Defaults to `null` (no seed).
  final String? seedAsset;

  /// Whether to run a conditional bundle sync when the app returns to the
  /// foreground.
  ///
  /// Defaults to `true`.
  final bool checkOnResume;

  /// Optional interval for periodic conditional bundle syncs while the app
  /// is foregrounded.
  ///
  /// Defaults to `null` (polling off).
  final Duration? pollingInterval;

  // ─────────────────────────────────────────────────────────────────────────
  // Methods
  // ─────────────────────────────────────────────────────────────────────────

  /// Creates a copy of this config with the given fields replaced.
  StacBundleConfig copyWith({
    bool? enabled,
    bool? prefetchOnInit,
    String? baseUrl,
    String? seedAsset,
    bool? checkOnResume,
    Duration? pollingInterval,
  }) {
    return StacBundleConfig(
      enabled: enabled ?? this.enabled,
      prefetchOnInit: prefetchOnInit ?? this.prefetchOnInit,
      baseUrl: baseUrl ?? this.baseUrl,
      seedAsset: seedAsset ?? this.seedAsset,
      checkOnResume: checkOnResume ?? this.checkOnResume,
      pollingInterval: pollingInterval ?? this.pollingInterval,
    );
  }

  @override
  String toString() {
    return 'StacBundleConfig(enabled: $enabled, prefetchOnInit: $prefetchOnInit, '
        'baseUrl: $baseUrl, seedAsset: $seedAsset, checkOnResume: $checkOnResume, '
        'pollingInterval: $pollingInterval)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StacBundleConfig &&
        other.enabled == enabled &&
        other.prefetchOnInit == prefetchOnInit &&
        other.baseUrl == baseUrl &&
        other.seedAsset == seedAsset &&
        other.checkOnResume == checkOnResume &&
        other.pollingInterval == pollingInterval;
  }

  @override
  int get hashCode {
    return Object.hash(
      enabled,
      prefetchOnInit,
      baseUrl,
      seedAsset,
      checkOnResume,
      pollingInterval,
    );
  }
}
