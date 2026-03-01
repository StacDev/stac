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

String? _value(String key, {String? defaultValue}) {
  final raw = _resolvedEnvironment[key];
  if (raw != null) {
    final trimmed = raw.trim();
    if (trimmed.isNotEmpty) return trimmed;
  }
  if (defaultValue != null && defaultValue.isNotEmpty) {
    return defaultValue;
  }
  return null;
}

String _requiredValue(String key, {String? defaultValue}) {
  final value = _value(key, defaultValue: defaultValue);
  if (value == null) {
    throw StateError('Missing required environment variable: $key');
  }
  return value;
}

EnvConfig get env {
  return EnvConfig(
    baseApiUrl: _requiredValue(
      'STAC_BASE_API_URL',
      defaultValue: const String.fromEnvironment('STAC_BASE_API_URL'),
    ),
    googleOAuthClientId: _requiredValue(
      'STAC_GOOGLE_CLIENT_ID',
      defaultValue: const String.fromEnvironment('STAC_GOOGLE_CLIENT_ID'),
    ),
    googleOAuthClientSecret: _value(
      'STAC_GOOGLE_CLIENT_SECRET',
      defaultValue: const String.fromEnvironment('STAC_GOOGLE_CLIENT_SECRET'),
    ),
    firebaseWebApiKey: _requiredValue(
      'STAC_FIREBASE_API_KEY',
      defaultValue: const String.fromEnvironment('STAC_FIREBASE_API_KEY'),
    ),
  );
}
