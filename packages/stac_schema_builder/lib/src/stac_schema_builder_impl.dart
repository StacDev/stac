import 'dart:collection';

import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:build/build.dart';
import 'package:glob/glob.dart';

class StacSchemaBuilder implements Builder {
  @override
  Map<String, List<String>> get buildExtensions => const {
    r'$package$': ['lib/src/generated/stac_schemas.g.dart'],
  };

  @override
  Future<void> build(BuildStep buildStep) async {
    final generatedAssetId = AssetId(
      buildStep.inputId.package,
      'lib/src/generated/stac_schemas.g.dart',
    );

    final schemaInfos = <_SchemaInfo>[];
    final enumValues = <String, List<String>>{};

    await for (final assetId in buildStep.findAssets(Glob('lib/**.dart'))) {
      final path = assetId.path;
      if (path.endsWith('.g.dart') || path.endsWith('.freezed.dart')) continue;

      final content = await buildStep.readAsString(assetId);
      final parseResult = parseString(content: content, throwIfDiagnostics: false);
      final declarations = <String, ClassDeclaration>{};
      for (final declaration in parseResult.unit.declarations) {
        if (declaration is ClassDeclaration) {
          declarations[declaration.name.lexeme] = declaration;
        }
        if (declaration is EnumDeclaration) {
          enumValues[declaration.name.lexeme] = declaration.constants
              .map((constant) => constant.name.lexeme)
              .toList(growable: false);
        }
      }

      for (final entry in declarations.entries) {
        final classNode = entry.value;
        final className = entry.key;
        if (!_hasAnnotation(classNode, 'JsonSerializable')) continue;
        if (className == 'StacWidget' || className == 'StacAction') {
          continue;
        }
        if (classNode.abstractKeyword != null) continue;

        final superType = classNode.extendsClause?.superclass.toSource();
        final isWidget = superType != null && superType.startsWith('StacWidget');
        final isAction = superType != null && superType.startsWith('StacAction');
        if (!isWidget && !isAction) continue;

        final discriminatorName = isWidget ? 'type' : 'actionType';
        final discriminatorValue = _extractDiscriminatorValue(
          classNode: classNode,
          getterName: discriminatorName,
        );
        if (discriminatorValue == null || discriminatorValue.isEmpty) continue;

        final schema = _buildClassSchema(
          classNode: classNode,
          discriminatorName: discriminatorName,
          discriminatorValue: discriminatorValue,
          enumValues: enumValues,
        );

        schemaInfos.add(
          _SchemaInfo(
            className: className,
            constName: _schemaConstName(className),
            key: discriminatorValue,
            schema: schema,
            isWidget: isWidget,
          ),
        );
      }
    }

    schemaInfos.sort((a, b) => a.key.compareTo(b.key));

    final widgetSchemaByKey = LinkedHashMap<String, _SchemaInfo>();
    final actionSchemaByKey = LinkedHashMap<String, _SchemaInfo>();
    for (final schema in schemaInfos) {
      if (schema.isWidget) {
        widgetSchemaByKey[schema.key] = schema;
      } else {
        actionSchemaByKey[schema.key] = schema;
      }
    }
    final widgetSchemas = widgetSchemaByKey.values.toList(growable: false);
    final actionSchemas = actionSchemaByKey.values.toList(growable: false);

    final buffer = StringBuffer()
      ..writeln('// GENERATED CODE - DO NOT MODIFY BY HAND')
      ..writeln()
      ..writeln(
        '// ignore_for_file: constant_identifier_names, public_member_api_docs',
      )
      ..writeln()
      ..writeln('const String stacSchemaDraft = ')
      ..writeln("    'https://json-schema.org/draft/2020-12/schema';")
      ..writeln();

    for (final schemaInfo in schemaInfos) {
      buffer
        ..writeln('const Map<String, dynamic> ${schemaInfo.constName} = ')
        ..writeln('${_toDartLiteral(schemaInfo.schema)};')
        ..writeln();
    }

    buffer
      ..writeln(
        'const Map<String, Map<String, dynamic>> stacGeneratedWidgetSchemas = <String, Map<String, dynamic>>{',
      );
    for (final schemaInfo in widgetSchemas) {
      buffer.writeln("  '${schemaInfo.key}': ${schemaInfo.constName},");
    }
    buffer
      ..writeln('};')
      ..writeln()
      ..writeln(
        'const Map<String, Map<String, dynamic>> stacGeneratedActionSchemas = <String, Map<String, dynamic>>{',
      );
    for (final schemaInfo in actionSchemas) {
      buffer.writeln("  '${schemaInfo.key}': ${schemaInfo.constName},");
    }
    buffer.writeln('};');

    await buildStep.writeAsString(generatedAssetId, buffer.toString());
  }

