import 'evaluator.dart';
import 'field_types.dart';
import 'scope_reader.dart';
import 'template.dart';

/// Decides whether a JSON `type` value names a registered widget.
typedef StacWidgetTypePredicate = bool Function(String type);

/// Resolves `{{ }}` placeholders inside Stac widget and action JSON.
///
/// Placeholders are resolved as late as possible, so each one sees the data
/// it is meant for:
///
/// * **Widget nodes** ([resolveNode]) resolve their own properties when they
///   build. Nested widgets resolve when they build, actions when they run,
///   and item templates when item data is applied. A `conditional` widget's
///   `condition`, `setValue` values and `stateScope` state are left for their
///   parsers.
/// * **Actions** ([resolveAction]) resolve when they run. `setValue` values
///   are left for its parser, which applies them one at a time.
/// * **Item templates** ([resolveTemplate]) receive list item data. Inside
///   actions and `setValue` widgets only the item data is substituted;
///   everything else waits for the widget or action.
/// * **Values** ([resolveValue]) resolve with types preserved, for slots that
///   accept any JSON value.
///
/// A property that is a single placeholder, such as `"visible": "{{show}}"`,
/// gets the type its model field expects (see [StacFieldType]). Properties
/// that mix text and placeholders are text.
class StacJsonResolver {
  /// Creates a resolver.
  ///
  /// [isWidgetType] tells which nested maps are widgets. Without it, the
  /// built-in widget types are recognised.
  StacJsonResolver({
    this.isWidgetType,
    this.evaluator = const StacExpressionEvaluator(),
    this.onError,
  });

  /// Whether a `type` value names a widget.
  final StacWidgetTypePredicate? isWidgetType;

  /// The evaluator used for placeholder expressions.
  final StacExpressionEvaluator evaluator;

  /// Called when a placeholder cannot be parsed or evaluated.
  final StacTemplateErrorHandler? onError;

  final Expando<bool> _bindings = Expando('stacBindings');

  static const String _typeKey = 'type';
  static const String _actionTypeKey = 'actionType';
  static const String _conditionalType = 'conditional';
  static const String _conditionKey = 'condition';
  static const String _setValueType = 'setValue';
  static const String _valuesKey = 'values';
  static const String _stateScopeType = 'stateScope';
  static const String _stateKey = 'state';
  static const String _dynamicViewType = 'dynamicView';
  static const String _templateKey = 'template';
  static const String _itemTemplateKey = 'itemTemplate';
  static const String _forEachType = 'forEach';

  /// Whether the widget node [json] has anything to resolve before it builds:
  /// a placeholder in its own properties, a condition, or a `forEach` in one
  /// of its lists of widgets, whose items the node reads while it builds.
  ///
  /// The answer is cached per map, so JSON is treated as immutable.
  bool hasBindings(Map<String, dynamic> json) {
    return _bindings[json] ??= _computeHasBindings(json);
  }

  bool _computeHasBindings(Map<String, dynamic> json) {
    final type = json[_typeKey];
    if (type == _conditionalType) return true;
    for (final entry in json.entries) {
      if (_skipInNode(type, entry.key)) continue;
      final value = entry.value;
      if (_hasOwnPlaceholder(value)) return true;
      if (value is List && value.any(_isForEach)) return true;
    }
    return false;
  }

  static bool _isForEach(Object? value) {
    return value is Map && value[_typeKey] == _forEachType;
  }

  bool _hasOwnPlaceholder(Object? value) {
    if (value is String) return StacTemplate.hasPlaceholderSyntax(value);
    if (value is Map) {
      if (_isAction(value) || _isWidget(value)) return false;
      return value.values.any(_hasOwnPlaceholder);
    }
    if (value is List) return value.any(_hasOwnPlaceholder);
    return false;
  }

  /// Resolves the placeholders in the own properties of the widget node
  /// [json].
  ///
  /// Nested widgets, actions and item templates are returned as the same
  /// instances, so they keep their identity across rebuilds. Returns [json]
  /// itself when nothing changed.
  Map<String, dynamic> resolveNode(
    Map<String, dynamic> json,
    StacScopeReader scope,
  ) {
    final type = json[_typeKey];
    final ownType = type is String ? type : null;
    final model = ownType == null ? null : StacFieldType.widgetModel(ownType);
    final shape = model == null ? null : StacFieldType.ofModel(model);
    Map<String, dynamic>? result;
    json.forEach((key, value) {
      if (_skipInNode(ownType, key)) return;
      final resolved = _resolve(
        value,
        scope,
        shape?.keyType(key, json),
        deferMisses: false,
      );
      if (!identical(resolved, value)) {
        (result ??= Map<String, dynamic>.of(json))[key] = resolved;
      }
    });
    return result ?? json;
  }

  /// Resolves placeholders in action JSON just before the action runs.
  ///
  /// Nested actions and widgets are left alone: they resolve when they run
  /// or build.
  Map<String, dynamic> resolveAction(
    Map<String, dynamic> json,
    StacScopeReader scope,
  ) {
    final actionType = json[_actionTypeKey];
    final model = actionType is String
        ? StacFieldType.actionModel(actionType)
        : null;
    final shape = model == null ? null : StacFieldType.ofModel(model);
    Map<String, dynamic>? result;
    json.forEach((key, value) {
      if (actionType == _setValueType && key == _valuesKey) return;
      final resolved = _resolve(
        value,
        scope,
        shape?.keyType(key, json),
        deferMisses: false,
      );
      if (!identical(resolved, value)) {
        (result ??= Map<String, dynamic>.of(json))[key] = resolved;
      }
    });
    return result ?? json;
  }

