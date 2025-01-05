import 'package:mirai/src/utils/log.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiRegistry {
  MiraiRegistry._internal();

  static final MiraiRegistry _singleton = MiraiRegistry._internal();

  factory MiraiRegistry() => _singleton;

  static MiraiRegistry get instance => _singleton;

  static final _miraiParsers = <String, MiraiParser>{};

  static final _miraiActionParsers = <String, MiraiActionParser>{};

  bool register(MiraiParser parser, [bool override = false]) {
    final String type = parser.type;
    if (_miraiParsers.containsKey(type)) {
      if(override) {
        Log.w('Widget $type is being overridden');
        _miraiParsers[type] = parser;
        return true;
      } else {
        Log.w('Parser $type is already registered');
        return false;
      }
    } else {
      _miraiParsers[type] = parser;
      return true;
    }
  }

  bool registerAction(MiraiActionParser parser, [bool override = false]) {
    final String type = parser.actionType;
    if (_miraiActionParsers.containsKey(type)) {
      if(override) {
        Log.w('Action $type is being overridden');
        _miraiActionParsers[type] = parser;
        return true;
      } else {
        Log.w('Action $type is already registered');
        return false;
      }
    } else {
      _miraiActionParsers[type] = parser;
      return true;
    }
  }

  Future<dynamic> registerAll(List<MiraiParser> parsers, [bool override = false]) {
    return Future.forEach(
      parsers,
      (MiraiParser parser) {
        return register(parser,override);
      },
    );
  }

  Future<dynamic> registerAllActions(List<MiraiActionParser> parsers, [bool override = false]) {
    return Future.forEach(
      parsers,
      (MiraiActionParser parser) {
        return registerAction(parser, override);
      },
    );
  }

  MiraiParser<dynamic>? getParser(String type) {
    return _miraiParsers[type];
  }

  MiraiActionParser<dynamic>? getActionParser(String type) {
    return _miraiActionParsers[type];
  }
}
