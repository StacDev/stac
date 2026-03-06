import 'package:stac_logger/src/log_interface.dart';

LogInterface createLogger() => LogWeb.instance;

/// Whether the app is running in debug mode.
///
/// This is a pure Dart equivalent of Flutter's `kDebugMode`.
/// It evaluates to `true` when assertions are enabled (debug mode)
/// and `false` in release/profile mode.
final bool _kDebugMode = () {
  var isDebug = false;
  assert(() {
    isDebug = true;
    return true;
  }());
  return isDebug;
}();

/// Web/WASM-compatible implementation of LogInterface
class LogWeb implements LogInterface {
  LogWeb._();

  static final LogWeb _instance = LogWeb._();
  static LogWeb get instance => _instance;

  @override
  void d(dynamic message) {
    if (_kDebugMode) {
      print('[DEBUG] $message');
    }
  }

  @override
  void i(dynamic message) {
    if (_kDebugMode) {
      print('[INFO] $message');
    }
  }

  @override
  void w(dynamic message) {
    if (_kDebugMode) {
      print('[WARNING] $message');
    }
  }

  @override
  void e(dynamic message) {
    if (_kDebugMode) {
      print('[ERROR] $message');
    }
  }
}
