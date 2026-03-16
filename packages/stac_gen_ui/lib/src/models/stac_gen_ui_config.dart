/// Configuration for the Stac Gen UI package.
///
/// Must be initialized before using any Gen UI features:
/// ```dart
/// StacGenUiConfig.initialize(apiKey: 'sk-ant-...');
/// ```
class StacGenUiConfig {
  StacGenUiConfig._();

  static String? _apiKey;
  static String _model = 'claude-sonnet-4-20250514';
  static int _maxTokens = 4096;

  /// Initializes the Gen UI configuration.
  ///
  /// [apiKey] is required and must be a valid Claude API key.
  /// [model] defaults to `claude-sonnet-4-20250514`.
  /// [maxTokens] defaults to 4096.
  static void initialize({
    required String apiKey,
    String? model,
    int? maxTokens,
  }) {
    _apiKey = apiKey;
    if (model != null) _model = model;
    if (maxTokens != null) _maxTokens = maxTokens;
  }

  /// The Claude API key.
  ///
  /// Throws if not initialized.
  static String get apiKey {
    if (_apiKey == null) {
      throw StateError(
        'StacGenUiConfig has not been initialized. '
        'Call StacGenUiConfig.initialize(apiKey: ...) first.',
      );
    }
    return _apiKey!;
  }

  /// The Claude model to use for generation.
  static String get model => _model;

  /// The maximum number of tokens for the Claude response.
  static int get maxTokens => _maxTokens;
}
