import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

import 'stac_fractionally_sized_box.dart';

class StacFractionallySizedBoxParser
    extends StacParser<StacFractionallySizedBox> {
  const StacFractionallySizedBoxParser();

  @override
  StacFractionallySizedBox getModel(Map<String, dynamic> json) =>
      StacFractionallySizedBox.fromJson(json);

  @override
  String get type => WidgetType.fractionallySizedBox.name;

  @override
  Widget parse(BuildContext context, StacFractionallySizedBox model) {
    return FractionallySizedBox(
      alignment: model.alignment?.value ?? Alignment.center,
      widthFactor: model.widthFactor,
      heightFactor: model.heightFactor,
      child: Stac.fromJson(model.child, context),
    );
  }
}
