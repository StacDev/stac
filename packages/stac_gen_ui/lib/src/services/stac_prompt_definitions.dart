import 'package:stac_core/stac_core.dart';

/// Builds prompt-safe, human-readable widget outlines from generated schemas.
String buildWidgetOutlineInstructions() {
  final keys = stacGeneratedWidgetSchemas.keys.toList()..sort();
  final buffer = StringBuffer()
    ..writeln('## Available Widget Types (Schema-derived Outline)')
    ..writeln(
      'This is a compact outline of valid fields and value shapes. '
      'Use only keys listed for each widget.',
    )
    ..writeln();

  for (final key in keys) {
    final schema = stacGeneratedWidgetSchemas[key];
    if (schema == null) continue;
    final outline = _buildTypeOutline(
      schema: schema,
      discriminatorField: 'type',
      discriminatorValue: key,
    );
    buffer.writeln('- $key: $outline');
  }

  buffer
    ..writeln()
    ..writeln('Critical rules:')
    ..writeln('- Every widget object MUST include `type`.')
    ..writeln('- Do not invent keys outside these outlines.');

  return buffer.toString().trim();
}

/// Builds prompt-safe, human-readable action outlines from generated schemas.
String buildActionOutlineInstructions() {
  final keys = stacGeneratedActionSchemas.keys.toList()..sort();
  final buffer = StringBuffer()
    ..writeln('## Available Action Types (Schema-derived Outline)')
    ..writeln(
      'Each action is a JSON object. Include `actionType` and use only listed keys.',
    )
    ..writeln();

  for (final key in keys) {
    final schema = stacGeneratedActionSchemas[key];
    if (schema == null) continue;
    final outline = _buildTypeOutline(
      schema: schema,
      discriminatorField: 'actionType',
      discriminatorValue: key,
    );
    buffer.writeln('- $key: $outline');
  }

  buffer
    ..writeln()
    ..writeln(
      'Every action object MUST include `actionType` and match one of these types.',
    );

  return buffer.toString().trim();
}

String _buildTypeOutline({
  required Map<String, dynamic> schema,
  required String discriminatorField,
  required String discriminatorValue,
}) {
  final properties =
      (schema['properties'] as Map?)?.cast<String, dynamic>() ??
      const <String, dynamic>{};
  final fields = <String>['$discriminatorField:String (`$discriminatorValue`)'];

  final names = properties.keys.where((name) => name != discriminatorField).toList()
    ..sort();

  for (final name in names) {
    final prop = properties[name];
    if (prop is! Map) continue;
    final normalized = Map<String, dynamic>.from(prop);
    final typeLabel = _typeLabel(normalized);
    fields.add('$name?:$typeLabel');
  }

  return fields.join(', ');
}

String _typeLabel(Map<String, dynamic> schema) {
  final enumValues = (schema['enum'] as List?)?.map((e) => '$e').toList();
  if (schema.containsKey(r'$ref')) {
    return _refLabel(schema[r'$ref'] as String, enumValues: enumValues);
  }

  final anyOf = schema['anyOf'];
  if (anyOf is List && anyOf.isNotEmpty) {
    final labels = <String>{};
    for (final candidate in anyOf) {
      if (candidate is! Map) continue;
      final candidateMap = Map<String, dynamic>.from(candidate);
      if (candidateMap['type'] == 'null') continue;
      labels.add(_typeLabel(candidateMap));
    }
    if (labels.isNotEmpty) {
      return labels.join('|');
    }
  }

  final typeValue = schema['type'];
  if (typeValue is List) {
    final labels = typeValue
        .where((value) => value != 'null')
        .map((value) => _primitiveLabel('$value'))
        .toList();
    if (labels.isEmpty) return 'dynamic';
    if (labels.length == 1) {
      return _withEnum(labels.first, enumValues);
    }
    return _withEnum(labels.join('|'), enumValues);
  }

  if (typeValue is String) {
    if (typeValue == 'array') {
      final items = schema['items'];
      if (items is Map) {
        final itemType = _typeLabel(Map<String, dynamic>.from(items));
        return 'List<$itemType>';
      }
      return 'List<dynamic>';
    }
    if (typeValue == 'object') {
      final additional = schema['additionalProperties'];
      if (additional is Map) {
        final valueType = _typeLabel(Map<String, dynamic>.from(additional));
        return 'Map<String,$valueType>';
      }
    }
    return _withEnum(_primitiveLabel(typeValue), enumValues);
  }

  return _withEnum('dynamic', enumValues);
}

String _refLabel(String ref, {List<String>? enumValues}) {
  if (ref.endsWith('/stacWidget')) return 'StacWidget';
  if (ref.endsWith('/stacAction')) return 'Action';
  return _withEnum('Map', enumValues);
}

String _primitiveLabel(String type) {
  switch (type) {
    case 'string':
      return 'String';
    case 'integer':
      return 'int';
    case 'number':
      return 'num';
    case 'boolean':
      return 'bool';
    case 'object':
      return 'Map';
    default:
      return 'dynamic';
  }
}

String _withEnum(String base, List<String>? enumValues) {
  if (enumValues == null || enumValues.isEmpty) return base;
  final joined = enumValues.join('|');
  return '$base (`$joined`)';
}
