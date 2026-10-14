import 'package:stac/src/framework/stac_registry.dart';
import 'package:stac_core/stac_core.dart';

/// Reads expression variables from [StacRegistry].
///
/// Keys written with `setValue` may contain dots, such as `user.name`. A path
/// is matched against the longest such key first and then walked into its
/// value, so with `user` set to `{"name": "Ann"}` both `user.name` and a key
/// literally named `user.name` read as expected.
class StacRegistryScopeReader extends StacScopeReader {
  /// Creates a reader over [registry], or over [StacRegistry.instance].
  const StacRegistryScopeReader({this.registry});

  /// The registry to read, or `null` for [StacRegistry.instance].
  final StacRegistry? registry;

  StacRegistry get _source => registry ?? StacRegistry.instance;

  @override
  Object? lookup(String name) => _source.getValue(name) ?? stacUnbound;

  @override
  Object? lookupPath(List<String> segments) {
    for (var end = segments.length; end > 0; end--) {
      final key = end == 1
          ? segments.first
          : segments.sublist(0, end).join('.');
      final value = _source.getValue(key);
      if (value != null) return walkStacPath(value, segments, end);
    }
    return stacUnbound;
  }
}
