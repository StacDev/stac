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
/// Four things are left for later: actions, which [resolveActionJson]
/// fills when they run; `observer` widgets, which fill their own subtree
/// whenever a value changes; the `items` placeholder, `itemTemplate` and
/// `emptyTemplate` of a widget with an `itemTemplate`, which the widget
/// fills itself so it can follow changes; and a `dynamicView`'s `request`,
/// which is filled when it's sent.
///
/// In a condition or a `setValue` expression, each value goes in as one
/// value (see [isExpressionEntry]).
dynamic resolveVariablesInJson(dynamic json, StacRegistry registry) =>
    resolvePlaceholders(
      json,
      (path) => registryValue(registry, path),
      skip: isFilledLater,
      skipEntry: _isFilledByWidget,
      expressionEntry: isExpressionEntry,
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
      entry.key: isExpressionEntry(json, entry.key) && entry.value is String
          ? fillExpression(entry.value as String, lookup)
          : resolvePlaceholders(
              entry.value,
              lookup,
              skip: isFilledLater,
              skipEntry: _isFilledByWidget,
              expressionEntry: isExpressionEntry,
            ),
  };
}

/// Whether [json] is filled later than the JSON around it: an action, when it
/// runs, or an `observer`, whenever it builds.
bool isFilledLater(Map<dynamic, dynamic> json) =>
    json.containsKey('actionType') || _isObserver(json);

/// Whether [key] of [json] holds an expression: a `conditional`'s
/// `condition`, or the `expression` of a `setValue` value. Placeholders in it
/// are filled with [fillExpression], so a value such as `Alex Smith` is read
/// as one value.
bool isExpressionEntry(Map<dynamic, dynamic> json, String key) =>
    (key == 'condition' && json['type'] == WidgetType.conditional.name) ||
    (key == 'expression' && json['key'] is String);

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

// Entries a widget fills itself. A `dynamicView` fills its `request` when it
// sends it; filling it earlier too would also fill placeholders inside the
// values put in the first time.
bool _isFilledByWidget(Map<dynamic, dynamic> json, String key) =>
    _isBoundItems(json, key) ||
    (key == 'request' && json['type'] == WidgetType.dynamicView.name);

// A widget with `items` and `itemTemplate` fills the template itself, once
// per entry, so entry fields come before state keys of the same name. Its
// `emptyTemplate` is filled when it's shown, so it reads current state.
bool _isBoundItems(Map<dynamic, dynamic> json, String key) {
  if (key == 'itemTemplate' || key == 'emptyTemplate') {
    return json['items'] != null;
  }
  return key == 'items' &&
      json['itemTemplate'] != null &&
      json[key] is String &&
      singlePlaceholder(json[key] as String) != null;
}
