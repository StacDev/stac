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

String? _env(String key, {String? defaultValue, bool required = false}) {
  final raw = _resolvedEnvironment[key];
  if (raw != null) {
    final trimmed = raw.trim();
    if (trimmed.isNotEmpty) return trimmed;
  }
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
