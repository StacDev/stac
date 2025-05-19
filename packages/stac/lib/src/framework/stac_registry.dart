import 'package:stac/src/utils/log.dart';
import 'package:stac_framework/stac_framework.dart';

class StacRegistry {
  StacRegistry._internal();

  static final StacRegistry _singleton = StacRegistry._internal();

  factory StacRegistry() => _singleton;

  static StacRegistry get instance => _singleton;

  static final _stacParsers = <String, StacParser>{};

  static final _stacActionParsers = <String, StacActionParser>{};

  static final Map<String, dynamic> _variables = {};

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

  Future<dynamic> registerAll(List<StacParser> parsers,
      [bool override = false]) {
    return Future.forEach(
      parsers,
      (StacParser parser) {
        return register(parser, override);
      },
    );
  }

  Future<dynamic> registerAllActions(List<StacActionParser> parsers,
      [bool override = false]) {
    return Future.forEach(
      parsers,
      (StacActionParser parser) {
        return registerAction(parser, override);
      },
    );
  }

  StacParser<dynamic>? getParser(String type) {
    return _stacParsers[type];
  }

  StacActionParser<dynamic>? getActionParser(String type) {
    return _stacActionParsers[type];
  }

  dynamic setValue(String key, dynamic value) {
    if (value == null) {
      removeValue(key);
    } else {
      _variables[key] = value;
    }
  }

  dynamic removeValue(String key) {
    return _variables.remove(key);
  }

  dynamic getValue(String key) {
    return _variables[key];
  }
}
