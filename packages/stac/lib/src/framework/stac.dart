import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/framework/stac_error.dart';
import 'package:stac/src/framework/stac_service.dart';
import 'package:stac/src/models/stac_cache_config.dart';
import 'package:stac/src/services/stac_cloud.dart';
import 'package:stac/src/state/stac_scope.dart';
import 'package:stac/src/state/stac_state_observer.dart';
import 'package:stac/src/state/stac_state_persistence.dart';
import 'package:stac/src/state/stac_store.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';
import 'package:stac_core/core/stac_options.dart';
import 'package:stac_framework/stac_framework.dart';

/// Builder function for displaying errors in Stac widgets.
///
/// Called when a Stac widget encounters an error during loading or parsing.
typedef ErrorWidgetBuilder =
    Widget Function(BuildContext context, dynamic error);

/// Builder function for displaying loading states in Stac widgets.
///
/// Called while a Stac widget is fetching data from the network or cache.
typedef LoadingWidgetBuilder = Widget Function(BuildContext context);

/// Global parse-error widget builder for Stac.
///
/// Allows apps to provide a custom widget when parsing a Stac widget/action
/// fails. The builder receives useful context like the widget/action type,
/// original JSON and stack trace (when available).
///
/// Example:
/// ```dart
/// Stac.initialize(
///   errorWidgetBuilder: (context, errorDetails) {
///     return Text('Error in ${errorDetails.type}: ${errorDetails.error}');
///   },
/// );
/// ```
typedef StacErrorWidgetBuilder =
    Widget Function(BuildContext context, StacError errorDetails);

/// The main entry point for rendering Server-Driven UI from Stac Cloud.
///
/// [Stac] is a widget that fetches screen definitions from Stac Cloud
/// and renders them as Flutter widgets. It supports intelligent caching,
/// offline access, and background updates.
///
/// ## Basic Usage
///
/// ```dart
/// // First, initialize Stac in your app's main function
/// void main() async {
///   WidgetsFlutterBinding.ensureInitialized();
///   await Stac.initialize(
///     options: StacOptions(projectId: 'your-project-id'),
///   );
///   runApp(MyApp());
/// }
///
/// // Then use Stac widget to render server-driven screens
/// Stac(routeName: '/home')
/// ```
///
/// ## Caching
///
/// By default, Stac uses a network-first caching strategy that always
/// fetches the latest content, falling back to cache when offline.
/// Configure caching globally during initialization:
///
/// ```dart
/// await Stac.initialize(
///   options: StacOptions(projectId: 'your-project-id'),
///   cacheConfig: StacCacheConfig(
///     strategy: StacCacheStrategy.cacheFirst,
///     maxAge: Duration(hours: 24),
///   ),
/// );
/// ```
///
/// ## Custom Loading and Error States
///
/// ```dart
/// Stac(
///   routeName: '/home',
///   loadingWidget: Center(child: CircularProgressIndicator()),
///   errorWidget: Center(child: Text('Failed to load')),
/// )
/// ```
///
/// ## Static Methods
///
/// Stac also provides static methods for rendering widgets from various sources:
/// - [fromJson] - Render from a JSON map
/// - [fromAssets] - Render from a local asset file
/// - [fromNetwork] - Render from a custom network request
///
/// See also:
/// - [StacCacheConfig] for cache configuration options
/// - [StacOptions] for initialization options
class Stac extends StatelessWidget {
  /// Creates a Stac widget that renders a screen from Stac Cloud.
  ///
  /// The [routeName] identifies which screen to fetch from the cloud.
  /// This should match the screen name configured in your Stac Cloud project.
  ///
  /// Optionally provide [loadingWidget] and [errorWidget] to customize
  /// the loading and error states. If not provided, defaults are used.
  ///
  /// Cache behavior is configured globally via [Stac.initialize].
  const Stac({
    super.key,
    required this.routeName,
    this.arguments = const {},
    this.loadingWidget,
    this.errorWidget,
  });

  /// The route name identifying the screen to fetch from Stac Cloud.
  ///
  /// This should match the screen name configured in your Stac Cloud project.
  /// For example: `/home`, `/profile`, `/settings`.
  final String routeName;

  /// Arguments for the screen, readable in it as `$args`, such as
  /// `{{$args.productId}}`.
  final Map<String, dynamic> arguments;

  /// App-wide state, readable in every screen by name or as `$app`.
  ///
  /// Write to it to update every screen that reads a value:
  ///
  /// ```dart
  /// Stac.state.set('user.name', 'Ann');
  /// ```
  static StacStore get state => stacAppStore;

  /// The observers told about every change to Stac state, and about levels
  /// of state as they are created and discarded.
  ///
  /// Set them with [initialize], or add and remove them here at any time,
  /// for example from a debugging tool.
  static List<StacStateObserver> get stateObservers =>
      StacStateEvents.observers;

