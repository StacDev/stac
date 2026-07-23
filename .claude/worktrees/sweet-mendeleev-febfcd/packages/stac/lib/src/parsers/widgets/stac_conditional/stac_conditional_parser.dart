import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/utils/expression_resolver.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacConditionalParser extends StacParser<StacConditional> {
  const StacConditionalParser();

  @override
  String get type => WidgetType.conditional.name;

  @override
  StacConditional getModel(Map<String, dynamic> json) =>
      StacConditional.fromJson(json);

  @override
  Widget parse(BuildContext context, StacConditional model) {
    final result = ExpressionResolver.evaluate(model.condition);
    if (result) {
      return model.ifTrue.parse(context) ?? const SizedBox();
    } else if (model.ifFalse != null) {
      return model.ifFalse.parse(context) ?? const SizedBox();
    }
    return const SizedBox();
  }
}
