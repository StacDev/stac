import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:stac_gen_ui/src/models/stac_gen_ui_config.dart';
import 'package:stac_gen_ui/src/services/stac_schema_provider.dart';

/// Service for communicating with the Claude API to generate Stac JSON specs.
///
/// Uses Claude's tool_use feature to guarantee valid JSON output.
///
/// ```dart
/// final json = await ClaudeApiService.generateStacJson(
///   prompt: 'Create a login form',
/// );
/// ```
class ClaudeApiService {
  ClaudeApiService._();

  static const String _baseUrl = 'https://api.anthropic.com/v1/messages';

  static const Map<String, dynamic> _tool = {
    'name': 'generate_ui',
    'description': 'Generate a Stac UI JSON specification',
    'input_schema': {
      'type': 'object',
      'properties': {
        'stac_json': {
          'type': 'object',
          'description': 'The complete Stac widget JSON specification',
        },
      },
      'required': ['stac_json'],
    },
  };

  /// Generates a Stac JSON specification from a natural language prompt.
  ///
  /// Returns a [Map<String, dynamic>] representing the generated Stac widget
  /// tree that can be passed to [Stac.fromJson].
  ///
  /// Throws [DioException] on network errors or [FormatException] if the
  /// response cannot be parsed.
  static Future<Map<String, dynamic>> generateStacJson({
    required String prompt,
    String? systemPromptExtras,
  }) async {
    final dio = Dio();
    final systemBlocks = StacSchemaProvider.buildSystemBlocks(
      extras: systemPromptExtras,
    );

    final response = await dio.post(
      _baseUrl,
      options: Options(
        headers: {
          'x-api-key': StacGenUiConfig.apiKey,
          'anthropic-version': '2023-06-01',
          'anthropic-beta': 'prompt-caching-2024-07-31',
          'content-type': 'application/json',
        },
      ),
      data: {
        'model': StacGenUiConfig.model,
        'max_tokens': StacGenUiConfig.maxTokens,
        'system': systemBlocks,
        'tools': [_tool],
        'tool_choice': {'type': 'tool', 'name': 'generate_ui'},
        'messages': [
          {'role': 'user', 'content': prompt},
        ],
      },
    );

    return _parseResponse(response.data);
  }

  /// Parses the Claude API response to extract the generated Stac JSON.
  ///
  /// First attempts to extract from tool_use blocks, then falls back to
  /// text content parsing.
  static Map<String, dynamic> _parseResponse(dynamic responseData) {
    final root = _asStringKeyedMap(responseData);
    if (root == null) {
      throw FormatException(
        'Claude response was not a JSON object: ${responseData.runtimeType}',
      );
    }

    final errorPayload = root['error'];
    if (errorPayload != null) {
      throw FormatException('Claude API error: $errorPayload');
    }

    final content = root['content'];
    if (content is! List) {
      throw FormatException(
        'Claude response missing "content" list; keys: ${root.keys.toList()}',
      );
    }

    // Prefer our named tool, then any tool_use (model / proxy quirks).
    for (final block in content) {
      final blockMap = _asStringKeyedMap(block);
      if (blockMap == null) continue;
      if (blockMap['type'] == 'tool_use' && blockMap['name'] == 'generate_ui') {
        final extracted = _stacJsonFromToolInput(blockMap['input']);
        if (extracted != null) return extracted;
      }
    }

    for (final block in content) {
      final blockMap = _asStringKeyedMap(block);
      if (blockMap == null) continue;
      if (blockMap['type'] == 'tool_use') {
        final extracted = _stacJsonFromToolInput(blockMap['input']);
        if (extracted != null) return extracted;
      }
    }

    for (final block in content) {
      final blockMap = _asStringKeyedMap(block);
      if (blockMap == null) continue;
      if (blockMap['type'] == 'text') {
        final text = blockMap['text'];
        if (text is String && text.isNotEmpty) {
          try {
            return _extractJsonFromText(text);
          } catch (_) {
            // Try other text blocks or fall through.
          }
        }
      }
    }

    throw FormatException(
      'Could not extract Stac JSON from Claude response '
      '(no usable tool_use or text). stop_reason: ${root['stop_reason']}',
    );
  }

  static Map<String, dynamic>? _asStringKeyedMap(dynamic value) {
    if (value is Map<String, dynamic>) return value;
    if (value is Map) return Map<String, dynamic>.from(value);
    return null;
  }

  /// Reads [stac_json] from tool input, or the whole input if the model
  /// returned the widget tree at the root of [input].
  ///
  /// Handles stringified JSON in [stac_json] and loosely typed maps from
  /// JSON decoders.
  static Map<String, dynamic>? _stacJsonFromToolInput(dynamic input) {
    final map = _asStringKeyedMap(input);
    if (map == null) return null;

    if (map.containsKey('stac_json')) {
      final stac = map['stac_json'];
      if (stac == null) return null;

      final asMap = _asStringKeyedMap(stac);
      if (asMap != null) return asMap;

      if (stac is String) {
        final trimmed = stac.trim();
        if (trimmed.isEmpty) return null;
        try {
          final decoded = jsonDecode(trimmed);
          return _asStringKeyedMap(decoded);
        } catch (_) {
          return null;
        }
      }
      return null;
    }

    // Some responses put the root widget keys directly on `input`.
    if (map['type'] is String) {
      return Map<String, dynamic>.from(map);
    }

    return null;
  }

  /// Extracts JSON from text content, handling markdown code fences.
  static Map<String, dynamic> _extractJsonFromText(String text) {
    final fenceRegex = RegExp(r'```(?:json)?\s*([\s\S]*?)\s*```');
    final match = fenceRegex.firstMatch(text);
    if (match != null) {
      try {
        final decoded = jsonDecode(match.group(1)!.trim());
        final m = _asStringKeyedMap(decoded);
        if (m != null) return m;
      } catch (_) {
        // Fall through to whole-text strategies.
      }
    }

    final trimmed = text.trim();
    try {
      final decoded = jsonDecode(trimmed);
      final m = _asStringKeyedMap(decoded);
      if (m != null) return m;
    } catch (_) {
      // Fall through.
    }

    final start = trimmed.indexOf('{');
    final end = trimmed.lastIndexOf('}');
    if (start != -1 && end > start) {
      final slice = trimmed.substring(start, end + 1);
      final decoded = jsonDecode(slice);
      final m = _asStringKeyedMap(decoded);
      if (m != null) return m;
    }

    throw const FormatException(
      'Claude response did not contain a valid JSON object',
    );
  }
}
