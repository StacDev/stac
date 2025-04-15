import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

import 'stac_flexible.dart';

class StacFlexibleParser extends StacParser<StacFlexible> {
  const StacFlexibleParser();

  @override
  String get type => WidgetType.flexible.name;

  @override
  StacFlexible getModel(Map<String, dynamic> json) =>
      StacFlexible.fromJson(json);

  @override
  Widget parse(BuildContext context, StacFlexible model) {
    return Flexible(
      fit: model.fit,
      flex: model.flex,
      child: Stac.fromJson(model.child, context) ?? const SizedBox(),
    );
  }
}
