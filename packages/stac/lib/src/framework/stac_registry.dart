import 'package:flutter/foundation.dart';
import 'package:stac/src/services/stac_state_service.dart';
import 'package:stac/src/utils/expression_resolver.dart';
import 'package:stac_logger/stac_logger.dart';
import 'package:stac_framework/stac_framework.dart';

class StacRegistry {
  StacRegistry._internal();

  static final StacRegistry _singleton = StacRegistry._internal();

  factory StacRegistry() => _singleton;

  static StacRegistry get instance => _singleton;

  static final _stacParsers = <String, StacParser>{};

  static final _stacActionParsers = <String, StacActionParser>{};

  static final Map<String, dynamic> _variables = {};

  // Keys whose values are saved on the device: those listed in
  // StacStateConfig and those set with `persist: true`.
  static final Set<String> _persistedKeys = {};

  bool register(StacParser parser, [bool override = false]) {
    final String type = parser.type;
    if (_stacParsers.containsKey(type)) {
      if (override) {
        Log.w('Widget $type is being overridden');
        _stacParsers[type] = parser;
        return true;
      } else {
        Log.w('Parser $type is already registered');
        return false;
      }
    } else {
      _stacParsers[type] = parser;
      return true;
    }
  }

  bool registerAction(StacActionParser parser, [bool override = false]) {
    final String type = parser.actionType;
    if (_stacActionParsers.containsKey(type)) {
      if (override) {
        Log.w('Action $type is being overridden');
        _stacActionParsers[type] = parser;
        return true;
      } else {
        Log.w('Action $type is already registered');
        return false;
      }
    } else {
      _stacActionParsers[type] = parser;
      return true;
    }
  }

  Future<dynamic> registerAll(
    List<StacParser> parsers, [
    bool override = false,
  ]) {
    return Future.forEach(parsers, (StacParser parser) {
      return register(parser, override);
    });
  }

  Future<dynamic> registerAllActions(
    List<StacActionParser> parsers, [
    bool override = false,
  ]) {
    return Future.forEach(parsers, (StacActionParser parser) {
      return registerAction(parser, override);
    });
  }

  StacParser<dynamic>? getParser(String type) {
    return _stacParsers[type];
  }

  StacActionParser<dynamic>? getActionParser(String type) {
    return _stacActionParsers[type];
  }

  /// Sets [key] to [value], or removes it when [value] is null.
  ///
  /// With [persist], the key's value is saved on the device from now on,
  /// like a key listed in `StacStateConfig.persisted`.
  dynamic setValue(String key, dynamic value, {bool persist = false}) {
    if (_derived.containsKey(key)) {
      Log.w('$key is computed from an expression and can\'t be set');
      return null;
    }
    if (persist) {
      _persistedKeys.add(key);
    }
    if (value == null) {
      removeValue(key);
    } else {
      _variables[key] = value;
      if (_persistedKeys.contains(key)) {
        StacStateService.write(key, value);
      }
      _notify(key);
    }
  }

  dynamic removeValue(String key) {
    if (_derived.containsKey(key)) {
      Log.w('$key is computed from an expression and can\'t be removed');
      return null;
    }
    if (_persistedKeys.contains(key)) {
      StacStateService.write(key, null);
    }
    final removed = _variables.remove(key);
    _notify(key);
    return removed;
  }

  dynamic getValue(String key) {
    return _variables[key];
  }

  // One notifier per key that something listens to.
  static final Map<String, _StateNotifier> _notifiers = {};

  /// Notifies whenever the value of [key] changes. The listenable's value is
  /// the current value, or null when the key is not set.
  ValueListenable<Object?> listen(String key) =>
      _notifiers.putIfAbsent(key, () => _StateNotifier(_variables[key]));

  void _notify(String key) {
    _notifiers[key]?.write(_variables[key]);
  }

  // Expressions by the key they compute.
  static final Map<String, String> _derived = {};

  // The listeners each derived key added, by the key they listen to.
  static final Map<String, Map<String, VoidCallback>> _derivedListeners = {};

  // The derived keys being computed right now.
  static final Set<String> _computing = {};

  // Derived keys asked to compute again while they were being computed.
  static final Set<String> _recompute = {};

  // How many times in a row a key is computed again before it's taken to be
  // in a cycle that never settles.
  static const _maxRecomputes = 100;

  /// Computes each value in [expressions] now, and again whenever a key its
  /// expression reads changes. Keys in [expressions] can't be set with
  /// [setValue]. Defining a key again replaces its expression.
  void defineDerived(Map<String, String> expressions) {
    // Replace every expression before computing any, so no value is computed
    // from a mix of old and new expressions.
    for (final MapEntry(:key, value: expression) in expressions.entries) {
      _derivedListeners.remove(key)?.forEach((dependency, listener) {
        listen(dependency).removeListener(listener);
      });
      _derived[key] = expression;
    }
    for (final MapEntry(:key, value: expression) in expressions.entries) {
      final listeners = <String, VoidCallback>{
        for (final dependency in ExpressionResolver.dependencies(expression))
          if (dependency != key) dependency: () => _compute(key),
      };
      listeners.forEach((dependency, listener) {
        listen(dependency).addListener(listener);
      });
      _derivedListeners[key] = listeners;
    }
    expressions.keys.forEach(_compute);
  }

  void _compute(String key) {
    if (!_derived.containsKey(key)) return;
    // Asked again while being computed, such as by a listener of this key
    // that changed one of its inputs, or by keys that read each other: it's
    // computed again once this computation is done.
    if (!_computing.add(key)) {
      _recompute.add(key);
      return;
    }
    try {
      var runs = 0;
      do {
        _recompute.remove(key);
        final expression = _derived[key];
        if (expression == null) break;
        if (++runs > _maxRecomputes) {
          Log.w(
            'Stopped computing $key: its value keeps changing what it reads',
          );
          break;
        }
        final Object? value;
        try {
          value = ExpressionResolver.evaluateOrThrow(expression);
        } catch (e) {
          // Keep the last value rather than removing it.
          Log.w('Could not compute $key from "$expression": $e');
          continue;
        }
        load({key: value});
      } while (_recompute.contains(key));
    } finally {
      _computing.remove(key);
      _recompute.remove(key);
    }
  }

  /// Whether [key]'s value is saved on the device when it changes.
  bool isPersisted(String key) => _persistedKeys.contains(key);

  /// Marks [keys] as persisted: their values are saved whenever they change.
  void persistKeys(Iterable<String> keys) => _persistedKeys.addAll(keys);

  /// Puts [values] in the registry without saving them, as `Stac.initialize`
  /// does for restored and initial values.
  void load(Map<String, dynamic> values) {
    for (final entry in values.entries) {
      if (entry.value == null) {
        _variables.remove(entry.key);
      } else {
        _variables[entry.key] = entry.value;
      }
      _notify(entry.key);
    }
  }
}

/// A key's value, for its listeners.
class _StateNotifier extends ValueNotifier<Object?> {
  _StateNotifier(super.value);

  /// Sets the value. A list or map that was changed in place and written
  /// back is the same object, which `value =` would take for no change, so
  /// it notifies anyway.
  void write(Object? newValue) {
    if (identical(value, newValue) && (newValue is List || newValue is Map)) {
      notifyListeners();
    } else {
      value = newValue;
    }
  }
}
