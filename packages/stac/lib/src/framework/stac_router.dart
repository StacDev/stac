import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:stac/src/framework/stac.dart';
import 'package:stac/src/framework/stac_args.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';

/// Configures go_router for Stac applications.
///
/// [StacRouter] provides a simple way to set up routing with automatic support
/// for Stac Cloud screens and dynamic content (JSON, assets, network).
///
/// ## Basic Usage
///
/// ```dart
/// void main() async {
///   await Stac.initialize(...);
///
///   final router = StacRouter.configure(
///     routes: [
///       GoRoute(path: '/', builder: (ctx, state) => HomeScreen()),
///       GoRoute(
///         name: 'checkout',
///         path: '/checkout/:cartId',
///         builder: (ctx, state) => CheckoutScreen(
///           cartId: state.pathParameters['cartId']!,
///         ),
///       ),
///     ],
///   );
///
///   runApp(MaterialApp.router(routerConfig: router));
/// }
/// ```
///
/// ## Stac Cloud Screens
///
/// You don't need to define routes for Stac Cloud screens. Just use:
/// ```dart
/// StacNavigator.pushStac('home');  // Works without route definition
/// ```
///
/// ## Custom URL for Stac Cloud Screen
///
/// If you want a Stac Cloud screen at a custom URL (for deep linking):
/// ```dart
/// StacRouter.stacRoute('/promotions', name: 'promos'),
/// ```
class StacRouter {
  StacRouter._();

  static GoRouter? _router;

  /// Returns the current [GoRouter] instance.
  ///
  /// Throws [StateError] if [configure] has not been called.
  static GoRouter get instance {
    if (_router == null) {
      throw StateError(
        'StacRouter has not been configured. '
        'Call StacRouter.configure() before using StacNavigator.',
      );
    }
    return _router!;
  }

  /// Configures the router with user routes and auto-generated Stac routes.
  ///
  /// If a [router] is provided, it will be used directly. Otherwise, a new
  /// [GoRouter] is created with the provided [routes] and Stac internal routes.
  ///
  /// Parameters:
  /// - [router]: An existing GoRouter instance to use
  /// - [routes]: User-defined routes (use GoRoute's `name` for Stac navigation)
  /// - [initialLocation]: The initial route path (default: '/')
  /// - [redirect]: Global redirect logic
  /// - [navigatorKey]: Key for the root navigator
  /// - [errorBuilder]: Widget to show on navigation errors
  /// - [observers]: Navigation observers
  ///
  /// Returns the configured [GoRouter] instance.
  static GoRouter configure({
    GoRouter? router,
    List<RouteBase>? routes,
    String initialLocation = '/',
    GoRouterRedirect? redirect,
    GlobalKey<NavigatorState>? navigatorKey,
    Widget Function(BuildContext, GoRouterState)? errorBuilder,
    List<NavigatorObserver>? observers,
  }) {
    if (router != null) {
      _router = router;
      return router;
    }

    _router = GoRouter(
      initialLocation: initialLocation,
      redirect: redirect,
      navigatorKey: navigatorKey,
      errorBuilder: errorBuilder,
      observers: observers ?? [],
      routes: [
        // User-provided routes (use GoRoute's name property for Stac navigation)
        ...?routes,

        // Internal Stac routes for cloud screens and dynamic content
        ..._buildStacInternalRoutes(),
      ],
    );
    return _router!;
  }

  /// Resets the router configuration.
  ///
  /// This is primarily useful for testing.
  static void reset() {
    _router = null;
  }

  /// Builds internal Stac routes for cloud screens and dynamic content.
  ///
  /// These routes are used internally by [StacNavigator] methods:
  /// - `/_stac/:routeName` - For Stac Cloud screens via [StacNavigator.pushStac]
  /// - `/_stac/dynamic` - For JSON, asset, and network screens
  static List<GoRoute> _buildStacInternalRoutes() {
    return [
      // Stac Cloud screens - only used via StacNavigator.pushStac/goStac
      GoRoute(
        path: '/_stac/:routeName',
        builder: (context, state) {
          final routeName = state.pathParameters['routeName']!;
          final extra = state.extra as Map<String, dynamic>? ?? {};

          // Wrap with StacArgs to make arguments accessible via {{args.key}}
          return StacArgs(
            args: extra,
            pathParameters: state.pathParameters,
            queryParameters: state.uri.queryParameters,
            child: Stac(routeName: '/$routeName'),
          );
        },
      ),

      // Dynamic screens (JSON, asset, network)
      GoRoute(
        path: '/_stac/dynamic',
        builder: (context, state) {
          final extra = state.extra as StacDynamicExtra;

          // Wrap with StacArgs to make arguments accessible via {{args.key}}
          return StacArgs(
            args: extra.args ?? {},
            pathParameters: state.pathParameters,
            queryParameters: state.uri.queryParameters,
            child: _StacDynamicScreen(extra: extra),
          );
        },
      ),
    ];
  }

  /// Creates a [GoRoute] for a Stac Cloud screen.
  ///
  /// Use this helper when you want a Stac Cloud screen at a custom URL path
  /// (e.g., `/promotions` instead of the internal `/_stac/promotions`).
  ///
  /// Example:
  /// ```dart
  /// StacRouter.configure(
  ///   routes: [
  ///     StacRouter.stacRoute('/promotions', name: 'promos'),
  ///   ],
  /// );
  /// ```
  static GoRoute stacRoute(String path, {String? name}) {
    return GoRoute(
      path: path,
      name: name,
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>? ?? {};

        return StacArgs(
          args: extra,
          pathParameters: state.pathParameters,
          queryParameters: state.uri.queryParameters,
          child: Stac(routeName: path),
        );
      },
    );
  }
}

/// Internal widget that renders dynamic screens (JSON, asset, network).
class _StacDynamicScreen extends StatelessWidget {
  final StacDynamicExtra extra;

  const _StacDynamicScreen({required this.extra});

  @override
  Widget build(BuildContext context) {
    switch (extra.type) {
      case StacDynamicType.json:
        return Stac.fromJson(extra.widgetJson!, context) ?? const SizedBox();
      case StacDynamicType.asset:
        return Stac.fromAssets(extra.assetPath!);
      case StacDynamicType.network:
        return Stac.fromNetwork(context: context, request: extra.request!);
    }
  }
}

/// Types of dynamic screen sources.
enum StacDynamicType {
  /// Screen defined by inline JSON widget.
  json,

  /// Screen loaded from a local asset file.
  asset,

  /// Screen fetched from a network request.
  network,
}

/// Data class for passing dynamic screen information through navigation.
class StacDynamicExtra {
  /// The type of dynamic screen.
  final StacDynamicType type;

  /// Inline JSON widget definition (for [StacDynamicType.json]).
  final Map<String, dynamic>? widgetJson;

  /// Asset file path (for [StacDynamicType.asset]).
  final String? assetPath;

  /// Network request (for [StacDynamicType.network]).
  final StacNetworkRequest? request;

  /// Arguments to pass to the screen.
  final Map<String, dynamic>? args;

  /// Creates a [StacDynamicExtra] instance.
  const StacDynamicExtra({
    required this.type,
    this.widgetJson,
    this.assetPath,
    this.request,
    this.args,
  });
}
