// Generates lib/expressions/field_type_table.dart from the generated
// `fromJson` functions of the stac_core models.
//
// Run from packages/stac_core:
//
//   dart run tool/generate_field_types.dart
//
// test/expressions/field_types_test.dart fails when the checked-in table is
// out of date.

import 'dart:io';

const String outputPath = 'lib/expressions/field_type_table.dart';

void main() {
  final output = generateFieldTypeTable(Directory.current.path);
  File('${Directory.current.path}/$outputPath').writeAsStringSync(output);
  stdout.writeln('Wrote $outputPath');
}

/// Builds the table source for the stac_core package at [packageRoot].
String generateFieldTypeTable(String packageRoot) {
  final lib = Directory('$packageRoot/lib');
  final sources =
      lib
          .listSync(recursive: true)
          .whereType<File>()
          .where((file) => file.path.endsWith('.dart'))
          .toList()
        ..sort((a, b) => a.path.compareTo(b.path));

  final fields = <String, Map<String, String>>{};
  final widgets = <String, String>{};
  final actions = <String, String>{};
  final unclassified = <String>[];

  for (final file in sources) {
    final source = file.readAsStringSync();
    if (file.path.endsWith('.g.dart')) {
      _readFromJsonFunctions(source, fields, unclassified);
    } else {
      _readTypeGetters(source, widgets, actions);
    }
  }

  if (unclassified.isNotEmpty) {
    throw StateError(
      'Unrecognised fromJson expressions; teach the generator about them:\n'
      '${unclassified.join('\n')}',
    );
  }

  final buffer = StringBuffer()
    ..writeln('// GENERATED CODE - DO NOT MODIFY BY HAND.')
    ..writeln(
      '// Run `dart run tool/generate_field_types.dart` in packages/stac_core.',
    )
    ..writeln()
    ..writeln(
      '/// Model classes of the built-in widgets, keyed by widget `type`.',
    )
    ..writeln('const Map<String, String> stacWidgetModels = {');
  for (final entry in _sorted(widgets)) {
    buffer.writeln("  '${entry.key}': '${entry.value}',");
  }
  buffer
    ..writeln('};')
    ..writeln()
    ..writeln(
      '/// Model classes of the built-in actions, keyed by `actionType`.',
    )
    ..writeln('const Map<String, String> stacActionModels = {');
  for (final entry in _sorted(actions)) {
    buffer.writeln("  '${entry.key}': '${entry.value}',");
  }
  buffer
    ..writeln('};')
    ..writeln()
    ..writeln(
      '/// Field types of every model with a generated `fromJson`, keyed by '
      'model class',
    )
    ..writeln('/// and then by JSON key.')
    ..writeln('///')
    ..writeln(
      '/// Text and enum fields are omitted. The other types are `bool`, '
      '`int`, `double`,',
    )
    ..writeln(
      '/// `num`, `map`, `any`, `model <Class>`, `list` and '
      '`list <element type>`.',
    )
    ..writeln('const Map<String, Map<String, String>> stacModelFields = {');
  for (final model in _sorted(fields)) {
    final entries = _sorted(
      model.value,
    ).map((field) => "'${field.key}': '${field.value}'").toList();
    // Match `dart format`: a map that fits in 80 columns stays on one line.
    final singleLine = "  '${model.key}': {${entries.join(', ')}},";
    if (singleLine.length <= 80) {
      buffer.writeln(singleLine);
      continue;
    }
    buffer.writeln("  '${model.key}': {");
    for (final entry in entries) {
      buffer.writeln('    $entry,');
    }
    buffer.writeln('  },');
  }
  buffer.writeln('};');
  return buffer.toString();
}

List<MapEntry<String, V>> _sorted<V>(Map<String, V> map) {
  return map.entries.toList()..sort((a, b) => a.key.compareTo(b.key));
}

final RegExp _fromJsonFunction = RegExp(
  r'(\w+) _\$(\w+)FromJson\(\s*Map<String, dynamic> json,?\s*\)\s*=>\s*\w+\(',
);

void _readFromJsonFunctions(
  String source,
  Map<String, Map<String, String>> fields,
  List<String> unclassified,
) {
  for (final match in _fromJsonFunction.allMatches(source)) {
    final model = match.group(2)!;
    final modelFields = fields.putIfAbsent(model, () => {});
    for (final argument in _topLevelArguments(source, match.end)) {
      final separator = argument.indexOf(':');
      if (separator < 0) continue;
      final name = argument.substring(0, separator).trim();
      final expression = argument
          .substring(separator + 1)
          .replaceAll(RegExp(r'\s+'), ' ')
          .trim();
      final type = _classify(expression, unclassified, '$model.$name');
      if (type != null) modelFields[name] = type;
    }
  }
}

