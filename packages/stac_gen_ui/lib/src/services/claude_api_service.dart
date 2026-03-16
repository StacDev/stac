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
    final systemPrompt = StacSchemaProvider.buildSystemPrompt(
      extras: systemPromptExtras,
    );

    final response = await dio.post(
      _baseUrl,
      options: Options(
        headers: {
          'x-api-key': StacGenUiConfig.apiKey,
          'anthropic-version': '2023-06-01',
          'content-type': 'application/json',
        },
      ),
      data: {
        'model': StacGenUiConfig.model,
        'max_tokens': StacGenUiConfig.maxTokens,
        'system': systemPrompt,
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
    final content = responseData['content'] as List<dynamic>;

    // Look for tool_use block
    for (final block in content) {
      if (block['type'] == 'tool_use' && block['name'] == 'generate_ui') {
        final input = block['input'] as Map<String, dynamic>;
        final stacJson = input['stac_json'];
        if (stacJson is Map<String, dynamic>) {
          return stacJson;
        }
      }
    }

    // Fallback: look for text content and try to extract JSON
    for (final block in content) {
      if (block['type'] == 'text') {
        final text = block['text'] as String;
        return _extractJsonFromText(text);
      }
    }

    throw const FormatException(
      'Could not extract Stac JSON from Claude response',
    );
  }

  /// Extracts JSON from text content, handling markdown code fences.
  static Map<String, dynamic> _extractJsonFromText(String text) {
    // Try to extract from markdown code fences
    final fenceRegex = RegExp(r'```(?:json)?\s*([\s\S]*?)\s*```');
    final match = fenceRegex.firstMatch(text);
    final jsonString = match != null ? match.group(1)! : text.trim();

    final decoded = jsonDecode(jsonString);
    if (decoded is Map<String, dynamic>) {
      return decoded;
    }

    throw const FormatException(
      'Claude response did not contain a valid JSON object',
    );
  }
}
