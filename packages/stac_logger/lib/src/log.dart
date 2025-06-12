import 'package:stac_logger/src/log_interface.dart';

import 'log_io.dart' // Default implementation for non-web platforms
    if (dart.library.html) 'log_web.dart'; // Web/WASM implementation

class Log {
  const Log._();

  // Get the logger instance directly from the conditionally imported file
  // The compiler will select the appropriate implementation at compile time
  static final LogInterface _logger = createLogger();

  /// Logs a debug message
  static void d(dynamic message) => _logger.d(message);

  /// Logs an info message
  static void i(dynamic message) => _logger.i(message);

  /// Logs a warning message
  static void w(dynamic message) => _logger.w(message);

  /// Logs an error message
  static void e(dynamic message) => _logger.e(message);
}
