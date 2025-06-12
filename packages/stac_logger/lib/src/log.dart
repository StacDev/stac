// Import the interface
import 'package:stac_logger/src/log_interface.dart';

// Use conditional imports - this is the cleanest approach for WASM compatibility
import 'log_io.dart' // Default implementation for non-web platforms
    if (dart.library.html) 'log_web.dart'; // Web/WASM implementation

class Log {
  const Log._();

  // Get the logger instance directly from the conditionally imported file
  // The compiler will select the appropriate implementation at compile time
  static final LogInterface _logger = createLogger();


  static void d(dynamic message) => _logger.d(message);

  static void i(dynamic message) => _logger.i(message);

  static void w(dynamic message) => _logger.w(message);

  static void e(dynamic message) => _logger.e(message);
}