import 'values.dart';

/// Provides variable values to expression evaluation.
///
/// Implementations decide where values come from: a global registry, a
/// screen scope, a list item, and so on. Expressions only ever read.
abstract class StacScopeReader {
  /// Allows subclasses to declare const constructors.
  const StacScopeReader();

  /// Returns the value bound to the root identifier [name], or [stacUnbound]
  /// when no binding exists.
  Object? lookup(String name);

  /// Resolves a static path such as `['user', 'profile', 'name']`.
  ///
  /// Returns [stacUnbound] when the root is unbound or any later segment does
  /// not exist. The default implementation looks up the first segment with
  /// [lookup] and walks the rest with [stacAccessMember]. Readers backed by
  /// flat key stores override this to honour keys that contain dots.
  Object? lookupPath(List<String> segments) {
    if (segments.isEmpty) return stacUnbound;
    return walkStacPath(lookup(segments.first), segments, 1);
  }
}

/// Walks [segments] from index [start] into [root] with [stacAccessMember].
///
/// Returns [stacUnbound] if [root] is unbound or the walk hits a missing
/// member or a `null` value before the last segment.
Object? walkStacPath(Object? root, List<String> segments, int start) {
  var current = root;
  for (var i = start; i < segments.length; i++) {
    if (identical(current, stacUnbound) || current == null) return stacUnbound;
    current = stacAccessMember(current, segments[i]);
  }
  return current;
}

/// A [StacScopeReader] that never resolves anything.
///
/// Useful for evaluating constant expressions.
class StacEmptyScopeReader extends StacScopeReader {
  /// Creates an empty reader.
  const StacEmptyScopeReader();

  @override
  Object? lookup(String name) => stacUnbound;
}

/// A [StacScopeReader] backed by a map.
///
/// Names missing from [values] are delegated to [parent], which lets readers
/// be chained into lexical scopes.
class StacMapScopeReader extends StacScopeReader {
  /// Creates a reader over [values], consulting [parent] for unbound names.
  const StacMapScopeReader(this.values, {this.parent});

  /// The bound values.
  final Map<String, Object?> values;

  /// The reader consulted for names not present in [values].
  final StacScopeReader? parent;

  @override
  Object? lookup(String name) {
    if (values.containsKey(name)) return values[name];
    return parent?.lookup(name) ?? stacUnbound;
  }

  @override
  Object? lookupPath(List<String> segments) {
    if (segments.isEmpty) return stacUnbound;
    if (values.containsKey(segments.first)) {
      return walkStacPath(values[segments.first], segments, 1);
    }
    return parent?.lookupPath(segments) ?? stacUnbound;
  }
}
