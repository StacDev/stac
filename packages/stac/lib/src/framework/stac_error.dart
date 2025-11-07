import 'dart:convert';

import 'package:flutter/material.dart';

/// Structured information about a Stac parsing or runtime error.
///
/// This class encapsulates details about errors that occur when parsing
/// JSON to Stac widgets/actions or during runtime execution. It provides
/// context like the failing entity type, original JSON payload, and stack trace
/// to help with debugging and error reporting.
///
/// Used primarily with [StacErrorWidgetBuilder] to display custom error UI
/// when Stac parsing fails.
///
/// Example usage:
/// ```dart
/// // Creating a StacError
/// final error = StacError(
///   type: 'container',
///   error: FormatException('Invalid padding value'),
///   json: {'type': 'container', 'padding': 'invalid'},
///   stackTrace: StackTrace.current,
/// );
///
/// // Using with error widget builder
/// Stac.initialize(
///   errorWidgetBuilder: (context, errorDetails) {
///     return Text('Error in ${errorDetails.type}: ${errorDetails.error}');
///   },
/// );
/// ```
class StacError {
  /// Creates a [StacError] with the given details.
  ///
  /// The [error] parameter is required and should contain the actual
  /// error or exception that was thrown. All other parameters are optional
  /// but recommended for better error diagnostics.
  const StacError({this.type, required this.error, this.json, this.stackTrace});

  /// The type identifier of the failing Stac entity.
  ///
  /// For widgets, this matches the `type` field in JSON (e.g., `"container"`, `"text"`).
  /// For actions, this is the action type (e.g., `"navigate"`, `"networkRequest"`).
  ///
  /// This field is `null` when the error occurs before type identification,
  /// such as malformed JSON or missing `type` field.
  ///
  /// Examples:
  /// - Widget: `"container"`, `"text"`, `"column"`, `"row"`
  /// - Action: `"navigate"`, `"networkRequest"`, `"setState"`
  final String? type;

  /// The underlying error or exception that was thrown.
  ///
  /// This can be any type of error including:
  /// - [FormatException] for malformed JSON or invalid values
  /// - [TypeError] for type conversion failures
  /// - Custom exceptions from parsers or action handlers
  final Object error;

  /// The original JSON payload that caused the error.
  ///
  /// Contains the complete JSON map that was being parsed when the error
  /// occurred. Useful for debugging and understanding the context of the failure.
  ///
  /// This is `null` when:
  /// - The error occurred outside of JSON parsing
  /// - The JSON was not available at the time of error
  ///
  /// Example:
  /// ```dart
  /// {
  ///   'type': 'container',
  ///   'padding': {'all': 'invalid'}, // Invalid value causing error
  ///   'child': {'type': 'text', 'data': 'Hello'}
  /// }
  /// ```
  final Map<String, dynamic>? json;

  /// The stack trace captured when the error occurred.
  ///
  /// Provides the call stack at the point of failure, useful for debugging
  /// and error reporting. Available when the error was caught with a stack trace.
  ///
  /// May be `null` if:
  /// - Stack trace logging is disabled via `logStackTraces: false`
  /// - The error was not caught with a stack trace
  final StackTrace? stackTrace;
}

/// A widget that displays detailed error information when Stac fails to parse JSON.
///
/// Shown when parsing fails, providing developers with context about what went wrong,
/// including the error type, message, and JSON payload when available.
///
/// Features:
/// - Expandable error details with JSON payload
/// - Context-aware troubleshooting tips based on error type
/// - Copy-friendly selectable text for debugging
///
/// Note: Stack traces are logged to the console but not displayed in the UI.
/// Use a custom [StacErrorWidgetBuilder] if you need to display stack traces.
///
/// Example:
/// ```dart
/// StacErrorWidget(
///   error: StacError(
///     type: 'container',
///     error: FormatException('Invalid value'),
///     json: {'type': 'container', 'padding': 'invalid'},
///   ),
/// )
/// ```
class StacErrorWidget extends StatefulWidget {
  const StacErrorWidget({super.key, required this.errorDetails});

  final StacError errorDetails;

  @override
  State<StacErrorWidget> createState() => _StacErrorWidgetState();
}

/// Expandable section types for better state management.
enum _ExpandableSection { json }

class _StacErrorWidgetState extends State<StacErrorWidget> {
  bool _showDetails = false;
  final Set<_ExpandableSection> _expandedSections = {};

