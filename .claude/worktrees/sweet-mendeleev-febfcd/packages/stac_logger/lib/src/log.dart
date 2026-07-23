import 'package:stac_logger/src/log_interface.dart';

import 'log_stub.dart'
    if (dart.library.io) 'log_io.dart'
    if (dart.library.html) 'log_web.dart'
    if (dart.library.wasm) 'log_web.dart';

/// A reusable logging utility for the Stac framework.
///
/// Get Started
/// ```dart
/// import 'package:stac_logger/stac_logger.dart';
///
/// void main() {
///   Log.d('Hello World');
/// }
/// ```
///
/// For information about Stac, visit [Stac](https://github.com/StacDev/stac).

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
