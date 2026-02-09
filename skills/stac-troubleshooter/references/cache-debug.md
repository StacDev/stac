# Cache Debug

## Symptoms

- Deployed screen does not update in app.
- App shows stale content after successful deploy.

## Checks

1. Confirm active cache strategy in `Stac.initialize(cacheConfig: ...)`.
2. Prefer `networkFirst` while validating updates.
3. Clear cache when necessary:

```dart
// Clear a specific screen cache
StacCloud.clearScreenCache('/home');

// Or clear all cached screens
StacCloud.clearAllCache();
```

## Recovery

- Restart app process after cache clear.
- Re-run `stac deploy` and re-open route.
