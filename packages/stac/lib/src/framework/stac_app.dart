import 'package:flutter/material.dart';
import 'package:stac/src/framework/stac_app_theme.dart';
import 'package:stac/src/parsers/foundation/colors/stac_brightness_parser.dart';
import 'package:stac/src/parsers/theme/themes.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_logger/stac_logger.dart';

class StacApp extends StatefulWidget {
  const StacApp({
    super.key,
    this.navigatorKey,
    this.scaffoldMessengerKey,
    this.homeBuilder,
    Map<String, WidgetBuilder> this.routes = const <String, WidgetBuilder>{},
    this.initialRoute,
    this.onGenerateRoute,
    this.onGenerateInitialRoutes,
    this.onUnknownRoute,
    List<NavigatorObserver> this.navigatorObservers =
        const <NavigatorObserver>[],
    this.builder,
    this.title = '',
    this.onGenerateTitle,
    this.color,
    this.theme,
    this.darkTheme,
    this.highContrastTheme,
    this.highContrastDarkTheme,
    this.themeMode = ThemeMode.system,
    this.themeAnimationDuration = kThemeAnimationDuration,
    this.themeAnimationCurve = Curves.linear,
    this.locale,
    this.localizationsDelegates,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.debugShowMaterialGrid = false,
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowCheckedModeBanner = true,
    this.shortcuts,
    this.actions,
    this.restorationScopeId,
    this.scrollBehavior,
    this.useInheritedMediaQuery = false,
  }) : routeInformationProvider = null,
       routeInformationParser = null,
       routerDelegate = null,
       backButtonDispatcher = null,
       routerConfig = null;

  const StacApp.router({
    super.key,
    this.scaffoldMessengerKey,
    this.routeInformationProvider,
    this.routeInformationParser,
    this.routerDelegate,
    this.routerConfig,
    this.backButtonDispatcher,
    this.builder,
    this.title = '',
    this.onGenerateTitle,
    this.color,
    this.theme,
    this.darkTheme,
    this.highContrastTheme,
    this.highContrastDarkTheme,
    this.themeMode = ThemeMode.system,
    this.themeAnimationDuration = kThemeAnimationDuration,
    this.themeAnimationCurve = Curves.linear,
    this.locale,
    this.localizationsDelegates,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.debugShowMaterialGrid = false,
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowCheckedModeBanner = true,
    this.shortcuts,
    this.actions,
    this.restorationScopeId,
    this.scrollBehavior,
    this.useInheritedMediaQuery = false,
  }) : navigatorObservers = null,
       navigatorKey = null,
       onGenerateRoute = null,
       homeBuilder = null,
       onGenerateInitialRoutes = null,
       onUnknownRoute = null,
       routes = null,
       initialRoute = null;

  @override
  State<StacApp> createState() => _StacAppState();

  final GlobalKey<NavigatorState>? navigatorKey;
  final GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey;
  final Widget? Function(BuildContext)? homeBuilder;
  final Map<String, WidgetBuilder>? routes;
  final String? initialRoute;
  final RouteFactory? onGenerateRoute;
  final InitialRouteListFactory? onGenerateInitialRoutes;
  final RouteFactory? onUnknownRoute;
  final List<NavigatorObserver>? navigatorObservers;
  final RouteInformationProvider? routeInformationProvider;
  final RouteInformationParser<Object>? routeInformationParser;
  final RouterDelegate<Object>? routerDelegate;
  final BackButtonDispatcher? backButtonDispatcher;
  final RouterConfig<Object>? routerConfig;
  final TransitionBuilder? builder;
  final String title;
  final GenerateAppTitle? onGenerateTitle;
  final StacAppTheme? theme;
  final StacAppTheme? darkTheme;
  final ThemeData? highContrastTheme;
  final ThemeData? highContrastDarkTheme;
  final ThemeMode? themeMode;
  final Duration themeAnimationDuration;
  final Curve themeAnimationCurve;
  final Color? color;
  final Locale? locale;
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final LocaleListResolutionCallback? localeListResolutionCallback;
  final LocaleResolutionCallback? localeResolutionCallback;
  final Iterable<Locale> supportedLocales;
  final bool showPerformanceOverlay;
  final bool checkerboardRasterCacheImages;
  final bool checkerboardOffscreenLayers;
  final bool showSemanticsDebugger;
  final bool debugShowCheckedModeBanner;
  final Map<ShortcutActivator, Intent>? shortcuts;
  final Map<Type, Action<Intent>>? actions;
  final String? restorationScopeId;
  final ScrollBehavior? scrollBehavior;
  final bool debugShowMaterialGrid;
  final bool useInheritedMediaQuery;
}