  /// The levels of state that exist now: the app level, then screens, local
  /// levels and forms in the order they were created. Each level's
  /// [StacStateLevel.parent] is the level around it.
  ///
  /// For debugging tools. To print them, call `debugDumpStacState()`.
  static List<StacStateLevel> get stateLevels {
    final app = StacScopeNode.app; // Created on first use.
    final levels = StacStateEvents.levels;
    assert(levels.contains(app));
    return levels;
  }

  /// Widget to display while the screen is loading.
  ///
  /// If `null`, a default loading indicator is shown (centered
  /// [CircularProgressIndicator] in a [Scaffold]).
  final Widget? loadingWidget;

  /// Widget to display when an error occurs.
  ///
  /// If `null`, an empty [SizedBox] is shown on error.
  final Widget? errorWidget;

  /// Initializes Stac with the provided configuration.
  ///
  /// This must be called before using any Stac widgets, typically in
  /// your app's `main` function after `WidgetsFlutterBinding.ensureInitialized()`.
  ///
  /// ## Parameters
  ///
  /// - [options]: Configuration containing your Stac Cloud project ID.
  ///   Required for fetching screens from Stac Cloud.
  ///
  /// - [parsers]: Custom widget parsers for extending Stac with custom widgets.
  ///   These are merged with the built-in parsers.
  ///
  /// - [actionParsers]: Custom action parsers for extending Stac with custom actions.
  ///   These are merged with the built-in action parsers.
  ///
  /// - [dio]: Custom Dio instance for network requests. If not provided,
  ///   a default instance is used.
  ///
  /// - [override]: If `true`, allows re-initialization. Useful for testing.
  ///   Defaults to `false`.
  ///
  /// - [showErrorWidgets]: If `true`, shows error widgets when parsing fails.
  ///   If `false`, errors are silent. Defaults to `true`.
  ///
  /// - [logStackTraces]: If `true`, logs stack traces for debugging.
  ///   Defaults to `true`.
  ///
  /// - [errorWidgetBuilder]: Custom builder for error widgets shown when
  ///   parsing fails.
  ///
  /// - [cacheConfig]: Global cache configuration for all Stac widgets and
  ///   StacCloud calls. Defaults to networkFirst strategy if not provided.
  ///
  /// - [initialState]: Values to add to app state ([Stac.state]), readable
  ///   in every screen.
  ///
  /// - [persist]: App state paths to keep between launches, such as
  ///   `settings` or `cart.items`. Their saved values are restored before
  ///   [initialize] completes, replacing those in [initialState], and are
  ///   saved again whenever they change.
  ///
  /// - [stateStorage]: Where [persist] keeps values. Defaults to shared
  ///   preferences.
  ///
  /// - [stateObservers]: Observers told about every change to Stac state.
  ///   Replaces [stateObservers] when given.
  ///
  /// ## Example
  ///
  /// ```dart
  /// void main() async {
  ///   WidgetsFlutterBinding.ensureInitialized();
  ///   await Stac.initialize(
  ///     options: StacOptions(projectId: 'your-project-id'),
  ///     parsers: [MyCustomWidgetParser()],
  ///     actionParsers: [MyCustomActionParser()],
  ///   );
  ///   runApp(MyApp());
  /// }
  /// ```
  static Future<void> initialize({
    StacOptions? options,
    List<StacParser> parsers = const [],
    List<StacActionParser> actionParsers = const [],
    Dio? dio,
    bool override = false,
    bool showErrorWidgets = true,
    bool logStackTraces = true,
    StacErrorWidgetBuilder? errorWidgetBuilder,
    StacCacheConfig? cacheConfig,
    Map<String, dynamic>? initialState,
    List<String> persist = const [],
    StacStateStorage? stateStorage,
    List<StacStateObserver>? stateObservers,
  }) async {
    if (stateObservers != null) {
      StacStateEvents.observers
        ..clear()
        ..addAll(stateObservers);
    }
    initialState?.forEach(stacAppStore.setKey);
    await StacStatePersistence.start(
      stacAppStore,
      persist,
      stateStorage ?? const StacSharedPreferencesStorage(),
    );
    return StacService.initialize(
      options: options,
      parsers: parsers,
      actionParsers: actionParsers,
      dio: dio,
      override: override,
      showErrorWidgets: showErrorWidgets,
      logStackTraces: logStackTraces,
      errorWidgetBuilder: errorWidgetBuilder,
      cacheConfig: cacheConfig,
    );
  }

  @override
  Widget build(BuildContext context) {
    // Each Stac screen has its own screen state and arguments.
    return StacScreenScope(
      arguments: arguments,
      debugLabel: routeName,
      child: _StacView(
        routeName: routeName,
        loadingWidget: loadingWidget,
        errorWidget: errorWidget,
      ),
    );
  }

