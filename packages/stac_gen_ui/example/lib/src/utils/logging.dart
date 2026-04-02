import 'dart:convert';
import 'dart:developer' as developer;

void logStacJsonFromLlm(Map<String, dynamic> json) {
  try {
    final pretty = const JsonEncoder.withIndent('  ').convert(json);
    developer.log(
      pretty,
      name: 'StacGenUiExample',
      level: 800,
    );
  } catch (e, st) {
    developer.log(
      'Failed to encode Stac JSON for logging: $e',
      name: 'StacGenUiExample',
      error: e,
      stackTrace: st,
    );
  }
}

void logStacGenUiError(Object error, StackTrace stackTrace) {
  developer.log(
    'Stac Gen UI error',
    name: 'StacGenUiExample',
    error: error,
    stackTrace: stackTrace,
    level: 1000,
  );
}
