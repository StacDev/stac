import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

import 'stac_wrap.dart';

class StacWrapParser extends StacParser<StacWrap> {
  const StacWrapParser();

  @override
  String get type => WidgetType.wrap.name;

  @override
  StacWrap getModel(Map<String, dynamic> json) => StacWrap.fromJson(json);

  @override
  Widget parse(BuildContext context, StacWrap model) {
    return Wrap(
      direction: model.direction,
      alignment: model.alignment,
      spacing: model.spacing,
      runAlignment: model.runAlignment,
      runSpacing: model.runSpacing,
      crossAxisAlignment: model.crossAxisAlignment,
      textDirection: model.textDirection,
      verticalDirection: model.verticalDirection,
      clipBehavior: model.clipBehavior,
      children: model.children
          .map((e) => Stac.fromJson(e, context) ?? const SizedBox())
          .toList(),
    );
  }
}
