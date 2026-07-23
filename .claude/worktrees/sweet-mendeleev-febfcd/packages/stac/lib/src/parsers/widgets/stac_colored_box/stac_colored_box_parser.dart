import 'package:flutter/cupertino.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

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
      child: model.child.parse(context),
    );
  }
}
