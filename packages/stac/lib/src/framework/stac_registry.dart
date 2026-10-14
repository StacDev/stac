import 'package:stac/src/state/stac_scope.dart';
import 'package:stac_logger/stac_logger.dart';
import 'package:stac_framework/stac_framework.dart';

class StacRegistry {
  StacRegistry._internal();

  static final StacRegistry _singleton = StacRegistry._internal();

  factory StacRegistry() => _singleton;

  static StacRegistry get instance => _singleton;

  static final _stacParsers = <String, StacParser>{};

  static final _stacActionParsers = <String, StacActionParser>{};

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

  /// Sets the app state variable [key] (see `Stac.state`). Screens that read
  /// it rebuild. `null` removes it.
  dynamic setValue(String key, dynamic value) {
    stacAppStore.setKey(key, value);
  }

  /// Removes the app state variable [key] and returns its value.
  dynamic removeValue(String key) {
    return stacAppStore.removeKey(key);
  }

  /// The app state variable [key], or `null`.
  dynamic getValue(String key) {
    return stacAppStore.data[key];
  }
}
