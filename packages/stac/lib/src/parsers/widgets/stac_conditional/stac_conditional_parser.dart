import 'package:flutter/material.dart';
import 'package:stac/src/expressions/stac_expression_runtime.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/state/stac_state_reader.dart';
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
    final result = evaluateStacCondition(
      model.condition,
      StacStateReader.watching(context),
      onError: stacReportPlaceholderError,
    );
    _report(model.condition, result);

    if (result.value) {
      return model.ifTrue.parse(context) ?? const SizedBox();
    } else if (model.ifFalse != null) {
      return model.ifFalse.parse(context) ?? const SizedBox();
    }
    return const SizedBox();
  }

  void _report(String condition, StacConditionResult result) {
    final error = result.error;
    if (error != null) {
      stacWarnOnce(
        'condition error $condition',
        'Condition "$condition" could not be evaluated and is treated as '
            'false: ${error.message}',
      );
      return;
    }
    if (result.barewords.isNotEmpty) {
      final words = result.barewords.toSet();
      stacWarnOnce(
        'condition barewords $condition',
        'Condition "$condition" reads ${words.map((w) => "'$w'").join(', ')} '
            'as text because no variable has that name. Quote text values, '
            "for example '${words.first}'.",
      );
    }
  }
}
