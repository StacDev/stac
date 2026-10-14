import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stac/src/state/stac_store.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_logger/stac_logger.dart';

/// Where Stac keeps persisted app state between launches.
///
/// The default, [StacSharedPreferencesStorage], uses shared preferences.
/// Implement this to keep state elsewhere, such as in secure storage.
abstract class StacStateStorage {
  /// Creates a storage.
  const StacStateStorage();

  /// The text stored under [key], or `null` if there is none.
  Future<String?> read(String key);

  /// Stores [value] under [key].
  Future<void> write(String key, String value);

  /// Removes what is stored under [key].
  Future<void> delete(String key);
}

/// Keeps persisted state in shared preferences.
class StacSharedPreferencesStorage extends StacStateStorage {
  /// Creates the storage.
  const StacSharedPreferencesStorage();

  @override
  Future<String?> read(String key) async {
    return (await SharedPreferences.getInstance()).getString(key);
  }

  @override
  Future<void> write(String key, String value) async {
    await (await SharedPreferences.getInstance()).setString(key, value);
  }

  @override
  Future<void> delete(String key) async {
    await (await SharedPreferences.getInstance()).remove(key);
  }
}

/// Restores app state paths at startup and saves them when they change.
///
/// Values are stored as JSON under `stac.state.` followed by the path.
class StacStatePersistence {
  StacStatePersistence._(this._store, this._storage, this._paths);

  /// The prefix of the keys values are stored under.
  static const String keyPrefix = 'stac.state.';

  static StacStatePersistence? _active;

  /// Restores [paths] of [store] from [storage], then saves them whenever
  /// they change. Replaces persistence started before.
  ///
  /// Paths are app state paths such as `settings` or `cart.items`; a
  /// leading `$app.` is allowed. Throws an [ArgumentError] for a path that
  /// is not valid.
  static Future<void> start(
    StacStore store,
    List<String> paths,
    StacStateStorage storage,
  ) async {
    _active?._stop();
    _active = null;
    if (paths.isEmpty) return;
    final persistence = StacStatePersistence._(store, storage, {
      for (final path in paths) ..._parse(path),
    });
    await persistence._restore();
    store.addListener(persistence._onChange);
    _active = persistence;
  }

  /// Completes when the saves scheduled so far have finished.
  @visibleForTesting
  static Future<void> flush() async {
    await Future<void>.delayed(Duration.zero);
    final pending = _active?._pending;
    if (pending != null) await Future.wait(List.of(pending));
  }

  final StacStore _store;
  final StacStateStorage _storage;
  final Map<String, List<String>> _paths;
  final Map<String, Object?> _saved = {};
  final Set<Future<void>> _pending = {};
  bool _flushScheduled = false;

  static Map<String, List<String>> _parse(String path) {
    var segments = stacPathSegments(path);
    if (segments.first == r'$app') segments = segments.sublist(1);
    if (segments.isEmpty || segments.first.startsWith(r'$')) {
      throw ArgumentError.value(
        path,
        'persist',
        r'must be an app state path, such as "settings" or "$app.settings"',
      );
    }
    return {segments.join('.'): segments};
  }

  Future<void> _restore() async {
    for (final MapEntry(key: path, value: segments) in _paths.entries) {
      try {
        final text = await _storage.read('$keyPrefix$path');
        if (text != null) _store.write(segments, jsonDecode(text));
      } catch (e) {
        Log.w('Could not restore persisted state "$path": $e');
      }
      _saved[path] = _read(segments);
    }
  }

  void _stop() => _store.removeListener(_onChange);

  void _onChange() {
    if (_flushScheduled) return;
    _flushScheduled = true;
    scheduleMicrotask(_save);
  }

  /// Saves the paths whose values changed since they were last saved.
  void _save() {
    _flushScheduled = false;
    for (final MapEntry(key: path, value: segments) in _paths.entries) {
      final value = _read(segments);
      if (identical(value, _saved[path])) continue;
      _saved[path] = value;
      final key = '$keyPrefix$path';
      String? text;
      if (value != null) {
        try {
          text = jsonEncode(value);
        } on JsonUnsupportedObjectError catch (e) {
          Log.w('Could not save state "$path": it is not JSON ($e)');
          continue;
        }
      }
      final saving =
          (text == null ? _storage.delete(key) : _storage.write(key, text))
              .catchError((Object e) {
                Log.w('Could not save state "$path": $e');
              });
      _pending.add(saving);
      unawaited(saving.whenComplete(() => _pending.remove(saving)));
    }
  }

  Object? _read(List<String> segments) {
    final value = _store.read(segments);
    return identical(value, stacUnbound) ? null : value;
  }
}
