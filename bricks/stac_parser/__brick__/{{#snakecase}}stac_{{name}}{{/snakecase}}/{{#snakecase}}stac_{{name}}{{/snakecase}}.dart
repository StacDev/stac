import 'package:freezed_annotation/freezed_annotation.dart';

part '{{#snakeCase}}stac_{{name}}{{/snakeCase}}.freezed.dart';
part '{{#snakeCase}}stac_{{name}}{{/snakeCase}}.g.dart';

@freezed
class Stac{{#pascalCase}}{{name}}{{/pascalCase}} with _$Stac{{#pascalCase}}{{name}}{{/pascalCase}} {
  const factory Stac{{#pascalCase}}{{name}}{{/pascalCase}}() = _Stac{{#pascalCase}}{{name}}{{/pascalCase}};

  factory Stac{{#pascalCase}}{{name}}{{/pascalCase}}.fromJson(Map<String, dynamic> json) => _$Stac{{#pascalCase}}{{name}}{{/pascalCase}}FromJson(json);
}
