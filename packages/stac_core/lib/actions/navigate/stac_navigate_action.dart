import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/foundation/specifications/action_type.dart';

part 'stac_navigate_action.g.dart';

/// Navigation styles supported by [StacNavigateAction].
///
/// These correspond to go_router navigation operations.
enum NavigationStyle {
  // ============ Path-based Navigation ============

  /// Navigate to a path, replacing the entire navigation stack.
  ///
  /// Maps to: `StacNavigator.go()`
  go,

  /// Push a new route onto the stack.
  ///
  /// Maps to: `StacNavigator.push()`
  push,

  /// Replace the current route with a new one.
  ///
  /// Maps to: `StacNavigator.pushReplacement()`
  pushReplacement,

  /// Pop the current route.
  ///
  /// Maps to: `StacNavigator.pop()`
  pop,

  // ============ Named Route Navigation ============

  /// Navigate to a named route, replacing the entire stack.
  ///
  /// Maps to: `StacNavigator.goNamed()`
  goNamed,

  /// Push a named route onto the stack.
  ///
  /// Maps to: `StacNavigator.pushNamed()`
  pushNamed,

  // ============ Stac Cloud Navigation ============

  /// Navigate to a Stac Cloud screen, replacing the entire stack.
  ///
  /// Maps to: `StacNavigator.goStac()`
  goStac,

  /// Push a Stac Cloud screen onto the stack.
  ///
  /// Maps to: `StacNavigator.pushStac()`
  pushStac,

  // ============ Dynamic Content Navigation ============

  /// Push a screen from inline JSON widget definition.
  ///
  /// Maps to: `StacNavigator.pushJson()`
  pushJson,

  /// Push a screen from a local asset file.
  ///
  /// Maps to: `StacNavigator.pushAsset()`
  pushAsset,

  /// Push a screen from a network request.
  ///
  /// Maps to: `StacNavigator.pushNetwork()`
  pushNetwork,
}

/// A Stac action that performs navigation operations.
///
/// Supports multiple navigation sources:
/// - **Path-based**: Use [path] with [NavigationStyle.push], [NavigationStyle.go]
/// - **Named routes**: Use [routeName] with [NavigationStyle.pushNamed], [NavigationStyle.goNamed]
/// - **Stac Cloud**: Use [stacRoute] with [NavigationStyle.pushStac], [NavigationStyle.goStac]
/// - **Inline JSON**: Use [widgetJson] with [NavigationStyle.pushJson]
/// - **Asset file**: Use [assetPath] with [NavigationStyle.pushAsset]
/// - **Network**: Use [request] with [NavigationStyle.pushNetwork]
///
/// {@tool snippet}
/// Dart Example - Push a path:
/// ```dart
/// const StacNavigateAction(
///   path: '/products/123',
///   navigationStyle: NavigationStyle.push,
///   extra: {'source': 'search'},
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example - Push a Stac Cloud screen:
/// ```json
/// {
///   "actionType": "navigate",
///   "stacRoute": "productDetails",
///   "navigationStyle": "pushStac",
///   "extra": {"productId": "123"}
/// }
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example - Push a named Flutter screen:
/// ```json
/// {
///   "actionType": "navigate",
///   "routeName": "checkout",
///   "navigationStyle": "pushNamed",
///   "pathParameters": {"cartId": "abc123"}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacNavigateAction extends StacAction {
  /// Creates a [StacNavigateAction] to navigate based on the provided inputs.
  const StacNavigateAction({
    this.path,
    this.routeName,
    this.stacRoute,
    this.widgetJson,
    this.assetPath,
    this.request,
    this.navigationStyle,
    this.pathParameters,
    this.queryParameters,
    this.extra,
    this.result,
  });

  // ============ Path-based Navigation ============

  /// Route path for path-based navigation.
  ///
  /// Example: `/products/123`, `/home`
  ///
  /// Use with [NavigationStyle.go], [NavigationStyle.push], [NavigationStyle.pushReplacement].
  final String? path;

  // ============ Named Route Navigation ============

  /// Named route for Flutter screens defined with [GoRoute.name].
  ///
  /// Example: `checkout`, `camera`, `productDetails`
  ///
  /// Use with [NavigationStyle.goNamed], [NavigationStyle.pushNamed].
  final String? routeName;

  /// Path parameters for named routes.
  ///
  /// Example: `{"cartId": "abc123", "productId": "456"}`
  final Map<String, String>? pathParameters;

  /// Query parameters to append to the URL.
  ///
  /// Example: `{"sort": "price", "filter": "available"}`
  final Map<String, String>? queryParameters;

  // ============ Stac Cloud Navigation ============

  /// Stac Cloud route name.
  ///
  /// Example: `home`, `profile`, `productDetails`
  ///
  /// Use with [NavigationStyle.goStac], [NavigationStyle.pushStac].
  final String? stacRoute;

  // ============ Dynamic Content Navigation ============

  /// Inline widget JSON to navigate to.
  ///
  /// Use with [NavigationStyle.pushJson].
  final Map<String, dynamic>? widgetJson;

  /// Asset path containing widget JSON to navigate to.
  ///
  /// Example: `assets/screens/help.json`
  ///
  /// Use with [NavigationStyle.pushAsset].
  final String? assetPath;

  /// Network request to fetch destination widget JSON.
  ///
  /// Use with [NavigationStyle.pushNetwork].
  final StacNetworkRequest? request;

  // ============ Common ============

  /// How navigation should be performed.
  final NavigationStyle? navigationStyle;

  /// Extra data to pass to the destination screen.
  ///
  /// In Stac screens, accessible via `{{args.key}}` syntax.
  final Map<String, dynamic>? extra;

  /// Result to pass back when popping.
  ///
  /// Use with [NavigationStyle.pop].
  final Map<String, dynamic>? result;

  /// Action type identifier.
  @override
  String get actionType => ActionType.navigate.name;

  /// Creates a [StacNavigateAction] from a JSON map.
  factory StacNavigateAction.fromJson(Map<String, dynamic> json) =>
      _$StacNavigateActionFromJson(json);

  /// Converts this [StacNavigateAction] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacNavigateActionToJson(this);
}