class _StacAppState extends State<StacApp> {
  _ResolvedStacThemes? _resolvedThemes;

  // Counts theme loads, so an earlier load that finishes late can't replace
  // the themes of a newer one.
  int _themesGeneration = 0;

  @override
  void initState() {
    super.initState();
    _loadThemes();
  }

  @override
  void didUpdateWidget(covariant StacApp oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.theme != widget.theme ||
        oldWidget.darkTheme != widget.darkTheme) {
      _loadThemes();
    }
  }

  /// Resolves [StacApp.theme] and [StacApp.darkTheme]. While new themes
  /// resolve, the app keeps the ones it already has.
  void _loadThemes() {
    final generation = ++_themesGeneration;
    _resolveThemes()
        .then((themes) {
          if (mounted && generation == _themesGeneration) {
            setState(() {
              _resolvedThemes = themes;
            });
          }
        })
        .catchError((error) {
          if (mounted && generation == _themesGeneration) {
            Log.w('Failed to resolve theme: $error');
            setState(() {
              _resolvedThemes ??= (theme: null, darkTheme: null);
            });
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    final themes = _resolvedThemes;
    if (themes == null) {
      return const _LoadingWidget();
    }

    return _StacThemeScope(
      theme: themes.theme,
      builder: (theme) => _StacThemeScope(
        theme: themes.darkTheme,
        builder: (darkTheme) {
          if (widget.routerDelegate != null || widget.routerConfig != null) {
            return _buildMaterialAppRouter(theme, darkTheme);
          }
          return _buildMaterialApp(theme, darkTheme);
        },
      ),
    );
  }

  Widget _buildMaterialApp(ThemeData? theme, ThemeData? darkTheme) {
    return MaterialApp(
      navigatorKey: widget.navigatorKey,
      scaffoldMessengerKey: widget.scaffoldMessengerKey,
      home: Builder(
        builder: (context) {
          if (widget.homeBuilder != null) {
            return widget.homeBuilder!(context) ?? const SizedBox();
          }
          return const SizedBox();
        },
      ),
      routes: widget.routes ?? {},
      initialRoute: widget.initialRoute,
      onGenerateRoute: widget.onGenerateRoute,
      onGenerateInitialRoutes: widget.onGenerateInitialRoutes,
      onUnknownRoute: widget.onUnknownRoute,
      navigatorObservers: widget.navigatorObservers ?? [],
      builder: widget.builder,
      title: widget.title,
      onGenerateTitle: widget.onGenerateTitle,
      theme: theme,
      darkTheme: darkTheme,
      highContrastTheme: widget.highContrastTheme,
      highContrastDarkTheme: widget.highContrastDarkTheme,
      themeMode: widget.themeMode,
      themeAnimationDuration: widget.themeAnimationDuration,
      themeAnimationCurve: widget.themeAnimationCurve,
      color: widget.color,
      locale: widget.locale,
      localizationsDelegates: widget.localizationsDelegates,
      localeListResolutionCallback: widget.localeListResolutionCallback,
      localeResolutionCallback: widget.localeResolutionCallback,
      supportedLocales: widget.supportedLocales,
      showPerformanceOverlay: widget.showPerformanceOverlay,
      checkerboardRasterCacheImages: widget.checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: widget.checkerboardOffscreenLayers,
      showSemanticsDebugger: widget.showSemanticsDebugger,
      debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner,
      shortcuts: widget.shortcuts,
      actions: widget.actions,
      restorationScopeId: widget.restorationScopeId,
      scrollBehavior: widget.scrollBehavior,
      debugShowMaterialGrid: widget.debugShowMaterialGrid,
    );
  }

  Widget _buildMaterialAppRouter(ThemeData? theme, ThemeData? darkTheme) {
    return MaterialApp.router(
      scaffoldMessengerKey: widget.scaffoldMessengerKey,
      routeInformationProvider: widget.routeInformationProvider,
      routeInformationParser: widget.routeInformationParser,
      routerDelegate: widget.routerDelegate,
      routerConfig: widget.routerConfig,
      backButtonDispatcher: widget.backButtonDispatcher,
      builder: widget.builder,
      title: widget.title,
      onGenerateTitle: widget.onGenerateTitle,
      color: widget.color,
      theme: theme,
      darkTheme: darkTheme,
      highContrastTheme: widget.highContrastTheme,
      highContrastDarkTheme: widget.highContrastDarkTheme,
      themeMode: widget.themeMode,
      themeAnimationDuration: widget.themeAnimationDuration,
      themeAnimationCurve: widget.themeAnimationCurve,
      locale: widget.locale,
      localizationsDelegates: widget.localizationsDelegates,
      localeListResolutionCallback: widget.localeListResolutionCallback,
      localeResolutionCallback: widget.localeResolutionCallback,
      supportedLocales: widget.supportedLocales,
      debugShowMaterialGrid: widget.debugShowMaterialGrid,
      showPerformanceOverlay: widget.showPerformanceOverlay,
      checkerboardRasterCacheImages: widget.checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: widget.checkerboardOffscreenLayers,
      showSemanticsDebugger: widget.showSemanticsDebugger,
      debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner,
      shortcuts: widget.shortcuts,
      actions: widget.actions,
      restorationScopeId: widget.restorationScopeId,
      scrollBehavior: widget.scrollBehavior,
    );
  }

  Future<_ResolvedStacThemes> _resolveThemes() {
    final themeInput = widget.theme;
    final darkThemeInput = widget.darkTheme;

    // Both themes are optional, so we need to handle null cases
    final Future<StacTheme?>? themeFuture = themeInput?.resolve();
    final Future<StacTheme?>? darkThemeFuture = darkThemeInput?.resolve();

    // If both are null, return immediately with null themes
    if (themeFuture == null && darkThemeFuture == null) {
      return Future.value((theme: null, darkTheme: null));
    }

    return Future<_ResolvedStacThemes>(() async {
      final resolvedTheme =
          await (themeFuture ?? Future<StacTheme?>.value(null));
      final resolvedDarkTheme =
          await (darkThemeFuture ?? Future<StacTheme?>.value(null));

      return (theme: resolvedTheme, darkTheme: resolvedDarkTheme);
    });
  }
}

typedef _ResolvedStacThemes = ({StacTheme? theme, StacTheme? darkTheme});

/// Parses [theme] under a [Theme] built from its own colors, so theme color
/// names inside it, such as `'primary'`, resolve against its color scheme
/// rather than whatever theme sits above [StacApp].
class _StacThemeScope extends StatelessWidget {
  const _StacThemeScope({required this.theme, required this.builder});

  final StacTheme? theme;
  final Widget Function(ThemeData? themeData) builder;

  // Used when there's no theme, so the widget tree keeps the same shape and
  // the MaterialApp below keeps its state if a theme comes or goes.
  static final ThemeData _noTheme = ThemeData();

  @override
  Widget build(BuildContext context) {
    final theme = this.theme;
    return Theme(
      data: theme == null
          ? _noTheme
          : ThemeData(
              useMaterial3: theme.useMaterial3,
              colorScheme: theme.colorScheme?.parse(context),
              brightness: theme.brightness?.parse,
              colorSchemeSeed: theme.colorSchemeSeed?.toColor(context),
              primarySwatch: theme.primarySwatch?.parse(context),
            ),
      child: Builder(builder: (context) => builder(theme?.parse(context))),
    );
  }
}

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return const Material(child: Center(child: CircularProgressIndicator()));
  }
}
