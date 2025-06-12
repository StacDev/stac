import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_dynamic_view/stac_dynamic_view.dart';
import 'package:stac/src/services/stac_network_service.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_logger/stac_logger.dart';

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

              Log.d("data: $data");

              if (data != null) {
                // Prepare data for template based on resultTarget
                final dataForTemplate = model.resultTarget.isNotEmpty
                    ? {model.resultTarget: data}
                    : data;

                // Apply the data to the template
                final renderedTemplate = _applyDataToTemplate(
                  model.template,
                  dataForTemplate,
                  model.resultTarget,
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
    Map<String, dynamic> currentTemplate,
    dynamic data,
    String resultTarget,
  ) {
    // Deep copy template to avoid modifying the original
    Map<String, dynamic> resolvedTemplate =
        jsonDecode(jsonEncode(currentTemplate));

    // Check for list processing with itemTemplate
    if (resolvedTemplate.containsKey('itemTemplate')) {
      dynamic listForIteration;
      final String itemTemplateKey = 'itemTemplate';
      // Ensure itemTemplateActual is correctly typed.
      final itemTemplateActual =
          resolvedTemplate[itemTemplateKey] as Map<String, dynamic>;

      if (resultTarget.isNotEmpty &&
          data is Map &&
          data.containsKey(resultTarget) &&
          data[resultTarget] is List) {
        listForIteration = data[resultTarget];
      } else if (resultTarget.isEmpty && data is List) {
        listForIteration = data;
      }

      if (listForIteration != null) {
        resolvedTemplate
            .remove(itemTemplateKey); // Remove from outer template structure
        final processedChildItems = <Map<String, dynamic>>[];

        for (final singleRawItem in listForIteration) {
          // Removed unnecessary cast
          if (singleRawItem is Map) {
            final itemSpecificDataContext = resultTarget.isNotEmpty
                ? {resultTarget: singleRawItem}
                : singleRawItem;

            final processedChild =
                _applyDataToItem(itemTemplateActual, itemSpecificDataContext);
            processedChildItems.add(processedChild);
          } else {
            Log.w("Item in list is not a Map, skipping: $singleRawItem");
          }
        }

        if (!resolvedTemplate.containsKey('children')) {
          resolvedTemplate['children'] = [];
        }
        if (resolvedTemplate['children'] is List) {
          (resolvedTemplate['children'] as List).addAll(processedChildItems);
        } else {
          Log.w(
              "Template has 'children' but it's not a List. Overwriting with processed items.");
          resolvedTemplate['children'] = processedChildItems;
        }
      } else {
        Log.d(
            "itemTemplate found but no list to iterate in dataContext. Template: $currentTemplate, DataContext: $data");
      }
    }

    // Process the (potentially modified) resolvedTemplate itself for any placeholders
    // using the original overall dataContext.
    if (data is Map) {
      // Ensure it's Map<dynamic, dynamic> for _processTemplateRecursively
      final Map<dynamic, dynamic> mapDataContext =
          Map<dynamic, dynamic>.from(data);
      _processTemplateRecursively(resolvedTemplate, mapDataContext);
    } else {
      Log.d(
          "Overall dataContext is not a Map, skipping final placeholder processing for the main template structure. DataContext: $data");
    }

    return resolvedTemplate;
  }

  Map<String, dynamic> _applyDataToItem(
    Map<String, dynamic> template,
    Map<dynamic, dynamic> item,
  ) {
    final result = jsonDecode(jsonEncode(template)) as Map<String, dynamic>;

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

              processedValue =
                  processedValue.replaceAll(placeholder, dataValue.toString());
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
