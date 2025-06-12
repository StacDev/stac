/// Abstract interface for logging functionality
abstract class LogInterface {
  /// Log a debug message
  void d(dynamic message);

  /// Log an info message
  void i(dynamic message);

  /// Log a warning message
  void w(dynamic message);

  /// Log an error message
  void e(dynamic message);
}
