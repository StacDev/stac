import 'package:flutter/cupertino.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

import 'stac_colored_box.dart';

class StacColoredBoxParser extends StacParser<StacColoredBox> {
  const StacColoredBoxParser();

  @override
  String get type => WidgetType.coloredBox.name;

  @override
  StacColoredBox getModel(Map<String, dynamic> json) =>
      StacColoredBox.fromJson(json);

  @override
  Widget parse(BuildContext context, StacColoredBox model) {
    return ColoredBox(
      color: model.color.toColor(context)!,
      child: Stac.fromJson(model.child, context),
    );
  }
}