  Map<String, dynamic> _buildClassSchema({
    required ClassDeclaration classNode,
    required String discriminatorName,
    required String discriminatorValue,
    required Map<String, List<String>> enumValues,
  }) {
    final properties = LinkedHashMap<String, dynamic>();
    final required = <String>[discriminatorName];

    properties[discriminatorName] = {'const': discriminatorValue};

    for (final member in classNode.members) {
      if (member is! FieldDeclaration || member.isStatic) continue;
      final declaredType = member.fields.type?.toSource() ?? 'dynamic';
      for (final variable in member.fields.variables) {
        final name = variable.name.lexeme;
        if (name.startsWith('_')) continue;
        if (name == discriminatorName) continue;
        properties[name] = _schemaForTypeName(declaredType, enumValues);
      }
    }

    return <String, dynamic>{
      r'$schema': 'https://json-schema.org/draft/2020-12/schema',
      'type': 'object',
      'additionalProperties': false,
      'properties': properties,
      'required': required,
      r'$defs': const {
        'stacWidget': {
          'type': 'object',
          'properties': {
            'type': {'type': 'string'},
          },
          'required': ['type'],
        },
        'stacAction': {
          'type': 'object',
          'properties': {
            'actionType': {'type': 'string'},
          },
          'required': ['actionType'],
        },
      },
    };
  }

  bool _hasAnnotation(ClassDeclaration classNode, String annotationName) {
    for (final metadata in classNode.metadata) {
      final name = metadata.name.toSource();
      if (name == annotationName || name.endsWith('.$annotationName')) {
        return true;
      }
    }
    return false;
  }

  Map<String, dynamic> _schemaForTypeName(
    String rawType,
    Map<String, List<String>> enumValues,
  ) {
    final typeName = rawType.replaceAll(' ', '');
    final isNullable = typeName.endsWith('?');
    final baseType = isNullable ? typeName.substring(0, typeName.length - 1) : typeName;
    final base = _schemaForNonNullableTypeName(baseType, enumValues);
    if (!isNullable) return base;

    if (base.containsKey('type') && base['type'] is String) {
      return <String, dynamic>{
        ...base,
        'type': <String>[base['type'] as String, 'null'],
      };
    }
    return <String, dynamic>{
      'anyOf': <dynamic>[
        base,
        {'type': 'null'},
      ],
    };
  }

