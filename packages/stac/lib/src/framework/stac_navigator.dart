import 'package:go_router/go_router.dart';
import 'package:stac/src/framework/stac_router.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';

/// A simple, static API for navigation in Stac applications.
///
/// [StacNavigator] wraps go_router and provides convenient methods for all
/// types of navigation in Stac apps:
///
/// - **Path-based**: [go], [push], [pop], [pushReplacement]
/// - **Named routes**: [goNamed], [pushNamed]
/// - **Stac Cloud**: [goStac], [pushStac]
/// - **Dynamic content**: [pushJson], [pushAsset], [pushNetwork]
///
/// ## Basic Usage
///
/// ```dart
/// // Path-based navigation
/// StacNavigator.push('/products/123');
/// StacNavigator.go('/home');  // Replaces entire stack
/// StacNavigator.pop();
///
/// // Named route navigation (for Flutter screens)
/// StacNavigator.pushNamed('checkout', pathParameters: {'cartId': 'abc'});
///
/// // Stac Cloud navigation
/// StacNavigator.pushStac('home');
/// StacNavigator.pushStac('profile', extra: {'userId': '123'});
///
/// // Dynamic content navigation
/// StacNavigator.pushJson({'type': 'scaffold', ...});
/// StacNavigator.pushAsset('assets/screens/help.json');
/// ```
///
/// ## Arguments
///
/// All navigation methods support passing extra data via the `extra` parameter.
/// In Stac screens, these arguments are accessible via `{{args.key}}` syntax.
class StacNavigator {
  StacNavigator._();

  static GoRouter get _router => StacRouter.instance;

  // ============ Path-based Navigation ============

  /// Navigates to a path, replacing the entire navigation stack.
  ///
  /// This is equivalent to a "deep link" - the entire navigation history
  /// is replaced with just the new route.
  ///
  /// Example:
  /// ```dart
  /// StacNavigator.go('/home');
  /// StacNavigator.go('/products/123', extra: {'source': 'search'});
  /// ```
  static void go(String path, {Object? extra}) {
    _router.go(path, extra: extra);
  }

  /// Pushes a new route onto the navigation stack.
  ///
  /// The user can navigate back to the previous route using the back button.
  ///
  /// Returns a [Future] that completes when the pushed route is popped,
  /// with the optional result passed to [pop].
  ///
  /// Example:
  /// ```dart
  /// final result = await StacNavigator.push<String>('/select-item');
  /// ```
  static Future<T?> push<T extends Object?>(String path, {Object? extra}) {
    return _router.push<T>(path, extra: extra);
  }

  /// Pops the current route from the navigation stack.
  ///
  /// Optionally pass a [result] that will be returned to the previous route.
  ///
  /// Example:
  /// ```dart
  /// StacNavigator.pop();
  /// StacNavigator.pop({'selectedId': 'item_42'});
  /// ```
  static void pop<T extends Object?>([T? result]) {
    _router.pop<T>(result);
  }

  /// Replaces the current route with a new one.
  ///
  /// The new route replaces the current route in the navigation stack,
  /// so pressing back will skip the replaced route.
  ///
  /// Example:
  /// ```dart
  /// StacNavigator.pushReplacement('/order-confirmation');
  /// ```
  static Future<T?> pushReplacement<T extends Object?>(
    String path, {
    Object? extra,
  }) {
    return _router.pushReplacement<T>(path, extra: extra);
  }

  // ============ Named Route Navigation ============

