import 'package:stac_logger/stac_logger.dart';
import 'package:stac_core/stac_core.dart';
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

  /// Returns widget schema for [type].
  ///
  /// Priority:
  /// 1) parser-provided schema via [StacSchemaProvider]
  /// 2) generated stac_core schema map
  Map<String, dynamic>? getWidgetSchema(String type) {
    final parser = _stacParsers[type];
    final schemaProvider = parser is StacSchemaProvider
        ? parser as StacSchemaProvider
        : null;
    if (schemaProvider != null) {
      return schemaProvider.jsonSchema;
    }
    return stacGeneratedWidgetSchemas[type];
  }

  /// Returns action schema for [actionType].
  ///
  /// Priority:
  /// 1) parser-provided schema via [StacSchemaProvider]
  /// 2) generated stac_core schema map
  Map<String, dynamic>? getActionSchema(String actionType) {
    final parser = _stacActionParsers[actionType];
    final schemaProvider = parser is StacSchemaProvider
        ? parser as StacSchemaProvider
        : null;
    if (schemaProvider != null) {
      return schemaProvider.jsonSchema;
    }
    return stacGeneratedActionSchemas[actionType];
  }

  /// Returns all widget schemas with parser-provided overrides applied.
  Map<String, Map<String, dynamic>> getAllWidgetSchemas() {
    final merged = <String, Map<String, dynamic>>{
      ...stacGeneratedWidgetSchemas,
    };
    _stacParsers.forEach((type, parser) {
      final schemaProvider = parser is StacSchemaProvider
          ? parser as StacSchemaProvider
          : null;
      if (schemaProvider != null) {
        merged[type] = schemaProvider.jsonSchema;
      }
    });
    return merged;
  }

  /// Returns all action schemas with parser-provided overrides applied.
  Map<String, Map<String, dynamic>> getAllActionSchemas() {
    final merged = <String, Map<String, dynamic>>{
      ...stacGeneratedActionSchemas,
    };
    _stacActionParsers.forEach((type, parser) {
      final schemaProvider = parser is StacSchemaProvider
          ? parser as StacSchemaProvider
          : null;
      if (schemaProvider != null) {
        merged[type] = schemaProvider.jsonSchema;
      }
    });
    return merged;
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
