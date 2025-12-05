import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/src/parsers/theme/themes.dart';

class StacApp extends StatelessWidget {
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
  final FutureOr<StacTheme?>? theme;
  final FutureOr<StacTheme?>? darkTheme;
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

  @override
  Widget build(BuildContext context) {
    if (routerDelegate != null || routerConfig != null) {
      return _materialRouterApp(context);
    }
    return _materialApp(context);
  }

  Widget _materialApp(BuildContext context) {
    return _withResolvedThemes(
      context,
      (resolvedContext, resolved) =>
          _buildMaterialApp(resolvedContext, resolved),
    );
  }

  Widget _materialRouterApp(BuildContext context) {
    return _withResolvedThemes(
      context,
      (resolvedContext, resolved) =>
          _buildMaterialAppRouter(resolvedContext, resolved),
    );
  }

  Widget _buildMaterialApp(BuildContext context, _ResolvedStacThemes themes) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      scaffoldMessengerKey: scaffoldMessengerKey,
      home: Builder(
        builder: (context) {
          if (homeBuilder != null) {
            return homeBuilder!(context) ?? const SizedBox();
          }
          return const SizedBox();
        },
      ),
      routes: routes ?? {},
      initialRoute: initialRoute,
      onGenerateRoute: onGenerateRoute,
      onGenerateInitialRoutes: onGenerateInitialRoutes,
      onUnknownRoute: onUnknownRoute,
      navigatorObservers: navigatorObservers ?? [],
      builder: builder,
      title: title,
      onGenerateTitle: onGenerateTitle,
      theme: themes.theme?.parse(context),
      darkTheme: themes.darkTheme?.parse(context),
      highContrastTheme: highContrastTheme,
      highContrastDarkTheme: highContrastDarkTheme,
      themeMode: themeMode,
      themeAnimationDuration: themeAnimationDuration,
      themeAnimationCurve: themeAnimationCurve,
      color: color,
      locale: locale,
      localizationsDelegates: localizationsDelegates,
      localeListResolutionCallback: localeListResolutionCallback,
      localeResolutionCallback: localeResolutionCallback,
      supportedLocales: supportedLocales,
      showPerformanceOverlay: showPerformanceOverlay,
      checkerboardRasterCacheImages: checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: checkerboardOffscreenLayers,
      showSemanticsDebugger: showSemanticsDebugger,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      shortcuts: shortcuts,
      actions: actions,
      restorationScopeId: restorationScopeId,
      scrollBehavior: scrollBehavior,
      debugShowMaterialGrid: debugShowMaterialGrid,
    );
  }

  Widget _buildMaterialAppRouter(
    BuildContext context,
    _ResolvedStacThemes themes,
  ) {
    return MaterialApp.router(
      scaffoldMessengerKey: scaffoldMessengerKey,
      routeInformationProvider: routeInformationProvider,
      routeInformationParser: routeInformationParser,
      routerDelegate: routerDelegate,
      routerConfig: routerConfig,
      backButtonDispatcher: backButtonDispatcher,
      builder: builder,
      title: title,
      onGenerateTitle: onGenerateTitle,
      color: color,
      theme: themes.theme?.parse(context),
      darkTheme: themes.darkTheme?.parse(context),
      highContrastTheme: highContrastTheme,
      highContrastDarkTheme: highContrastDarkTheme,
      themeMode: themeMode,
      themeAnimationDuration: themeAnimationDuration,
      themeAnimationCurve: themeAnimationCurve,
      locale: locale,
      localizationsDelegates: localizationsDelegates,
      localeListResolutionCallback: localeListResolutionCallback,
      localeResolutionCallback: localeResolutionCallback,
      supportedLocales: supportedLocales,
      debugShowMaterialGrid: debugShowMaterialGrid,
      showPerformanceOverlay: showPerformanceOverlay,
      checkerboardRasterCacheImages: checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: checkerboardOffscreenLayers,
      showSemanticsDebugger: showSemanticsDebugger,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      shortcuts: shortcuts,
      actions: actions,
      restorationScopeId: restorationScopeId,
      scrollBehavior: scrollBehavior,
    );
  }

  FutureOr<_ResolvedStacThemes> _resolveThemes() {
    final themeInput = theme;
    final darkThemeInput = darkTheme;

    final Future<StacTheme?>? themeFuture = themeInput is Future<StacTheme?>
        ? themeInput
        : null;
    final Future<StacTheme?>? darkThemeFuture =
        darkThemeInput is Future<StacTheme?> ? darkThemeInput : null;

    final StacTheme? themeValue = themeFuture == null
        ? themeInput as StacTheme?
        : null;
    final StacTheme? darkThemeValue = darkThemeFuture == null
        ? darkThemeInput as StacTheme?
        : null;

    if (themeFuture == null && darkThemeFuture == null) {
      return _ResolvedStacThemes(theme: themeValue, darkTheme: darkThemeValue);
    }

    return Future<_ResolvedStacThemes>(() async {
      final resolvedTheme =
          await (themeFuture ?? Future<StacTheme?>.value(themeValue));
      final resolvedDarkTheme =
          await (darkThemeFuture ?? Future<StacTheme?>.value(darkThemeValue));

      return _ResolvedStacThemes(
        theme: resolvedTheme,
        darkTheme: resolvedDarkTheme,
      );
    });
  }

  Widget _withResolvedThemes(
    BuildContext context,
    Widget Function(BuildContext, _ResolvedStacThemes) builder,
  ) {
    final resolved = _resolveThemes();
    if (resolved is Future<_ResolvedStacThemes>) {
      return FutureBuilder<_ResolvedStacThemes>(
        future: resolved,
        builder: (futureContext, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const _ThemeFutureLoading();
          }
          if (snapshot.hasError) {
            return const _ThemeFutureLoading();
          }
          final themes = snapshot.data;
          if (themes == null) {
            return const _ThemeFutureLoading();
          }
          return builder(futureContext, themes);
        },
      );
    }
    return builder(context, resolved);
  }
}

class _ResolvedStacThemes {
  const _ResolvedStacThemes({required this.theme, required this.darkTheme});

  final StacTheme? theme;
  final StacTheme? darkTheme;
}

class _ThemeFutureLoading extends StatelessWidget {
  const _ThemeFutureLoading();

  @override
  Widget build(BuildContext context) {
    return const Material(child: Center(child: CircularProgressIndicator()));
  }
}
