import 'package:flutter/material.dart';
import 'package:stac/src/framework/stac.dart';
import 'package:stac/src/parsers/widgets/stac_conditional/stac_conditional.dart';
import 'package:stac/src/utils/expression_resolver.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacConditionalParser extends StacParser<StacConditional> {
  const StacConditionalParser();

  @override
  String get type => WidgetType.conditional.name;

  @override
  StacConditional getModel(StacWidget json) => StacConditional.fromJson(json);

  @override
  Widget parse(BuildContext context, StacConditional model) {
    final result = ExpressionResolver.evaluate(model.condition);
    if (result) {
      return Stac.fromJson(model.ifTrue, context) ?? const SizedBox();
    } else if (model.ifFalse != null) {
      return Stac.fromJson(model.ifFalse, context) ?? const SizedBox();
    }
    return const SizedBox();
  }
}
