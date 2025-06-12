import 'package:flutter/foundation.dart';
import 'package:stac_logger/src/log_interface.dart';

LogInterface createLogger() => LogWeb.instance;

/// Web/WASM-compatible implementation of LogInterface
class LogWeb implements LogInterface {
  LogWeb._();

  static final LogWeb _instance = LogWeb._();
  static LogWeb get instance => _instance;

  @override
  void d(dynamic message) {
    if (kDebugMode) {
      debugPrint('[DEBUG] $message');
    }
  }

  @override
  void i(dynamic message) {
    if (kDebugMode) {
      debugPrint('[INFO] $message');
    }
  }

  @override
  void w(dynamic message) {
    if (kDebugMode) {
      debugPrint('[WARNING] $message');
    }
  }

  @override
  void e(dynamic message) {
    if (kDebugMode) {
      debugPrint('[ERROR] $message');
    }
  }
}
