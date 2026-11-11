import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:stac_logger/stac_logger.dart';

/// Stores persisted registry values on the device: one shared preference per
/// key, named `stac.state.<key>`, holding the value as JSON.
class StacStateService {
  StacStateService._();

  static const _prefix = 'stac.state.';

  /// The stored value for [key], or null when there is none or it can't be
  /// read.
  static Future<Object?> read(String key) async {
    final String? text;
    try {
      final prefs = await SharedPreferences.getInstance();
      text = prefs.getString('$_prefix$key');
    } catch (e) {
      Log.w('Failed to read the stored value of $key: $e');
      return null;
    }
    if (text == null) return null;
    try {
      return jsonDecode(text);
    } catch (e) {
      Log.w('Ignoring the stored value of $key, which is not JSON: $e');
      return null;
    }
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
