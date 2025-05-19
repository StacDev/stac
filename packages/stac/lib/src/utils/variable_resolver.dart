import 'package:stac/src/framework/stac_registry.dart';

dynamic resolveVariablesInJson(dynamic json, StacRegistry registry) {
  if (json is String) {
    // Replace all {{variable_name}} with their values from registry
    return json.replaceAllMapped(RegExp(r'{{(.*?)}}'), (match) {
      final variableName = match.group(1)?.trim();
      final value = registry.getValue(variableName ?? '');
      return value != null ? value.toString() : match.group(0) ?? '';
    });
  } else if (json is Map<String, dynamic>) {
    // // Skip variable resol~ution for dynamicView and SetValue widget types
    // if (json.containsKey('type') &&
    //     (json['type'] == 'dynamicView' || json['type'] == 'SetValue')) {
    //   return json;
    // }
    return json.map(
        (key, value) => MapEntry(key, resolveVariablesInJson(value, registry)));
  } else if (json is List) {
    return json.map((item) => resolveVariablesInJson(item, registry)).toList();
  }
  return json;
}