  /// Resolves an item template against list item data.
  ///
  /// [data] reads only the item; [scope] reads the item and then everything
  /// else. Placeholders that cannot be resolved yet are kept for later. The
  /// `itemTemplate` of a nested widget is left alone, since it is resolved
  /// for each of its own items.
  Object? resolveTemplate(
    Object? json, {
    required StacScopeReader data,
    required StacScopeReader scope,
  }) {
    return _template(json, data, scope, false, null, null, null);
  }

  /// Resolves [value] with types preserved: a string that is exactly one
  /// placeholder becomes the placeholder's value. Maps and lists are
  /// resolved recursively; nested widgets and actions are left alone.
  Object? resolveValue(Object? value, StacScopeReader scope) {
    return _resolve(value, scope, StacFieldType.any, deferMisses: false);
  }

  Object? _resolve(
    Object? value,
    StacScopeReader scope,
    StacFieldType? type, {
    required bool deferMisses,
  }) {
    if (value is String) return _string(value, scope, type, deferMisses);
    if (value is Map) {
      if (_isAction(value) || _isWidget(value)) return value;
      Map<String, dynamic>? result;
      for (final entry in value.entries) {
        final key = entry.key.toString();
        final resolved = _resolve(
          entry.value,
          scope,
          type?.keyType(key, value),
          deferMisses: deferMisses,
        );
        if (!identical(resolved, entry.value)) {
          (result ??= _copyMap(value))[key] = resolved;
        }
      }
      return result ?? value;
    }
    if (value is List) {
      final elementType = type?.elementType();
      List<dynamic>? result;
      for (var i = 0; i < value.length; i++) {
        final resolved = _resolve(
          value[i],
          scope,
          elementType,
          deferMisses: deferMisses,
        );
        if (!identical(resolved, value[i])) {
          (result ??= List<dynamic>.of(value))[i] = resolved;
        }
      }
      return result ?? value;
    }
    return value;
  }

  Object? _template(
    Object? value,
    StacScopeReader data,
    StacScopeReader scope,
    bool dataOnly,
    StacFieldType? type,
    String? ownerType,
    String? key,
  ) {
    final active = dataOnly ? data : scope;
    if (value is String) {
      if (ownerType == _conditionalType && key == _conditionKey) {
        if (!StacTemplate.hasPlaceholderSyntax(value)) return value;
        return StacTemplate.parse(value).resolve(
          active,
          mode: StacTemplateMode.expression,
          deferMisses: true,
          evaluator: evaluator,
          onError: onError,
        );
      }
      return _string(value, active, type, true);
    }
    if (value is Map) {
      final rawType = value[_typeKey];
      final actionType = value[_actionTypeKey];
      final isAction = actionType is String;
      final widgetType =
          !isAction && rawType is String && _isWidgetName(rawType)
          ? rawType
          : null;
      StacFieldType? shape = type;
      if (isAction) {
        final model = StacFieldType.actionModel(actionType);
        shape = model == null ? null : StacFieldType.ofModel(model);
      } else if (widgetType != null) {
        final model = StacFieldType.widgetModel(widgetType);
        shape = model == null ? null : StacFieldType.ofModel(model);
      }
      final childDataOnly = dataOnly || isAction || widgetType == _setValueType;
      Map<String, dynamic>? result;
      for (final entry in value.entries) {
        final childKey = entry.key.toString();
        // A nested item template is resolved for each of its own items,
        // where `$item` means that item.
        if (widgetType != null && childKey == _itemTemplateKey) continue;
        final resolved = _template(
          entry.value,
          data,
          scope,
          childDataOnly,
          shape?.keyType(childKey, value),
          widgetType,
          childKey,
        );
        if (!identical(resolved, entry.value)) {
          (result ??= _copyMap(value))[childKey] = resolved;
        }
      }
      return result ?? value;
    }
    if (value is List) {
      final elementType = type?.elementType();
      List<dynamic>? result;
      for (var i = 0; i < value.length; i++) {
        final resolved = _template(
          value[i],
          data,
          scope,
          dataOnly,
          elementType,
          null,
          null,
        );
        if (!identical(resolved, value[i])) {
          (result ??= List<dynamic>.of(value))[i] = resolved;
        }
      }
      return result ?? value;
    }
    return value;
  }

  Object? _string(
    String value,
    StacScopeReader scope,
    StacFieldType? type,
    bool deferMisses,
  ) {
    if (!StacTemplate.hasPlaceholderSyntax(value)) return value;
    final template = StacTemplate.parse(value);
    final typed = type != null && type.kind != StacFieldKind.text;
    final resolved = template.resolve(
      scope,
      mode: typed ? StacTemplateMode.typed : StacTemplateMode.text,
      deferMisses: deferMisses,
      evaluator: evaluator,
      onError: onError,
    );
    if (!typed || identical(resolved, value)) return resolved;
    return type.coerce(resolved);
  }

  static bool _skipInNode(Object? type, String key) {
    return key == _itemTemplateKey ||
        (type == _dynamicViewType && key == _templateKey) ||
        (type == _conditionalType && key == _conditionKey) ||
        (type == _setValueType && key == _valuesKey) ||
        (type == _stateScopeType && key == _stateKey);
  }

  bool _isAction(Map value) => value[_actionTypeKey] is String;

  bool _isWidget(Map value) {
    final type = value[_typeKey];
    return type is String && _isWidgetName(type);
  }

  bool _isWidgetName(String type) {
    final predicate = isWidgetType;
    if (predicate != null) return predicate(type);
    return StacFieldType.widgetModel(type) != null;
  }

  static Map<String, dynamic> _copyMap(Map value) {
    return <String, dynamic>{
      for (final entry in value.entries) entry.key.toString(): entry.value,
    };
  }
}