/// Splits the argument list that starts at [start] (just after `(`) on its
/// top-level commas, ignoring commas inside brackets and string literals.
List<String> _topLevelArguments(String source, int start) {
  final arguments = <String>[];
  final current = StringBuffer();
  var depth = 1;
  String? quote;
  for (var i = start; i < source.length; i++) {
    final char = source[i];
    if (quote != null) {
      current.write(char);
      if (char == r'\' && i + 1 < source.length) {
        current.write(source[++i]);
      } else if (char == quote) {
        quote = null;
      }
      continue;
    }
    if (char == "'" || char == '"') {
      quote = char;
      current.write(char);
      continue;
    }
    final previous = i > 0 ? source[i - 1] : '';
    final next = i + 1 < source.length ? source[i + 1] : '';
    // Angle brackets are type arguments here, except in `=>`, `>=` and `<=`.
    final opens = '([{'.contains(char) || (char == '<' && next != '=');
    final closes =
        ')]}'.contains(char) || (char == '>' && previous != '=' && next != '=');
    if (opens) depth++;
    if (closes) {
      depth--;
      if (depth == 0) break;
    }
    if (char == ',' && depth == 1) {
      arguments.add(current.toString());
      current.clear();
      continue;
    }
    current.write(char);
  }
  if (current.toString().trim().isNotEmpty) arguments.add(current.toString());
  return arguments;
}

final RegExp _modelCall = RegExp(r'(\w+)\.fromJson\(');

String? _classify(String expression, List<String> unclassified, String where) {
  // Drop a default such as ` ?? false` or ` ?? 999`.
  final e = expression
      .replaceAll(RegExp(r"json\['\w+'\]"), 'J')
      .replaceFirst(RegExp(r' \?\? [^?]*$'), '');
  if (RegExp(r'^J as String\??$').hasMatch(e)) return null;
  if (e.startsWith(r'$enumDecode')) return null;
  if (RegExp(r'^J as bool\??$').hasMatch(e)) return 'bool';
  if (RegExp(r'^J as int\??$').hasMatch(e)) return 'int';
  if (RegExp(r'^J as double\??$').hasMatch(e)) return 'double';
  if (RegExp(r'^J as num\??$').hasMatch(e)) return 'num';
  if (RegExp(r'^\(J as num\??\) ?\??\.toInt\(\)$').hasMatch(e)) return 'int';
  if (RegExp(r'^\(J as num\??\) ?\??\.toDouble\(\)$').hasMatch(e)) {
    return 'double';
  }
  if (e.contains('DoubleConverter().fromJson(')) return 'double';
  if (RegExp(r'^\(?J as List<dynamic>\??\)?').hasMatch(e)) {
    final element = RegExp(r'\.map\(\s*\(e\) => (.*)\)').firstMatch(e);
    if (element == null) return 'list';
    final body = element.group(1)!;
    final model = _modelCall.firstMatch(body);
    if (model != null) return 'list model ${model.group(1)}';
    if (body.startsWith('e as String')) return 'list';
    if (body.startsWith('e as bool')) return 'list bool';
    if (body.contains('toDouble()')) return 'list double';
    if (body.contains('toInt()')) return 'list int';
    return 'list';
  }
  if (RegExp(r'^\(?J as Map<String, dynamic>\??\)?').hasMatch(e)) return 'map';
  if (e == 'J') return 'any';
  final model = _modelCall.firstMatch(e);
  if (model != null) return 'model ${model.group(1)}';
  unclassified.add('  $where: $expression');
  return null;
}

final RegExp _classDeclaration = RegExp(
  r'^(?:abstract |sealed |final |base )*class (\w+)',
  multiLine: true,
);
final RegExp _widgetType = RegExp(
  r"String get type =>\s*(?:WidgetType\.(\w+)\.name|'(\w+)')\s*;",
);
final RegExp _actionType = RegExp(
  r'String get actionType =>\s*ActionType\.(\w+)\.name\s*;',
);

void _readTypeGetters(
  String source,
  Map<String, String> widgets,
  Map<String, String> actions,
) {
  final classes = _classDeclaration.allMatches(source).toList();
  String? classAt(int offset) {
    String? name;
    for (final declaration in classes) {
      if (declaration.start > offset) break;
      name = declaration.group(1);
    }
    return name;
  }

  for (final match in _widgetType.allMatches(source)) {
    final name = classAt(match.start);
    final type = match.group(1) ?? match.group(2)!;
    if (name != null) widgets.putIfAbsent(type, () => name);
  }
  for (final match in _actionType.allMatches(source)) {
    final name = classAt(match.start);
    if (name != null) actions.putIfAbsent(match.group(1)!, () => name);
  }
}
