import 'package:flutter/widgets.dart';

/// Provides access to navigation arguments in Stac screens.
///
/// This inherited widget makes navigation arguments accessible to Stac screens
/// via the `{{args.key}}` template syntax.
///
/// Example:
/// ```dart
/// // Access args in widget tree
/// final stacArgs = StacArgs.of(context);
/// final productId = stacArgs?.get('productId');
/// ```
///
/// In Stac JSON, access arguments using template syntax:
/// ```json
/// {
///   "type": "text",
///   "data": "Product: {{args.productName}}"
/// }
/// ```
class StacArgs extends InheritedWidget {
  /// Extra arguments passed during navigation.
  final Map<String, dynamic> args;

  /// Path parameters from the route (e.g., `:id` in `/products/:id`).
  final Map<String, String> pathParameters;

  /// Query parameters from the URL (e.g., `?sort=price`).
  final Map<String, String> queryParameters;

  /// Creates a [StacArgs] widget that provides navigation arguments to its descendants.
  const StacArgs({
    super.key,
    required this.args,
    required this.pathParameters,
    required this.queryParameters,
    required super.child,
  });

  /// Returns the nearest [StacArgs] ancestor, or `null` if none exists.
  static StacArgs? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<StacArgs>();
  }

  /// Returns the nearest [StacArgs] ancestor, or `null` if none exists.
  ///
  /// Unlike [of], this method does not create a dependency on the widget,
  /// so it won't trigger rebuilds when the args change.
  static StacArgs? maybeOf(BuildContext context) {
    return context
        .getElementForInheritedWidgetOfExactType<StacArgs>()
        ?.widget as StacArgs?;
  }

  /// Gets a value by key.
  ///
  /// Checks in order: extra args, path parameters, query parameters.
  /// Returns `null` if the key is not found in any of these.
  dynamic get(String key) {
    return args[key] ?? pathParameters[key] ?? queryParameters[key];
  }

  /// Gets a value by key, throwing if not found.
  ///
  /// Checks in order: extra args, path parameters, query parameters.
  /// Throws [ArgumentError] if the key is not found.
  dynamic getRequired(String key) {
    final value = get(key);
    if (value == null) {
      throw ArgumentError('Required argument "$key" not found in StacArgs');
    }
    return value;
  }

  @override
  bool updateShouldNotify(StacArgs oldWidget) {
    return args != oldWidget.args ||
        pathParameters != oldWidget.pathParameters ||
        queryParameters != oldWidget.queryParameters;
  }
}
