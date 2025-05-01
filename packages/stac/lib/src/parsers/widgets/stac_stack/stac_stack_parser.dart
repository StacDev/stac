import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_stack/stac_stack.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacStackParser extends StacParser<StacStack> {
  const StacStackParser();

  @override
  StacStack getModel(Map<String, dynamic> json) => StacStack.fromJson(json);

  @override
  String get type => WidgetType.stack.name;

  @override
  Widget parse(BuildContext context, StacStack model) {
    return Stack(
      alignment: model.alignment.value,
      clipBehavior: model.clipBehavior,
      fit: model.fit,
      textDirection: model.textDirection,
      children: model.children
          .map((value) => Stac.fromJson(value, context) ?? const SizedBox())
          .toList(),
    );
  }
}
