import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:stac/src/state/stac_state_observer.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_logger/stac_logger.dart';

/// Splits a state path such as `user.addresses[0].city` into its segments.
///
/// Paths use the expression syntax for member access and indexing, so keys
/// that are not identifiers can be written as `user['first-name']`. Throws
/// an [ArgumentError] when [path] is not a plain path.
List<String> stacPathSegments(String path) {
  final StacExpression expression;
  try {
    expression = StacExpression.parse(path.trim());
  } on StacExpressionException catch (e) {
    throw ArgumentError.value(path, 'path', e.message);
  }
  final segments = stacStaticPath(expression.node);
  if (segments == null) {
    throw ArgumentError.value(path, 'path', 'is not a plain path');
  }
  return segments;
}

final Expando<bool> _frozen = Expando('stacFrozen');

/// Returns [value] as unmodifiable JSON-like data: maps get string keys and
/// maps and lists are copied into unmodifiable collections.
Object? freezeStacValue(Object? value) {
  if (value is Map) {
    if (_frozen[value] == true) return value;
    return _mark(
      Map<String, Object?>.unmodifiable({
        for (final entry in value.entries)
          entry.key.toString(): freezeStacValue(entry.value),
      }),
    );
  }
  if (value is List) {
    if (_frozen[value] == true) return value;
    return _mark(List<Object?>.unmodifiable(value.map(freezeStacValue)));
  }
  return value;
}

T _mark<T extends Object>(T container) {
  _frozen[container] = true;
  return container;
}

bool _sameValue(Object? a, Object? b) {
  if (identical(a, b)) return true;
  if (a is Map || a is List || b is Map || b is List) return false;
  return a == b;
}

/// JSON-shaped state that notifies its listeners when it changes.
///
/// Values are stored as unmodifiable copies, and a change replaces only the
/// maps and lists along the changed path. A map or list read from the store
/// therefore never changes afterwards, and parts of the state that did not
/// change keep their identity. Writing `null` removes a value.
///
/// ```dart
/// final store = StacStore({'count': 0});
/// store.set('user.name', 'Ann');
/// store.get('user.name'); // 'Ann'
/// ```
class StacStore extends ChangeNotifier {
  /// Creates a store holding [initial].
  StacStore([Map<String, Object?> initial = const {}])
    : _data = freezeStacValue(initial) as Map<String, Object?>;

  Map<String, Object?> _data;

  /// The current state.
  Map<String, Object?> get data => _data;

  /// The value at [path], such as `user.name` or `items[0]`, or `null`.
  Object? get(String path) {
    final value = read(stacPathSegments(path));
    return identical(value, stacUnbound) ? null : value;
  }

  /// Whether a value exists at [path].
  bool contains(String path) {
    return !identical(read(stacPathSegments(path)), stacUnbound);
  }

  /// The value at [segments], or [stacUnbound] when there is none.
  Object? read(List<String> segments) {
    if (segments.isEmpty) return _data;
    if (!_data.containsKey(segments.first)) return stacUnbound;
    return walkStacPath(_data[segments.first], segments, 1);
  }

  /// Sets the value at [path], creating maps along the way. `null` removes
  /// the value.
  void set(String path, Object? value) => write(stacPathSegments(path), value);

  /// Sets the value at [segments]. `null` removes the value.
  void write(List<String> segments, Object? value) {
    if (segments.isEmpty) {
      throw ArgumentError.value(segments, 'segments', 'must not be empty');
    }
    final observed = StacStateEvents.isObserved;
    final previous = observed ? read(segments) : null;
    final next = value == null
        ? _removeIn(_data, segments, 0)
        : _setIn(_data, segments, 0, freezeStacValue(value));
    if (!_replace(next as Map<String, Object?>) || !observed) return;
    StacStateEvents.changed(
      this,
      segments,
      _present(previous),
      _present(read(segments)),
    );
  }

  /// Sets the top-level variable named [key], even when the name contains
  /// dots. `null` removes it.
  void setKey(String key, Object? value) => write([key], value);

  /// Removes the value at [path].
  void remove(String path) => write(stacPathSegments(path), null);

  /// Removes the top-level variable named [key] and returns its value.
  Object? removeKey(String key) {
    final previous = _data[key];
    write([key], null);
    return previous;
  }

  /// Replaces the value at [path] with the result of [update].
  void update(String path, Object? Function(Object? current) update) {
    final segments = stacPathSegments(path);
    final current = read(segments);
    write(segments, update(identical(current, stacUnbound) ? null : current));
  }

  /// Replaces the whole state with [data].
  void replace(Map<String, Object?> data) {
    _replaceAll(freezeStacValue(data) as Map<String, Object?>);
  }

  /// Removes everything.
  void clear() => _replaceAll(const {});

