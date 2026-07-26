import 'package:logger/logger.dart';

class Log {
  const Log._();

  static final _log = Logger();

  static void d(dynamic message) => _log.d(message);
  static void i(dynamic message) => _log.i(message);
  static void w(dynamic message) => _log.w(message);
  static void e(dynamic message) => _log.e(message);

  static void error(
      {String? tag,
      Object? object,
      String? message,
      Object? err,
      StackTrace? trace}) {
    var tagStr = tag ?? '';
    if (object != null) {
      tagStr += '(${object.runtimeType.toString()})';
    }

    _log.e('$tagStr: ${message ?? ''}', err, trace);
  }
}