  /// Converts a JSON map to a Flutter widget.
  ///
  /// Use this method to render a Stac widget definition that you already
  /// have as a JSON map (e.g., from a local file or custom API).
  ///
  /// Returns `null` if the JSON is `null` or cannot be parsed.
  ///
  /// ## Example
  ///
  /// ```dart
  /// final json = {
  ///   'type': 'text',
  ///   'data': 'Hello, World!',
  /// };
  /// final widget = Stac.fromJson(json, context);
  /// ```
  static Widget? fromJson(Map<String, dynamic>? json, BuildContext context) {
    return StacService.fromJson(json, context);
  }

  /// Loads and renders a Stac widget from a local asset file.
  ///
  /// The [assetPath] should point to a JSON file in your assets folder
  /// containing a valid Stac widget definition.
  ///
  /// ## Example
  ///
  /// ```dart
  /// Stac.fromAssets(
  ///   'assets/screens/home.json',
  ///   loadingWidget: (context) => CircularProgressIndicator(),
  ///   errorWidget: (context, error) => Text('Error: $error'),
  /// )
  /// ```
  static Widget fromAssets(
    String assetPath, {
    LoadingWidgetBuilder? loadingWidget,
    ErrorWidgetBuilder? errorWidget,
  }) {
    return StacService.fromAssets(
      assetPath,
      loadingWidget: loadingWidget,
      errorWidget: errorWidget,
    );
  }

  /// Loads and renders a Stac widget from a custom network request.
  ///
  /// Use this when you need to fetch Stac widget definitions from your
  /// own API instead of Stac Cloud.
  ///
  /// The [request] defines the network request configuration including
  /// URL, method, headers, and body.
  ///
  /// ## Example
  ///
  /// ```dart
  /// Stac.fromNetwork(
  ///   context: context,
  ///   request: StacNetworkRequest(
  ///     url: 'https://api.example.com/screens/home',
  ///     method: 'GET',
  ///   ),
  ///   loadingWidget: (context) => CircularProgressIndicator(),
  /// )
  /// ```
  static Widget fromNetwork({
    required BuildContext context,
    required StacNetworkRequest request,
    LoadingWidgetBuilder? loadingWidget,
    ErrorWidgetBuilder? errorWidget,
  }) {
    return StacService.fromNetwork(
      context: context,
      request: request,
      loadingWidget: loadingWidget,
      errorWidget: errorWidget,
    );
  }

  /// Executes a Stac action from a JSON definition.
  ///
  /// Use this to programmatically trigger Stac actions (like navigation,
  /// network requests, or custom actions) from JSON definitions.
  ///
  /// Returns the result of the action, which varies by action type.
  ///
  /// ## Example
  ///
  /// ```dart
  /// final actionJson = {
  ///   'actionType': 'navigate',
  ///   'routeName': '/details',
  /// };
  /// await Stac.onCallFromJson(actionJson, context);
  /// ```
  static FutureOr<dynamic> onCallFromJson(
    Map<String, dynamic>? json,
    BuildContext context,
  ) {
    return StacService.onCallFromJson(json, context);
  }
}

/// Internal widget that fetches and renders a Stac Cloud screen.
///
/// The screen is fetched once and kept across rebuilds; it is fetched again
/// only when [routeName] changes.
class _StacView extends StatefulWidget {
  const _StacView({
    required this.routeName,
    this.loadingWidget,
    this.errorWidget,
  });

  final String routeName;
  final Widget? loadingWidget;
  final Widget? errorWidget;

  @override
  State<_StacView> createState() => _StacViewState();
}

class _StacViewState extends State<_StacView> {
  Future<Map<String, dynamic>?>? _future;

  @override
  void initState() {
    super.initState();
    _future = _load();
  }

  @override
  void didUpdateWidget(covariant _StacView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.routeName != widget.routeName) {
      _future = _load();
    }
  }

  Future<Map<String, dynamic>?>? _load() {
    if (StacService.options == null) return null;
    return StacCloud.fetchScreen(routeName: widget.routeName).then((response) {
      if (response == null) return null;
      final jsonString = response.data['stacJson'];
      return jsonDecode(jsonString) as Map<String, dynamic>;
    });
  }

  @override
  Widget build(BuildContext context) {
    final options = StacService.options;
    if (options == null) {
      throw Exception('StacOptions is not set');
    }
    _future ??= _load();

    return FutureBuilder<Map<String, dynamic>?>(
      future: _future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return widget.loadingWidget ?? const _LoadingWidget();
        }
        if (snapshot.hasError) {
          return widget.errorWidget ?? const SizedBox();
        }
        final json = snapshot.data;
        if (json != null) {
          return StacService.fromJson(json, context) ?? const SizedBox();
        }
        return const SizedBox();
      },
    );
  }
}

/// Default loading widget shown when no custom loading widget is provided.
class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return const Material(child: Center(child: CircularProgressIndicator()));
  }
}
