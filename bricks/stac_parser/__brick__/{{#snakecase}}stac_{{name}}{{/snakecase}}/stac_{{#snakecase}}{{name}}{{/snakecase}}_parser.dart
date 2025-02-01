import 'package:flutter/material.dart';
import 'package:stac/stac.dart';

class Stac{{#pascalCase}}{{name}}{{/pascalCase}}Parser extends StacParser<Stac{{#pascalCase}}{{name}}{{/pascalCase}}> {
  @override
  Stac{{#pascalCase}}{{name}}{{/pascalCase}} getModel(Map<String, dynamic> json) => Stac{{#pascalCase}}{{name}}{{/pascalCase}}.fromJson(json);

  @override
  // TODO: implement type
  String get type => throw UnimplementedError();

  @override
  Widget parse(BuildContext context, Stac{{#pascalCase}}{{name}}{{/pascalCase}} model) {
    // TODO: implement widget
    throw UnimplementedError();
  }
}