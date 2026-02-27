import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:stac/src/parsers/widgets/stac_dynamic_data_provider/dynamic_data_scope.dart';
import 'package:stac_logger/stac_logger.dart';

/// Extracts nested data from a dynamic structure using a list of keys.
///
/// Supports dot-notation paths, array index access (e.g. `items[0]`),
/// and numeric keys for list index access.
dynamic extractNestedData(dynamic data, List<String> keys) {
  dynamic current = data;
  final RegExp arrayKeyRegex = RegExp(r'(\w+)\[(\d+)\]');

  for (final key in keys) {
    Match? arrayMatch = arrayKeyRegex.firstMatch(key);

    if (arrayMatch != null) {
      final String actualKey = arrayMatch.group(1)!;
      final int index = int.parse(arrayMatch.group(2)!);

      if (current is Map && current.containsKey(actualKey)) {
        dynamic potentialList = current[actualKey];
        if (potentialList is List) {
          if (index >= 0 && index < potentialList.length) {
            current = potentialList[index];
          } else {
            return null;
          }
        } else {
          return null;
        }
      } else {
        return null;
      }
    } else {
      if (current is Map && current.containsKey(key)) {
        current = current[key];
      } else if (current is List) {
        try {
          int index = int.parse(key);
          if (index >= 0 && index < current.length) {
            current = current[index];
          } else {
            return null;
          }
        } catch (e) {
          return null;
        }
      } else {
        return null;
      }
    }
  }
  if (current == null) {
    return null;
  } else {
    return current;
  }
}

/// Recursively processes a template, replacing `{{placeholder}}` patterns
/// with values from the provided data map.
dynamic processTemplateRecursively(
  dynamic template,
  Map<dynamic, dynamic> data,
) {
  if (template is Map) {
    for (final key in template.keys.toList()) {
      final value = template[key];

      if (value is String) {
        if (value.contains('{{') && value.contains('}}')) {
          String processedValue = value;
          final regex = RegExp(r'\{\{([^}]+)\}\}');
          final matches = regex.allMatches(value);

          for (final match in matches) {
            final placeholder = match.group(0)!;
            final dataKey = match.group(1)!.trim();
            final keys = dataKey.split('.');

            final dataValue = extractNestedData(data, keys);

            if (dataValue != null) {
              processedValue = processedValue.replaceAll(
                placeholder,
                dataValue.toString(),
              );
            }
          }

          template[key] = processedValue;
        }
      } else if (value is Map || value is List) {
        processTemplateRecursively(value, data);
      }
    }
  } else if (template is List) {
    for (int i = 0; i < template.length; i++) {
      processTemplateRecursively(template[i], data);
    }
  }
  return template;
}

/// Applies data to a single item template by deep-copying the template
/// and processing all placeholders with the item's data.
Map<String, dynamic> applyDataToItem(
  Map<String, dynamic> template,
  Map<dynamic, dynamic> item,
) {
  final result = jsonDecode(jsonEncode(template)) as Map<String, dynamic>;
  processTemplateRecursively(result, item);
  return result;
}

/// Checks if the data represents an empty list, including nested structures.
bool isEmptyList(dynamic data) {
  if (data is List && data.isEmpty) {
    return true;
  }

  if (data is Map) {
    for (final value in data.values) {
      if (value is List && value.isEmpty) {
        return true;
      }
      if (value is Map && isEmptyList(value)) {
        return true;
      }
    }
  }

  return false;
}

/// Processes an itemTemplate against a list of data, producing a list of
/// rendered child widget JSON maps.
List<Map<String, dynamic>> processItemTemplate({
  required Map<String, dynamic> itemTemplate,
  required List<dynamic> listData,
  String resultTarget = '',
}) {
  final processedChildren = <Map<String, dynamic>>[];

  for (final singleRawItem in listData) {
    if (singleRawItem is Map) {
      final itemSpecificDataContext = resultTarget.isNotEmpty
          ? {resultTarget: singleRawItem}
          : singleRawItem;

      final processedChild = applyDataToItem(
        itemTemplate,
        itemSpecificDataContext,
      );
      processedChildren.add(processedChild);
    } else {
      Log.w("Item in list is not a Map, skipping: $singleRawItem");
    }
  }

  return processedChildren;
}

/// Resolves remaining `{{providerId.path}}` placeholders in JSON using
/// data from the nearest [DynamicDataScope] in the widget tree.
///
/// This is designed to run as a second pass after [resolveVariablesInJson],
/// picking up any `{{}}` patterns that weren't resolved from the global
/// registry (typically because they contain dots referencing provider data).
dynamic resolveDynamicDataInJson(dynamic json, BuildContext context) {
  final scope = DynamicDataScope.maybeOf(context);
  if (scope == null) return json;

  if (json is String) {
    if (!json.contains('{{') || !json.contains('}}')) return json;

    final regex = RegExp(r'\{\{([^}]+)\}\}');
    String result = json;
    final matches = regex.allMatches(json);

    for (final match in matches) {
      final placeholder = match.group(0)!;
      final expression = match.group(1)!.trim();

      final resolved = scope.resolveExpression(expression);
      if (resolved != null) {
        result = result.replaceAll(placeholder, resolved.toString());
      }
    }
    return result;
  } else if (json is Map<String, dynamic>) {
    return json.map(
      (key, value) => MapEntry(key, resolveDynamicDataInJson(value, context)),
    );
  } else if (json is List) {
    return json.map((item) => resolveDynamicDataInJson(item, context)).toList();
  }
  return json;
}