  /// Keeps the value at [path] equal to the latest value of [source], so
  /// state kept elsewhere in the app, such as in a Bloc, shows in Stac
  /// screens.
  ///
  /// [initial] is written first when given. Values should be JSON-like:
  /// maps, lists, strings, numbers and booleans; `null` removes the value.
  /// Errors from [source] are logged. Cancel the returned binding to stop;
  /// the value stays as it was.
  ///
  /// ```dart
  /// final binding = Stac.state.bind(
  ///   'auth',
  ///   authCubit.stream.map((state) => state.toJson()),
  ///   initial: authCubit.state.toJson(),
  /// );
  /// ```
  StacStateBinding bind(
    String path,
    Stream<Object?> source, {
    Object? initial,
  }) {
    final segments = stacPathSegments(path);
    if (initial != null) write(segments, initial);
    final subscription = source.listen(
      (value) => write(segments, value),
      onError: (Object error, StackTrace stackTrace) {
        Log.e('The source bound to "$path" failed: $error');
      },
    );
    return _StacStateBinding(() => unawaited(subscription.cancel()));
  }

  /// Keeps the value at [path] equal to the value of [source], starting
  /// with its current value. Like [bind], for a [ValueListenable] such as a
  /// `ValueNotifier`.
  StacStateBinding bindListenable(
    String path,
    ValueListenable<Object?> source,
  ) {
    final segments = stacPathSegments(path);
    void sync() => write(segments, source.value);
    sync();
    source.addListener(sync);
    return _StacStateBinding(() => source.removeListener(sync));
  }

  /// A listenable for the value at [path] that notifies only when that
  /// value changes.
  ValueListenable<Object?> listenable(String path) {
    return _StacPathListenable(this, stacPathSegments(path));
  }

  /// Stores [next] and notifies listeners. Returns whether anything
  /// changed.
  bool _replace(Map<String, Object?> next) {
    if (identical(next, _data)) return false;
    _data = next;
    notifyListeners();
    return true;
  }

  void _replaceAll(Map<String, Object?> next) {
    final previous = _data;
    if (!_replace(next) || !StacStateEvents.isObserved) return;
    StacStateEvents.changed(this, const [], previous, next);
  }

  static Object? _present(Object? value) {
    return identical(value, stacUnbound) ? null : value;
  }

  static Object? _setIn(
    Object? current,
    List<String> segments,
    int index,
    Object? value,
  ) {
    if (index == segments.length) {
      return stacDeepEquals(current, value) ? current : value;
    }
    final key = segments[index];
    if (current is List) {
      final position = int.tryParse(key);
      if (position == null || position < 0 || position > current.length) {
        throw RangeError(
          'Cannot write index $key of a list of ${current.length}',
        );
      }
      final exists = position < current.length;
      final child = exists ? current[position] : null;
      final next = _setIn(child, segments, index + 1, value);
      if (exists && identical(next, child)) return current;
      final copy = List<Object?>.of(current);
      if (exists) {
        copy[position] = next;
      } else {
        copy.add(next);
      }
      return _mark(List<Object?>.unmodifiable(copy));
    }
    final map = current is Map ? current : const <String, Object?>{};
    final exists = map.containsKey(key);
    final child = map[key];
    final next = _setIn(child, segments, index + 1, value);
    if (exists && identical(next, child)) return current;
    return _mark(
      Map<String, Object?>.unmodifiable({
        for (final entry in map.entries) entry.key.toString(): entry.value,
        key: next,
      }),
    );
  }

  static Object? _removeIn(Object? current, List<String> segments, int index) {
    final key = segments[index];
    final last = index == segments.length - 1;
    if (current is Map) {
      if (!current.containsKey(key)) return current;
      final next = last ? null : _removeIn(current[key], segments, index + 1);
      if (!last && identical(next, current[key])) return current;
      return _mark(
        Map<String, Object?>.unmodifiable({
          for (final entry in current.entries)
            if (!last || entry.key != key) entry.key.toString(): entry.value,
          if (!last) key: next,
        }),
      );
    }
    if (current is List) {
      final position = int.tryParse(key);
      if (position == null || position < 0 || position >= current.length) {
        return current;
      }
      final copy = List<Object?>.of(current);
      if (last) {
        copy.removeAt(position);
      } else {
        final next = _removeIn(current[position], segments, index + 1);
        if (identical(next, current[position])) return current;
        copy[position] = next;
      }
      return _mark(List<Object?>.unmodifiable(copy));
    }
    return current;
  }
}

/// A connection made by [StacStore.bind] or [StacStore.bindListenable].
abstract interface class StacStateBinding {
  /// Stops copying values from the source. The stored value stays as it
  /// was.
  void cancel();
}

class _StacStateBinding implements StacStateBinding {
  _StacStateBinding(this._stop);

  final void Function() _stop;
  bool _cancelled = false;

  @override
  void cancel() {
    if (_cancelled) return;
    _cancelled = true;
    _stop();
  }
}

class _StacPathListenable extends ChangeNotifier
    implements ValueListenable<Object?> {
  _StacPathListenable(this._store, this._segments);

  final StacStore _store;
  final List<String> _segments;
  Object? _last;

  @override
  Object? get value {
    final value = _store.read(_segments);
    return identical(value, stacUnbound) ? null : value;
  }

  @override
  void addListener(VoidCallback listener) {
    if (!hasListeners) {
      _last = _store.read(_segments);
      _store.addListener(_check);
    }
    super.addListener(listener);
  }

  @override
  void removeListener(VoidCallback listener) {
    super.removeListener(listener);
    if (!hasListeners) _store.removeListener(_check);
  }

  void _check() {
    final next = _store.read(_segments);
    if (_sameValue(next, _last)) return;
    _last = next;
    notifyListeners();
  }
}
