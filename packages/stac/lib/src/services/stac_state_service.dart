import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:stac_logger/stac_logger.dart';

/// Stores persisted registry values on the device: one shared preference per
/// key, named `stac.state.<key>`, holding the value as JSON.
class StacStateService {
  StacStateService._();

  static const _prefix = 'stac.state.';

  /// Every stored value, by key: those of keys listed in
  /// `StacStateConfig.persisted` and of keys written with `persist: true`.
  /// A value that can't be read is left out.
  static Future<Map<String, Object?>> readAll() async {
    final SharedPreferences prefs;
    try {
      prefs = await SharedPreferences.getInstance();
    } catch (e) {
      Log.w('Failed to read stored state: $e');
      return const {};
    }
    final values = <String, Object?>{};
    for (final name in prefs.getKeys()) {
      if (!name.startsWith(_prefix)) continue;
      final key = name.substring(_prefix.length);
      try {
        final text = prefs.getString(name);
        if (text != null) values[key] = jsonDecode(text);
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
    try {
      final prefs = await SharedPreferences.getInstance();
      if (text == null) {
        await prefs.remove('$_prefix$key');
      } else {
        await prefs.setString('$_prefix$key', text);
      }
    } catch (e) {
      Log.w('Failed to persist $key: $e');
    }
  }
}