  Map<String, dynamic> _schemaForNonNullableTypeName(
    String typeName,
    Map<String, List<String>> enumValues,
  ) {
    if (typeName == 'String') return {'type': 'string'};
    if (typeName == 'bool') return {'type': 'boolean'};
    if (typeName == 'int') return {'type': 'integer'};
    if (typeName == 'double' || typeName == 'num') return {'type': 'number'};
    if (typeName == 'dynamic' || typeName == 'Object') return {};

    if (typeName == 'StacWidget' || typeName.startsWith('StacWidget<')) {
      return {r'$ref': '#/\$defs/stacWidget'};
    }
    if (typeName == 'StacAction' || typeName.startsWith('StacAction<')) {
      return {r'$ref': '#/\$defs/stacAction'};
    }

    if (typeName.startsWith('List<') && typeName.endsWith('>')) {
      final itemType = typeName.substring(5, typeName.length - 1);
      return <String, dynamic>{
        'type': 'array',
        'items': _schemaForTypeName(itemType, enumValues),
      };
    }

    if (typeName.startsWith('Map<') && typeName.endsWith('>')) {
      final inner = typeName.substring(4, typeName.length - 1);
      final commaIndex = inner.indexOf(',');
      if (commaIndex == -1) {
        return <String, dynamic>{'type': 'object'};
      }
      final valueType = inner.substring(commaIndex + 1);
      return <String, dynamic>{
        'type': 'object',
        'additionalProperties': _schemaForTypeName(valueType, enumValues),
      };
    }

    final enumEntries = enumValues[typeName];
    if (enumEntries != null) {
      return <String, dynamic>{
        'type': 'string',
        'enum': enumEntries,
      };
    }

    return {'type': 'object'};
  }

  String? _extractDiscriminatorValue({
    required ClassDeclaration classNode,
    required String getterName,
  }) {
    for (final member in classNode.members) {
      if (member is! MethodDeclaration) continue;
      if (!member.isGetter || member.name.lexeme != getterName) continue;
      return _extractStringValueFromFunctionBody(member.body);
    }
    return null;
  }

  String? _extractStringValueFromFunctionBody(FunctionBody body) {
    if (body is ExpressionFunctionBody) {
      return _extractStringValueFromExpression(body.expression);
    }
    if (body is BlockFunctionBody) {
      for (final statement in body.block.statements) {
        if (statement is ReturnStatement && statement.expression != null) {
          return _extractStringValueFromExpression(statement.expression!);
        }
      }
    }
    return null;
  }

  String? _extractStringValueFromExpression(Expression expression) {
    if (expression is SimpleStringLiteral) {
      return expression.value;
    }

    if (expression is PropertyAccess && expression.propertyName.name == 'name') {
      final target = expression.target;
      if (target is PropertyAccess) return target.propertyName.name;
      if (target is PrefixedIdentifier) return target.identifier.name;
    }

    if (expression is PrefixedIdentifier && expression.identifier.name == 'name') {
      return expression.prefix.name;
    }

    return null;
  }

  static String _schemaConstName(String className) {
    if (className.isEmpty) return r'$stacUnknownSchema';
    final firstLower = className[0].toLowerCase();
    final suffix = className.length > 1 ? className.substring(1) : '';
    return '\$${firstLower}${suffix}JsonSchema';
  }

  String _toDartLiteral(dynamic value, {bool treatStringAsIdentifier = false}) {
    if (value == null) return 'null';
    if (value is bool || value is num) return value.toString();
    if (value is String) {
      if (treatStringAsIdentifier) return value;
      final escaped = value
          .replaceAll(r'$', r'\$')
          .replaceAll("'", r"\'");
      return "'$escaped'";
    }
    if (value is List) {
      final items = value.map((item) => _toDartLiteral(item)).join(', ');
      return '<dynamic>[$items]';
    }
    if (value is Map) {
      final entries = value.entries
          .map(
            (entry) => '${_toDartLiteral(entry.key)}: '
                '${_toDartLiteral(entry.value, treatStringAsIdentifier: treatStringAsIdentifier)}',
          )
          .join(', ');
      return '<String, dynamic>{$entries}';
    }
    final escaped = value
        .toString()
        .replaceAll(r'$', r'\$')
        .replaceAll("'", r"\'");
    return "'$escaped'";
  }
}

class _SchemaInfo {
  const _SchemaInfo({
    required this.className,
    required this.constName,
    required this.key,
    required this.schema,
    required this.isWidget,
  });

  final String className;
  final String constName;
  final String key;
  final Map<String, dynamic> schema;
  final bool isWidget;
}
