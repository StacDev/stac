import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/stac_dynamic_view/stac_dynamic_view.dart';
import 'package:stac/src/services/stac_network_service.dart';
import 'package:stac/src/utils/log.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacDynamicViewParser extends StacParser<StacDynamicView> {
  const StacDynamicViewParser();

  @override
  String get type => WidgetType.dynamicView.name;

  @override
  StacDynamicView getModel(Map<String, dynamic> json) {
    return StacDynamicView.fromJson(json);
  }

  @override
  Widget parse(BuildContext context, StacDynamicView model) {
    return FutureBuilder<Response?>(
      future: _fetchData(context, model),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          Log.e(snapshot.error);
          return const SizedBox();
        } else if (snapshot.hasData) {
          final response = snapshot.data;
          if (response != null) {
            try {
              // Handle the response data based on its type
              dynamic responseData;
              if (response.data is String) {
                responseData = jsonDecode(response.data);
              } else if (response.data is Map) {
                responseData = response.data;
              } else {
                responseData = response.data;
              }

              final data = model.targetPath.isEmpty
                  ? responseData
                  : _extractNestedData(
                      responseData,
                      model.targetPath.split('.'),
                    );

              if (data != null) {
                // Apply the data to the template
                final renderedTemplate = _applyDataToTemplate(
                  model.template,
                  data,
                );
                return Stac.fromJson(renderedTemplate, context) ??
                    const SizedBox();
              }
            } catch (e) {
              Log.e('Error parsing API response: $e');
              return SizedBox();
            }
          }
          return const SizedBox();
        } else {
          return const SizedBox();
        }
      },
    );
  }

  Future<Response?> _fetchData(
    BuildContext context,
    StacDynamicView model,
  ) async {
    try {
      return await StacNetworkService.request(context, model.request);
    } catch (e) {
      Log.e('Error fetching dynamic content: $e');
      rethrow;
    }
  }

  dynamic _extractNestedData(dynamic data, List<String> keys) {
    dynamic current = data;
    for (final key in keys) {
      if (current is Map && current.containsKey(key)) {
        current = current[key];
      } else {
        return null;
      }
    }
    return current;
  }

  Map<String, dynamic> _applyDataToTemplate(
    Map<String, dynamic> template,
    dynamic data,
  ) {
    Map<String, dynamic> result = {};

    if (data is Map) {
      // If data is a single object, apply it directly to the template
      result = _applyDataToItem(template, data);
    } else {
      // For primitive data types or unsupported formats, just pass through the template
      result = template;
    }

    return result;
  }

  Map<String, dynamic> _applyDataToItem(
    Map<String, dynamic> template,
    Map<dynamic, dynamic> item,
  ) {
    final result = Map<String, dynamic>.from(template);

    // Process each key in the template
    _processTemplateRecursively(result, item);

    return result;
  }

  dynamic _processTemplateRecursively(
    dynamic template,
    Map<dynamic, dynamic> data,
  ) {
    if (template is Map) {
      for (final key in template.keys.toList()) {
        final value = template[key];

        if (value is String) {
          // Check if the string contains any placeholders
          if (value.contains('{{') && value.contains('}}')) {
            // Process multiple placeholders in a single string
            String processedValue = value;
            final regex = RegExp(r'\{\{([^}]+)\}\}');
            final matches = regex.allMatches(value);

            for (final match in matches) {
              final placeholder = match.group(0)!;
              final dataKey = match.group(1)!.trim();
              final keys = dataKey.split('.');

              // Extract the value from the data
              final dataValue = _extractNestedData(data, keys);
              if (dataValue != null) {
                processedValue = processedValue.replaceAll(
                    placeholder, dataValue.toString());
              }
            }

            template[key] = processedValue;
          }
        } else if (value is Map || value is List) {
          // Recursively process nested maps and lists
          _processTemplateRecursively(value, data);
        }
      }
    } else if (template is List) {
      for (int i = 0; i < template.length; i++) {
        _processTemplateRecursively(template[i], data);
      }
    }
    return template;
  }
}
