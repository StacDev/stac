import 'package:stac_core/actions/navigate/stac_navigate_action.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';

/// Ergonomic navigation API for Stac.
///
/// Provides source-specific static factory methods for navigation actions,
/// making it clear what type of destination you're navigating to.
///
/// {@tool snippet}
/// Example usage:
/// ```dart
/// // Pop current route
/// onPressed: StacNavigator.pop()
///
/// // Navigate to a Stac screen
/// onPressed: StacNavigator.pushStac('home_screen')
///
/// // Navigate to a Flutter route
/// onPressed: StacNavigator.pushFlutter('/settings')
///
/// // Navigate with inline JSON
/// onPressed: StacNavigator.pushJson({'type': 'text', 'data': 'Hello'})
///
/// // Navigate from asset file
/// onPressed: StacNavigator.pushAsset('assets/screens/home.json')
///
/// // Navigate from network
/// onPressed: StacNavigator.pushNetwork(StacNetworkRequest(url: '...'))
/// ```
/// {@end-tool}
class StacNavigator {
  /// Private constructor to prevent instantiation.
  const StacNavigator._();

  /// Pops the current route off the navigator stack.
  ///
  /// Optionally pass a [result] to return to the previous route.
  static StacNavigateAction pop({Map<String, dynamic>? result}) {
    return StacNavigateAction(
      navigationStyle: NavigationStyle.pop,
      result: result,
    );
  }

  /// Pops all routes until the first route (root).
  static StacNavigateAction popAll() {
    return const StacNavigateAction(navigationStyle: NavigationStyle.popAll);
  }

  /// Pushes a Stac screen onto the navigator stack.
  ///
  /// The [routeName] should match a route registered with Stac.
  static StacNavigateAction pushStac(
    String routeName, {
    Map<String, dynamic>? arguments,
  }) {
    return StacNavigateAction(
      navigationStyle: NavigationStyle.push,
      routeName: routeName,
      arguments: arguments,
    );
  }

  /// Replaces the current route with a Stac screen.
  static StacNavigateAction pushReplacementStac(
    String routeName, {
    Map<String, dynamic>? result,
  }) {
    return StacNavigateAction(
      navigationStyle: NavigationStyle.pushReplacement,
      routeName: routeName,
      result: result,
    );
  }

  /// Pushes a Stac screen and removes all previous routes.
  static StacNavigateAction pushAndRemoveAllStac(String routeName) {
    return StacNavigateAction(
      navigationStyle: NavigationStyle.pushAndRemoveAll,
      routeName: routeName,
    );
  }

  /// Pushes a Flutter-defined named route onto the navigator stack.
  ///
  /// The [routeName] should match a route defined in your app's route table.
  static StacNavigateAction pushFlutter(
    String routeName, {
    Map<String, dynamic>? arguments,
  }) {
    return StacNavigateAction(
      navigationStyle: NavigationStyle.pushNamed,
      routeName: routeName,
      arguments: arguments,
    );
  }

  /// Replaces the current route with a Flutter-defined named route.
  static StacNavigateAction pushReplacementFlutter(
    String routeName, {
    Map<String, dynamic>? result,
    Map<String, dynamic>? arguments,
  }) {
    return StacNavigateAction(
      navigationStyle: NavigationStyle.pushReplacementNamed,
      routeName: routeName,
      result: result,
      arguments: arguments,
    );
  }

  /// Pushes a Flutter-defined named route and removes all previous routes.
  static StacNavigateAction pushAndRemoveAllFlutter(
    String routeName, {
    Map<String, dynamic>? arguments,
  }) {
    return StacNavigateAction(
      navigationStyle: NavigationStyle.pushNamedAndRemoveAll,
      routeName: routeName,
      arguments: arguments,
    );
  }

  /// Pushes a screen defined by inline widget JSON.
  static StacNavigateAction pushJson(Map<String, dynamic> widgetJson) {
    return StacNavigateAction(
      navigationStyle: NavigationStyle.push,
      widgetJson: widgetJson,
    );
  }

  /// Replaces the current route with a screen defined by inline widget JSON.
  static StacNavigateAction pushReplacementJson(
    Map<String, dynamic> widgetJson, {
    Map<String, dynamic>? result,
  }) {
    return StacNavigateAction(
      navigationStyle: NavigationStyle.pushReplacement,
      widgetJson: widgetJson,
      result: result,
    );
  }

  /// Pushes a screen defined by inline widget JSON and removes all previous
  /// routes.
  static StacNavigateAction pushAndRemoveAllJson(
    Map<String, dynamic> widgetJson,
  ) {
    return StacNavigateAction(
      navigationStyle: NavigationStyle.pushAndRemoveAll,
      widgetJson: widgetJson,
    );
  }

  /// Pushes a screen loaded from a local asset file.
  ///
  /// The [assetPath] should be the path to a JSON file in your assets.
  static StacNavigateAction pushAsset(String assetPath) {
    return StacNavigateAction(
      navigationStyle: NavigationStyle.push,
      assetPath: assetPath,
    );
  }

  /// Replaces the current route with a screen loaded from a local asset file.
  static StacNavigateAction pushReplacementAsset(
    String assetPath, {
    Map<String, dynamic>? result,
  }) {
    return StacNavigateAction(
      navigationStyle: NavigationStyle.pushReplacement,
      assetPath: assetPath,
      result: result,
    );
  }

  /// Pushes a screen from an asset file and removes all previous routes.
  static StacNavigateAction pushAndRemoveAllAsset(String assetPath) {
    return StacNavigateAction(
      navigationStyle: NavigationStyle.pushAndRemoveAll,
      assetPath: assetPath,
    );
  }

  /// Pushes a screen loaded from a network request.
  static StacNavigateAction pushNetwork(StacNetworkRequest request) {
    return StacNavigateAction(
      navigationStyle: NavigationStyle.push,
      request: request,
    );
  }

  /// Replaces the current route with a screen loaded from a network request.
  static StacNavigateAction pushReplacementNetwork(
    StacNetworkRequest request, {
    Map<String, dynamic>? result,
  }) {
    return StacNavigateAction(
      navigationStyle: NavigationStyle.pushReplacement,
      request: request,
      result: result,
    );
  }

  /// Pushes a screen from a network request and removes all previous routes.
  static StacNavigateAction pushAndRemoveAllNetwork(
    StacNetworkRequest request,
  ) {
    return StacNavigateAction(
      navigationStyle: NavigationStyle.pushAndRemoveAll,
      request: request,
    );
  }
}
