import 'field_type_table.dart';
import 'values.dart';

/// The kind of value a model field accepts.
enum StacFieldKind {
  /// Text, including enum names and colors. Values are converted to strings.
  text,

  /// A boolean.
  boolean,

  /// A whole number.
  integer,

  /// A decimal number.
  decimal,

  /// Any number.
  number,

  /// A nested model, given as a map or, for some models, a shorthand value.
  model,

  /// A list.
  list,

  /// A map.
  map,

  /// Any JSON value.
  any,
}

/// What a field of a Stac model accepts.
///
/// When a property is a single placeholder, such as `"visible": "{{show}}"`,
/// the placeholder's value is converted to what the field expects with
/// [coerce]: `true` stays a boolean for `visible`, while a number becomes
/// text for `data`. Types come from the generated model code; see
/// `tool/generate_field_types.dart`.
final class StacFieldType {
  const StacFieldType._(this.kind, {this.model, this.element});

  /// A text field.
  static const StacFieldType text = StacFieldType._(StacFieldKind.text);

  /// A field that accepts any value.
  static const StacFieldType any = StacFieldType._(StacFieldKind.any);

  /// The kind of value the field accepts.
  final StacFieldKind kind;

  /// The nested model class, for [StacFieldKind.model] fields.
  final String? model;

  /// The type of each element, for [StacFieldKind.list] fields.
  final StacFieldType? element;

  static final Map<String, StacFieldType> _parsed = {};
  static final Map<String, String> _customWidgets = {};
  static final Map<String, Map<String, String>> _customFields = {};

  /// The model class of the widget whose JSON `type` is [type], such as
  /// `StacText` for `text`, or `null` for widgets without field types.
  static String? widgetModel(String type) {
    return _customWidgets[type] ?? stacWidgetModels[type];
  }

  /// The model class of the action whose `actionType` is [actionType].
  static String? actionModel(String actionType) => stacActionModels[actionType];

  /// The type of a whole [model], for walking into its fields.
  static StacFieldType ofModel(String model) {
    return StacFieldType._(StacFieldKind.model, model: model);
  }

  /// Registers the field types of a custom widget, so bound values reach
  /// its model with the right types.
  ///
  /// [fields] maps JSON keys to `bool`, `int`, `double`, `num`, `map`,
  /// `list` or `any`. Unlisted fields are text.
  static void registerWidget(
    String type, {
    required String model,
    required Map<String, String> fields,
  }) {
    _customWidgets[type] = model;
    _customFields[model] = Map.of(fields);
  }

  /// The model class to read fields from for [model], given the [json] it
  /// is built from. Text styles pick their variant from the `type` key.
  static String modelFor(String model, Map<Object?, Object?> json) {
    if (model == 'StacTextStyle') {
      return json['type'] == 'theme'
          ? 'StacThemeTextStyle'
          : 'StacCustomTextStyle';
    }
    return model;
  }

  /// The type of [field] on [model], or `null` when [model] has no known
  /// field types.
  static StacFieldType? field(String model, String field) {
    final fields = _customFields[model] ?? stacModelFields[model];
    if (fields == null) return null;
    final encoded = fields[field];
    if (encoded == null) return text;
    return _parsed.putIfAbsent(encoded, () => _parse(encoded));
  }

  static StacFieldType _parse(String encoded) {
    if (encoded.startsWith('model ')) {
      return StacFieldType._(StacFieldKind.model, model: encoded.substring(6));
    }
    if (encoded == 'list') {
      return const StacFieldType._(StacFieldKind.list, element: text);
    }
    if (encoded.startsWith('list ')) {
      return StacFieldType._(
        StacFieldKind.list,
        element: _parse(encoded.substring(5)),
      );
    }
    return switch (encoded) {
      'bool' => const StacFieldType._(StacFieldKind.boolean),
      'int' => const StacFieldType._(StacFieldKind.integer),
      'double' => const StacFieldType._(StacFieldKind.decimal),
      'num' => const StacFieldType._(StacFieldKind.number),
      'map' => const StacFieldType._(StacFieldKind.map),
      _ => any,
    };
  }

  /// The type of the value under [key] when this type describes a map.
  ///
  /// Fields of a known model get their own types. Maps of unknown models and
  /// plain maps accept any value.
  StacFieldType keyType(String key, Map<Object?, Object?> json) {
    switch (kind) {
      case StacFieldKind.model:
        final model = this.model;
        if (model == null) return any;
        return field(modelFor(model, json), key) ?? any;
      case StacFieldKind.text:
        return text;
      default:
        return any;
    }
  }

  /// The type of each element when this type describes a list.
  StacFieldType elementType() {
    return switch (kind) {
      StacFieldKind.list => element ?? text,
      StacFieldKind.text => text,
      _ => any,
    };
  }

  /// Converts [value] to what this field accepts.
  ///
  /// Text fields get a string (`null` becomes `''`), boolean fields read
  /// `"true"` and `"false"`, and number fields read numeric strings. Values
  /// that cannot be converted become `null`, so the field uses its default.
  Object? coerce(Object? value) {
    switch (kind) {
      case StacFieldKind.text:
        return stacStringify(value);
      case StacFieldKind.boolean:
        if (value == null || value is bool) return value;
        return stacIsTruthy(value);
      case StacFieldKind.integer:
        final number = stacToNum(value);
        return number != null && number.isFinite ? number.toInt() : null;
      case StacFieldKind.decimal:
        final number = stacToNum(value);
        if (number != null) return number.toDouble();
        return value is String ? value : null;
      case StacFieldKind.number:
        return stacToNum(value) ?? (value is String ? value : null);
      case StacFieldKind.model:
      case StacFieldKind.list:
      case StacFieldKind.map:
      case StacFieldKind.any:
        return value;
    }
  }

  @override
  String toString() {
    return switch (kind) {
      StacFieldKind.model => 'model $model',
      StacFieldKind.list => 'list of $element',
      _ => kind.name,
    };
  }
}
