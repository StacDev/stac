import 'dart:io';

// Central environment configuration for the STAC CLI.
// Values are resolved from process environment variables, optionally seeded
// from `.env` / `.env.dev` during CLI startup.

enum Environment { dev, prod }

// Flip this to switch environments.
const Environment currentEnvironment = Environment.prod;

Map<String, String> _resolvedEnvironment = Map.unmodifiable(
  Platform.environment,
);

void configureEnvironment(Map<String, String> loadedEnvironment) {
  final merged = <String, String>{
    ...loadedEnvironment,
    ...Platform.environment,
  };
  _resolvedEnvironment = Map.unmodifiable(merged);
}

class EnvConfig {
  final String baseApiUrl;
  final String googleOAuthClientId;
  final String? googleOAuthClientSecret;
  final String firebaseWebApiKey;

  const EnvConfig({
    required this.baseApiUrl,
    required this.googleOAuthClientId,
    required this.googleOAuthClientSecret,
    required this.firebaseWebApiKey,
  });
}

const Map<String, String> _compiledEnvMap = {
  'STAC_BASE_API_URL': String.fromEnvironment('STAC_BASE_API_URL'),
  'STAC_GOOGLE_CLIENT_ID': String.fromEnvironment('STAC_GOOGLE_CLIENT_ID'),
  'STAC_GOOGLE_CLIENT_SECRET': String.fromEnvironment(
    'STAC_GOOGLE_CLIENT_SECRET',
  ),
  'STAC_FIREBASE_API_KEY': String.fromEnvironment('STAC_FIREBASE_API_KEY'),
};

String? _env(String key, {String? defaultValue, bool required = false}) {
  // 1. Primary: compile-time configuration injected via `dart compile exe -D...`
  final compiled = _compiledEnvMap[key];
  if (compiled != null && compiled.isNotEmpty) {
    return compiled;
  }

  // 2. Fallback to dynamically provided constants (.env or OS environment)
  final raw = _resolvedEnvironment[key];
  if (raw != null) {
    final trimmed = raw.trim();
    if (trimmed.isNotEmpty) return trimmed;
  }

  // 3. Fallback to defaults
  if (defaultValue != null && defaultValue.isNotEmpty) {
    return defaultValue;
  }

  if (required) {
    throw StateError('Missing required environment variable: $key');
  }
  return null;
}

EnvConfig get env {
  return EnvConfig(
    baseApiUrl: _env('STAC_BASE_API_URL', required: true)!,
    googleOAuthClientId: _env('STAC_GOOGLE_CLIENT_ID', required: true)!,
    googleOAuthClientSecret: _env('STAC_GOOGLE_CLIENT_SECRET'),
    firebaseWebApiKey: _env('STAC_FIREBASE_API_KEY', required: true)!,
  );
}
