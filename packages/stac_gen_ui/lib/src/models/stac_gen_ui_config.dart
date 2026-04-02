import 'package:dio/dio.dart';
import 'package:stac/stac.dart';
import 'package:stac_gen_ui/src/models/stac_custom_widget_schema.dart';
import 'package:stac_gen_ui/src/parsers/stac_gen_ui_parser.dart';

/// Configuration and initialization for the Stac Gen UI package.
///
/// Call [initialize] once at app startup. This also initializes Stac
/// internally, so you do NOT need to call [Stac.initialize] separately.
///
/// ```dart
/// await StacGenUiConfig.initialize(apiKey: 'sk-ant-...');
/// ```
class StacGenUiConfig {
  StacGenUiConfig._();

  static String? _apiKey;
  static String _model = 'claude-sonnet-4-20250514';
  static int _maxTokens = 8192;
  static List<StacCustomWidgetSchema> _customWidgets = const [];
  static bool _stacInitialized = false;

  /// Initializes both Stac Gen UI and the underlying Stac framework.
  ///
  /// This is the single entry point — no need to call [Stac.initialize]
  /// separately. The [StacGenUiParser] is automatically registered.
  ///
  /// [apiKey] is required and must be a valid Claude API key.
  /// [model] defaults to `claude-sonnet-4-20250514`.
  /// [maxTokens] defaults to 4096.
  ///
  /// All other parameters are forwarded to [Stac.initialize]:
  /// - [options]: Stac Cloud project configuration.
  /// - [parsers]: Additional custom widget parsers (genUi is added automatically).
  /// - [actionParsers]: Custom action parsers.
  /// - [customWidgets]: Descriptions of custom widgets so the AI can use them.
  /// - [dio]: Custom Dio instance for Stac network requests.
  /// - [override]: If `true`, allows re-initialization.
  /// - [showErrorWidgets]: Show error widgets on parse failure (default: true).
  /// - [logStackTraces]: Log stack traces for debugging (default: true).
  /// - [errorWidgetBuilder]: Custom builder for error widgets.
  /// - [cacheConfig]: Global cache configuration.
  static Future<void> initialize({
    required String apiKey,
    String? model,
    int? maxTokens,
    StacOptions? options,
    List<StacParser> parsers = const [],
    List<StacActionParser> actionParsers = const [],
    List<StacCustomWidgetSchema> customWidgets = const [],
    Dio? dio,
    bool override = false,
    bool showErrorWidgets = true,
    bool logStackTraces = true,
    StacErrorWidgetBuilder? errorWidgetBuilder,
    StacCacheConfig? cacheConfig,
  }) async {
    _apiKey = apiKey;
    if (model != null) _model = model;
    if (maxTokens != null) _maxTokens = maxTokens;
    _customWidgets = customWidgets;

    await Stac.initialize(
      options: options,
      parsers: [const StacGenUiParser(), ...parsers],
      actionParsers: actionParsers,
      dio: dio,
      override: override,
      showErrorWidgets: showErrorWidgets,
      logStackTraces: logStackTraces,
      errorWidgetBuilder: errorWidgetBuilder,
      cacheConfig: cacheConfig,
    );
    _stacInitialized = true;
  }

  /// Updates generation settings at runtime.
  ///
  /// This is useful when users provide API key or token limits from app UI.
  static void updateGenerationSettings({
    String? apiKey,
    String? model,
    int? maxTokens,
  }) {
    if (apiKey != null) _apiKey = apiKey;
    if (model != null && model.trim().isNotEmpty) _model = model;
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

  /// Whether Stac initialization has completed in this app run.
  static bool get isStacInitialized => _stacInitialized;

  /// Whether an API key is currently available.
  static bool get hasApiKey => (_apiKey ?? '').trim().isNotEmpty;

  /// Custom widget schemas registered during initialization.
  static List<StacCustomWidgetSchema> get customWidgets => _customWidgets;
}
