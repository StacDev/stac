/// Base exception class for all STAC CLI errors
class StacException implements Exception {
  final String message;
  final int? exitCode;
  final dynamic cause;

  const StacException(this.message, {this.exitCode, this.cause});

  @override
  String toString() => 'StacException: $message';
}
