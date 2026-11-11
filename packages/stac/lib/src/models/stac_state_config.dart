/// State that `Stac.initialize` sets up in the registry: values the app
/// starts with, keys whose values are kept across restarts, and values
/// computed from other values.
///
/// ```dart
/// await Stac.initialize(
///   state: const StacStateConfig(
///     initial: {'cart': [], 'currency': 'USD'},
///     persisted: ['cart', 'token'],
///     derived: {'cartTotal': 'sum(cart, item.price * item.quantity)'},
///   ),
/// );
/// ```
class StacStateConfig {
  /// Creates the state configuration passed to `Stac.initialize`.
  const StacStateConfig({
    this.initial = const {},
    this.persisted = const [],
    this.derived = const {},
  });

  /// Values written to the registry when nothing is stored for their keys.
  ///
  /// A key listed in [persisted] takes its stored value instead, once one
  /// has been saved.
  final Map<String, dynamic> initial;

  /// Keys whose values are saved on the device whenever they change, and
  /// restored by `Stac.initialize`.
  ///
  /// Values must be JSON: maps, lists, strings, numbers, booleans or null.
  final List<String> persisted;

  /// Values computed from an expression, by key: `{'cartCount':
  /// 'sum(cart, item.quantity)'}`. Each is computed again whenever a key
  /// its expression reads changes, and can't be set with `setValue`. See
  /// `ExpressionResolver` for what an expression can contain.
  final Map<String, String> derived;
}