  // Color constants for consistent theming
  static const _errorRed = Color(0xFFD32F2F);
  static const _errorRedLight = Color(0xFFEF5350);
  static const _errorBackground = Color(0xFFFFEBEE);
  static const _errorBorder = Color(0xFFEF9A9A);
  static const _warningOrange = Color(0xFFF57C00);
  static const _infoBlue = Color(0xFF1976D2);
  static const _infoBlueLight = Color(0xFF1565C0);
  static const _tipYellow = Color(0xFFF57F17);
  static const _tipYellowLight = Color(0xFFFBC02D);
  static const _tipBackground = Color(0xFFFFF9C4);
  static const _textDark = Color(0xFF424242);
  static const _textBrown = Color(0xFF795548);
  static const _backgroundGray = Color(0xFFF5F5F5);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: _errorBackground,
        border: Border.all(color: _errorRedLight, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header
          Row(
            children: [
              const Icon(Icons.error, color: _errorRed, size: 24),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  'Stac Parse Error',
                  style: TextStyle(
                    color: _errorRed,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  _showDetails ? Icons.expand_less : Icons.expand_more,
                  color: _errorRed,
                ),
                onPressed: () {
                  setState(() {
                    _showDetails = !_showDetails;
                  });
                },
                tooltip: _showDetails ? 'Hide details' : 'Show details',
              ),
            ],
          ),

          const SizedBox(height: 8),

          // Type information (always visible, null-safe)
          if (widget.errorDetails.type != null) ...[
            _buildInfoRow('Type', widget.errorDetails.type!),
            const SizedBox(height: 4),
          ],

          // Error message (always visible)
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.warning_amber,
                  color: _warningOrange,
                  size: 16,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    widget.errorDetails.error.toString(),
                    style: const TextStyle(color: _errorRed, fontSize: 13),
                  ),
                ),
              ],
            ),
          ),

          // Expandable details section
          if (_showDetails) ...[
            const SizedBox(height: 12),
            const Divider(color: _errorBorder),
            const SizedBox(height: 8),

            // JSON data
            if (widget.errorDetails.json != null) ...[
              _buildExpandableSection(
                title: 'JSON Data',
                section: _ExpandableSection.json,
                child: _buildCodeBlock(_formatJson(widget.errorDetails.json!)),
              ),
              const SizedBox(height: 8),
            ],

            // Help text
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: _tipBackground,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: _tipYellowLight),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.lightbulb_outline,
                    color: _tipYellow,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Troubleshooting Tips:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: _tipYellow,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          _getTroubleshootingTips(),
                          style: const TextStyle(
                            fontSize: 11,
                            color: _textBrown,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  /// Formats JSON with proper indentation or returns error message.
  String _formatJson(Map<String, dynamic> json) {
    try {
      return const JsonEncoder.withIndent('  ').convert(json);
    } catch (e) {
      return 'Error formatting JSON: $e\n\nRaw: $json';
    }
  }

  /// Builds a scrollable code block for displaying JSON or stack traces.
  Widget _buildCodeBlock(String content) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: _backgroundGray,
        borderRadius: BorderRadius.circular(4),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SelectableText(
          content,
          style: const TextStyle(
            fontFamily: 'monospace',
            fontSize: 12,
            color: _textDark,
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(color: _textDark, fontSize: 13),
          children: [
            TextSpan(
              text: '$label: ',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: value,
              style: const TextStyle(
                fontFamily: 'monospace',
                color: _infoBlueLight,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExpandableSection({
    required String title,
    required _ExpandableSection section,
    required Widget child,
  }) {
    final isExpanded = _expandedSections.contains(section);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              if (isExpanded) {
                _expandedSections.remove(section);
              } else {
                _expandedSections.add(section);
              }
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                Icon(
                  isExpanded ? Icons.arrow_drop_down : Icons.arrow_right,
                  color: _infoBlue,
                  size: 24,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: _infoBlue,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (isExpanded) ...[const SizedBox(height: 4), child],
      ],
    );
  }

  String _getTroubleshootingTips() {
    final errorStr = widget.errorDetails.error.toString().toLowerCase();
    final errorType = widget.errorDetails.error.runtimeType
        .toString()
        .toLowerCase();

    // Check for unregistered widget/action types
    if (errorStr.contains('type') && errorStr.contains('not found')) {
      return '• Check if the widget/action type is registered\n'
          '• Verify the type name matches exactly (case-sensitive)\n'
          '• Ensure the parser is added in Stac.initialize()';
    }

    // Check for null/missing required fields
    if (errorStr.contains('null') ||
        errorType.contains('null') ||
        errorStr.contains('required')) {
      return '• Check for required fields in your JSON\n'
          '• Verify all mandatory properties are provided\n'
          '• Look for missing nested objects';
    }

    // Check for type conversion errors
    if (errorStr.contains('type') ||
        errorStr.contains('cast') ||
        errorType.contains('type')) {
      return '• Verify the JSON structure matches the expected format\n'
          '• Check data types (string, number, boolean, etc.)\n'
          '• Look for type mismatches in nested objects';
    }

    // Check for JSON parsing errors
    if (errorStr.contains('json') ||
        errorStr.contains('parse') ||
        errorStr.contains('format')) {
      return '• Validate your JSON syntax\n'
          '• Check for missing or extra commas\n'
          '• Verify proper quote usage';
    }

    // Default troubleshooting tips
    return '• Check the JSON structure matches widget requirements\n'
        '• Review the stack trace for more details\n'
        '• Consult the widget documentation at docs.stac.dev';
  }
}
