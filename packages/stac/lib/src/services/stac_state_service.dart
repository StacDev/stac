import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:stac_logger/stac_logger.dart';

/// Stores persisted registry values on the device: one shared preference per
/// key, named `stac.state.<key>`, holding the value as JSON.
///
/// It uses `SharedPreferencesAsync`, so it never creates the app's
/// `SharedPreferences` instance, and the app can still call
/// `SharedPreferences.setPrefix` after `Stac.initialize`.
class StacStateService {
  StacStateService._();

  static const _prefix = 'stac.state.';

  static SharedPreferencesAsync? _prefs;

  // Created on first use. Where the plugin isn't available, creating it
  // throws, and reads and writes log a warning instead.
  static SharedPreferencesAsync get _store =>
      _prefs ??= SharedPreferencesAsync();

  /// Every stored value, by key: those of keys listed in
  /// `StacStateConfig.persisted` and of keys written with `persist: true`.
  /// A value that can't be read is left out.
  static Future<Map<String, Object?>> readAll() async {
    final Map<String, Object?> stored;
    try {
      final names = {
        for (final name in await _store.getKeys())
          if (name.startsWith(_prefix)) name,
      };
      if (names.isEmpty) return const {};
      stored = await _store.getAll(allowList: names);
    } catch (e) {
      Log.w('Failed to read stored state: $e');
      return const {};
    }
    final values = <String, Object?>{};
    for (final MapEntry(key: name, :value) in stored.entries) {
      final key = name.substring(_prefix.length);
      try {
        if (value is String) values[key] = jsonDecode(value);
      } catch (e) {
        Log.w('Ignoring the stored value of $key, which is not JSON: $e');
      }
    }
    return values;
  }

  /// Saves [value] for [key], or deletes the stored value when [value] is
  /// null. Nothing needs to wait for the returned future: writes to one key
  /// are applied in the order they were made.
  static Future<void> write(String key, Object? value) async {
    String? text;
    if (value != null) {
      try {
        text = jsonEncode(value);
      } catch (e) {
        Log.w('Not persisting $key, whose value is not JSON: $e');
        return;
      }
    }
    // Unlike the legacy API, these throw when the platform fails to save.
    try {
      if (text == null) {
        await _store.remove('$_prefix$key');
      } else {
        await _store.setString('$_prefix$key', text);
      }
    } catch (e) {
      Log.w('Failed to persist $key: $e');
    }
  }
}
