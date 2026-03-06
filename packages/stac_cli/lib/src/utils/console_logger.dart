import 'dart:async';
import 'dart:io';

/// Log levels for console output
enum LogLevel { debug, info, warning, error, success }

/// Simple console logger for the Stac CLI
class ConsoleLogger {
  static bool _verbose = false;

  /// Enable or disable verbose logging
  static void setVerbose(bool verbose) {
    _verbose = verbose;
  }

  /// Check if verbose logging is enabled
  static bool get isVerbose => _verbose;

  /// Log a debug message (only shown in verbose mode)
  static void debug(String message) {
    if (_verbose) {
      _log(message, LogLevel.debug, '\x1B[90m'); // Gray
    }
  }

  /// Log an info message
  static void info(String message) {
    _log(message, LogLevel.info, '\x1B[34m'); // Blue
  }

  /// Log a success message
  static void success(String message) {
    _log(message, LogLevel.success, '\x1B[32m'); // Green
  }

  /// Log a warning message
  static void warning(String message) {
    _log(message, LogLevel.warning, '\x1B[33m'); // Yellow
  }

  /// Log an error message
  static void error(String message) {
    _log(message, LogLevel.error, '\x1B[31m'); // Red
  }

  /// Print a message without any prefix or color
  static void plain(String message) {
    print(message);
  }

  /// Print a green ASCII-art banner that spells STAC using '#'
  static void printStacAscii() {
    // 7-line block letters for S T A C (10 cols each)
    const s = [
      '  ######  ',
      ' ##    ## ',
      ' ##       ',
      '  #####   ',
      '       ## ',
      ' ##    ## ',
      '  ######  ',
    ];
    const t = [
      ' ######## ',
      '    ##    ',
      '    ##    ',
      '    ##    ',
      '    ##    ',
      '    ##    ',
      '    ##    ',
    ];
    const a = [
      '   ####   ',
      '  ##  ##  ',
      ' ##    ## ',
      ' ######## ',
      ' ##    ## ',
      ' ##    ## ',
      ' ##    ## ',
    ];
    const c = [
      '  ######  ',
      ' ##    ## ',
      ' ##       ',
      ' ##       ',
      ' ##       ',
      ' ##    ## ',
      '  ######  ',
    ];

    // Two empty lines above
    stdout.writeln('');
    stdout.writeln('');

    final width = _terminalWidth();
    for (var i = 0; i < s.length; i++) {
      final raw = '${s[i]}${t[i]}${a[i]} ${c[i]}';
      var pad = _leftPaddingForCenter(raw.length, width);
      final line = '${' ' * pad}$raw';
      if (stdout.hasTerminal) {
        // Bold + truecolor mint: #7FFFBB -> 127,255,187
        stdout.writeln('\x1B[1;38;2;127;255;187m$line\x1B[0m');
      } else {
        stdout.writeln(line);
      }
    }

    // Two empty lines below
    stdout.writeln('');
    stdout.writeln('');
  }

  static int _terminalWidth() {
    try {
      final colsEnv = Platform.environment['COLUMNS'];
      final parsed = int.tryParse(colsEnv ?? '');
      if (parsed != null && parsed > 0) return parsed;
    } catch (_) {}
    return 80;
  }

  static int _leftPaddingForCenter(int contentLength, int totalWidth) {
    final remaining = totalWidth - contentLength;
    if (remaining <= 0) return 0;
    return remaining ~/ 4;
  }

  /// Print a spinner with a message (for long-running operations)
  static void spinner(String message) {
    stdout.write('\x1B[34m⠋\x1B[0m $message');
  }

  /// Clear the current line (useful after spinner)
  static void clearLine() {
    stdout.write('\r\x1B[K');
  }

  /// Show a loading message with animated dots
  static Future<void> showLoader(
    String message,
    Future<void> Function() task,
  ) async {
    const dots = ['', '.', '..', '...'];
    var dotIndex = 0;

    // Start the loading animation
    Timer? timer;
    timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      if (stdout.hasTerminal) {
        stdout.write('\r\x1B[K'); // Clear line
        stdout.write('\x1B[34m$message${dots[dotIndex]}\x1B[0m'); // Blue color
      }
      dotIndex = (dotIndex + 1) % dots.length;
    });

    try {
      await task();
    } finally {
      timer.cancel();
      if (stdout.hasTerminal) {
        stdout.write('\r\x1B[K'); // Clear the loader line
      }
    }
  }

  static void _log(String message, LogLevel level, String color) {
    final prefix = _getPrefix(level);
    final reset = '\x1B[0m';

    if (stdout.hasTerminal) {
      print('$color$prefix$reset $message');
    } else {
      print('$prefix $message');
    }
  }

  static String _getPrefix(LogLevel level) {
    switch (level) {
      case LogLevel.debug:
        return '[DEBUG]';
      case LogLevel.info:
        return '[INFO]';
      case LogLevel.warning:
        return '[WARN]';
      case LogLevel.error:
        return '[ERROR]';
      case LogLevel.success:
        return '[SUCCESS]';
    }
  }
}
