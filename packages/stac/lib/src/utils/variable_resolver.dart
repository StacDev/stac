import 'package:flutter/widgets.dart';
import 'package:stac/src/framework/stac_registry.dart';
import 'package:stac/src/parsers/widgets/stac_form/stac_form_scope.dart';
import 'package:stac/src/utils/placeholders.dart';
import 'package:stac_core/stac_core.dart';

/// Fills the `{{name}}` placeholders in a widget's [json] from [registry],
/// when the widget is built.
///
/// A name is looked up as a key first, then as a path into a stored map or
/// list: `user.name`, `items.0.title` or `items[0].title`. A string that is
/// exactly one placeholder for a list or map becomes that list or map; other
/// values are inserted as text, and unknown names are left as they are.
///
/// Three things are left for later: actions, which [resolveActionJson]
/// fills when they run; `observer` widgets, which fill their own subtree
/// whenever a value changes; and the `items` placeholder of a widget with an
/// `itemTemplate`, which the widget reads itself so it can follow changes.
dynamic resolveVariablesInJson(dynamic json, StacRegistry registry) =>
    resolvePlaceholders(
      json,
      (path) => registryValue(registry, path),
      skip: (json) => json.containsKey('actionType') || _isObserver(json),
      skipEntry: _isBoundItems,
    );

/// Fills the placeholders in an action's [json] when the action runs, from
/// the registry and from the form around [context]: `{{form.email}}` is the
/// current value of the form field with the id `email`, or empty text when
/// the field has no value.
Map<String, dynamic> resolveActionJson(
  Map<String, dynamic> json,
  BuildContext context,
) {
  final registry = StacRegistry.instance;
  // An action can run after its widget left the tree, from `onDispose`.
  final form = context.mounted
      ? context.getInheritedWidgetOfExactType<StacFormScope>()
      : null;
  Object? lookup(String path) {
    if (path.startsWith('form.')) {
      // Without a form around, leave it for an action that has one.
      if (form == null) return null;
      return form.formData[path.substring(5)] ?? '';
    }
    return registryValue(registry, path);
  }

  // A nested action is left until it runs, and an observer until it builds.
  // Everything else is filled now, widgets such as a dialog's content too:
  // they can't be told apart from data with a `type` field, such as
  // `{"type": "expense", "amount": "{{form.amount}}"}`.
  return {
    for (final entry in json.entries)
      entry.key: resolvePlaceholders(
        entry.value,
        lookup,
        skip: (map) => map.containsKey('actionType') || _isObserver(map),
        skipEntry: _isBoundItems,
      ),
  };
}

/// The value [path] refers to in [registry]: the value of the key [path]
/// itself, or a path into the value of its first segment.
Object? registryValue(StacRegistry registry, String path) {
  final exact = registry.getValue(path);
  if (exact != null) return exact;
  final separator = path.indexOf(RegExp(r'[.\[]'));
  if (separator <= 0) return null;
  return readPath(
    registry.getValue(path.substring(0, separator)),
    path.substring(separator),
  );
}

bool _isObserver(Map<dynamic, dynamic> json) =>
    json['type'] == WidgetType.observer.name;

// A widget with `items` and `itemTemplate` fills the template itself, once
// per entry, so entry fields come before state keys of the same name.
bool _isBoundItems(Map<dynamic, dynamic> json, String key) {
  if (key == 'itemTemplate') return json.containsKey('items');
  return key == 'items' &&
      json.containsKey('itemTemplate') &&
      json[key] is String &&
      singlePlaceholder(json[key] as String) != null;
}
