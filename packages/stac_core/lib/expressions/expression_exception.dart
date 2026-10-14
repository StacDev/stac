/// Thrown when an expression or template placeholder cannot be parsed.
class StacExpressionException implements Exception {
  /// Creates an exception describing a problem at [offset] in [source].
  const StacExpressionException(this.message, {this.offset, this.source});

  /// Human readable description of the problem.
  final String message;

  /// Zero-based offset into [source] where the problem was detected.
  final int? offset;

  /// The expression text that failed to parse.
  final String? source;

  @override
  String toString() {
    final buffer = StringBuffer('StacExpressionException: $message');
    if (offset != null) buffer.write(' (offset $offset)');
    if (source != null) buffer.write(' in "$source"');
    return buffer.toString();
  }
}
