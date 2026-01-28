import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stac/src/framework/stac_app_theme.dart';
import 'package:stac/src/framework/stac_router.dart';
import 'package:stac/src/parsers/theme/themes.dart';
import 'package:stac_logger/stac_logger.dart';

/// A convenience widget that wraps [MaterialApp.router] with Stac support.
///
/// [StacApp] provides several ways to configure routing:
///
/// ## Using GoRouter directly
///
/// ```dart
/// final router = GoRouter(
///   routes: [...],
/// );
///
/// StacApp(
///   goRouter: router,
/// )
/// ```
///
/// ## Using a list of routes (auto-configures StacRouter)
///
/// ```dart
/// StacApp(
///   routes: [
///     GoRoute(path: '/', builder: (ctx, state) => HomeScreen()),
///     GoRoute(
///       name: 'checkout',
///       path: '/checkout/:cartId',
///       builder: (ctx, state) => CheckoutScreen(...),
///     ),
///   ],
/// )
/// ```
///
/// ## Pure Stac Cloud mode
///
/// ```dart
/// StacApp.stac(
///   initialRoute: '/home',
/// )
/// ```
class StacApp extends StatefulWidget {
  /// Creates a [StacApp] with the specified routes.
  ///
  /// Either [goRouter] or [routes] should be provided.
  /// If [routes] is provided, [StacRouter.configure] is called automatically.
  const StacApp({
    super.key,
    this.goRouter,
    this.routes,
    this.initialLocation = '/',
    this.redirect,
    this.scaffoldMessengerKey,
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
  });

  /// Creates a [StacApp] configured for pure Stac Cloud mode.
  ///
  /// In this mode, all screens are fetched from Stac Cloud.
  /// No user-defined routes are needed.
  ///
  /// ```dart
  /// StacApp.stac(
  ///   initialRoute: '/home',
  /// )
  /// ```
  StacApp.stac({
    super.key,
    required String initialRoute,
    this.scaffoldMessengerKey,
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
  }) : goRouter = null,
       routes = null,
       initialLocation = '/_stac${initialRoute.startsWith('/') ? initialRoute : '/$initialRoute'}',
       redirect = null;

  @override
  State<StacApp> createState() => _StacAppState();

  /// An existing [GoRouter] instance to use.
  ///
  /// If provided, [routes] is ignored.
  final GoRouter? goRouter;

  /// User-defined routes.
  ///
  /// These are passed to [StacRouter.configure] which combines them
  /// with Stac internal routes.
  final List<RouteBase>? routes;

  /// The initial location for the router.
  ///
  /// Defaults to '/'.
  final String initialLocation;

  /// Global redirect logic.
  final GoRouterRedirect? redirect;

  /// Key for the scaffold messenger.
  final GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey;

  /// A builder for adding widgets above the navigator.
  final TransitionBuilder? builder;

  /// The title of the application.
  final String title;

  /// Generates the title based on context.
  final GenerateAppTitle? onGenerateTitle;

  /// The primary color of the application.
  final Color? color;

  /// The light theme for the application.
  final StacAppTheme? theme;

  /// The dark theme for the application.
  final StacAppTheme? darkTheme;

  /// The high contrast light theme.
  final ThemeData? highContrastTheme;

  /// The high contrast dark theme.
  final ThemeData? highContrastDarkTheme;

  /// The theme mode (light, dark, or system).
  final ThemeMode? themeMode;

  /// Duration of theme animations.
  final Duration themeAnimationDuration;

  /// Curve for theme animations.
  final Curve themeAnimationCurve;

  /// The locale for the application.
  final Locale? locale;

  /// Localization delegates.
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;

  /// Callback for resolving the locale from a list.
  final LocaleListResolutionCallback? localeListResolutionCallback;

  /// Callback for resolving the locale.
  final LocaleResolutionCallback? localeResolutionCallback;

  /// Supported locales.
  final Iterable<Locale> supportedLocales;

  /// Whether to show the material grid overlay.
  final bool debugShowMaterialGrid;

  /// Whether to show the performance overlay.
  final bool showPerformanceOverlay;

  /// Whether to checkerboard raster cache images.
  final bool checkerboardRasterCacheImages;

  /// Whether to checkerboard offscreen layers.
  final bool checkerboardOffscreenLayers;

  /// Whether to show the semantics debugger.
  final bool showSemanticsDebugger;

  /// Whether to show the debug banner.
  final bool debugShowCheckedModeBanner;

  /// Keyboard shortcuts.
  final Map<ShortcutActivator, Intent>? shortcuts;

  /// Actions for intents.
  final Map<Type, Action<Intent>>? actions;

  /// Restoration scope ID.
  final String? restorationScopeId;

  /// Scroll behavior.
  final ScrollBehavior? scrollBehavior;
}

class _StacAppState extends State<StacApp> {
  Future<_ResolvedStacThemes>? _themesFuture;
  _ResolvedStacThemes? _resolvedThemes;
  GoRouter? _router;

  @override
  void initState() {
    super.initState();
    _initRouter();
    _themesFuture = _resolveThemes();
    _themesFuture!
        .then((themes) {
          if (mounted) {
            setState(() {
              _resolvedThemes = themes;
            });
          }
        })
        .catchError((error) {
          if (mounted) {
            Log.w('Failed to resolve theme: $error');
            setState(() {
              _resolvedThemes = (theme: null, darkTheme: null);
            });
          }
        });
  }

  void _initRouter() {
    if (widget.goRouter != null) {
      _router = widget.goRouter;
      // Also configure StacRouter so StacNavigator works
      StacRouter.configure(router: widget.goRouter);
    } else {
      _router = StacRouter.configure(
        routes: widget.routes,
        initialLocation: widget.initialLocation,
        redirect: widget.redirect,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_resolvedThemes == null) {
      return const _LoadingWidget();
    }

    return _buildMaterialAppRouter(context, _resolvedThemes!);
  }

  Widget _buildMaterialAppRouter(
    BuildContext context,
    _ResolvedStacThemes themes,
  ) {
    return MaterialApp.router(
      scaffoldMessengerKey: widget.scaffoldMessengerKey,
      routerConfig: _router,
      builder: widget.builder,
      title: widget.title,
      onGenerateTitle: widget.onGenerateTitle,
      color: widget.color,
      theme: themes.theme?.parse(context),
      darkTheme: themes.darkTheme?.parse(context),
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

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return const Material(child: Center(child: CircularProgressIndicator()));
  }
}