  /// Navigates to a named route, replacing the entire navigation stack.
  ///
  /// Use this for Flutter screens defined with [GoRoute.name].
  ///
  /// Example:
  /// ```dart
  /// StacNavigator.goNamed('checkout', pathParameters: {'cartId': 'abc'});
  /// ```
  static void goNamed(
    String name, {
    Map<String, String> pathParameters = const {},
    Map<String, String> queryParameters = const {},
    Object? extra,
  }) {
    _router.goNamed(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  /// Pushes a named route onto the navigation stack.
  ///
  /// Use this for Flutter screens defined with [GoRoute.name].
  ///
  /// Example:
  /// ```dart
  /// StacNavigator.pushNamed(
  ///   'productDetails',
  ///   pathParameters: {'id': '123'},
  ///   extra: {'fromScreen': 'search'},
  /// );
  /// ```
  static Future<T?> pushNamed<T extends Object?>(
    String name, {
    Map<String, String> pathParameters = const {},
    Map<String, String> queryParameters = const {},
    Object? extra,
  }) {
    return _router.pushNamed<T>(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  // ============ Stac Cloud Navigation ============

  /// Navigates to a Stac Cloud screen, replacing the entire navigation stack.
  ///
  /// No route definition is needed - the screen is automatically fetched
  /// from Stac Cloud using the [routeName].
  ///
  /// Example:
  /// ```dart
  /// StacNavigator.goStac('home');
  /// StacNavigator.goStac('dashboard', extra: {'userId': '123'});
  /// ```
  ///
  /// In the Stac screen, access arguments via `{{args.userId}}`.
  static void goStac(String routeName, {Object? extra}) {
    _router.go('/_stac/$routeName', extra: extra);
  }

  /// Pushes a Stac Cloud screen onto the navigation stack.
  ///
  /// No route definition is needed - the screen is automatically fetched
  /// from Stac Cloud using the [routeName].
  ///
  /// Example:
  /// ```dart
  /// StacNavigator.pushStac('profile');
  /// StacNavigator.pushStac('productDetails', extra: {'productId': '42'});
  /// ```
  ///
  /// In the Stac screen, access arguments via `{{args.productId}}`.
  static Future<T?> pushStac<T extends Object?>(
    String routeName, {
    Object? extra,
  }) {
    return _router.push<T>('/_stac/$routeName', extra: extra);
  }

  // ============ Dynamic Screen Navigation ============

  /// Pushes a screen from an inline JSON widget definition.
  ///
  /// The widget JSON is parsed and rendered as a Stac screen.
  /// Arguments passed via [args] are accessible via `{{args.key}}`.
  ///
  /// Example:
  /// ```dart
  /// StacNavigator.pushJson(
  ///   {
  ///     'type': 'scaffold',
  ///     'appBar': {
  ///       'type': 'appBar',
  ///       'title': {'type': 'text', 'data': '{{args.title}}'}
  ///     },
  ///     'body': {'type': 'text', 'data': 'Hello, {{args.name}}!'}
  ///   },
  ///   args: {'title': 'Welcome', 'name': 'John'},
  /// );
  /// ```
  static Future<T?> pushJson<T extends Object?>(
    Map<String, dynamic> widgetJson, {
    Map<String, dynamic>? args,
  }) {
    return _router.push<T>(
      '/_stac/dynamic',
      extra: StacDynamicExtra(
        type: StacDynamicType.json,
        widgetJson: widgetJson,
        args: args,
      ),
    );
  }

  /// Pushes a screen from a local asset file.
  ///
  /// The asset file should contain valid Stac JSON.
  /// Arguments passed via [args] are accessible via `{{args.key}}`.
  ///
  /// Example:
  /// ```dart
  /// StacNavigator.pushAsset(
  ///   'assets/screens/help.json',
  ///   args: {'topic': 'getting-started'},
  /// );
  /// ```
  static Future<T?> pushAsset<T extends Object?>(
    String assetPath, {
    Map<String, dynamic>? args,
  }) {
    return _router.push<T>(
      '/_stac/dynamic',
      extra: StacDynamicExtra(
        type: StacDynamicType.asset,
        assetPath: assetPath,
        args: args,
      ),
    );
  }

  /// Pushes a screen fetched from a network request.
  ///
  /// The network response should return valid Stac JSON.
  /// Arguments passed via [args] are accessible via `{{args.key}}`.
  ///
  /// Example:
  /// ```dart
  /// StacNavigator.pushNetwork(
  ///   StacNetworkRequest(
  ///     url: 'https://api.example.com/screens/promo',
  ///     method: 'GET',
  ///   ),
  ///   args: {'campaignId': 'summer2024'},
  /// );
  /// ```
  static Future<T?> pushNetwork<T extends Object?>(
    StacNetworkRequest request, {
    Map<String, dynamic>? args,
  }) {
    return _router.push<T>(
      '/_stac/dynamic',
      extra: StacDynamicExtra(
        type: StacDynamicType.network,
        request: request,
        args: args,
      ),
    );
  }
}
