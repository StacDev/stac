import 'package:flutter/material.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacVerticalDividerParser extends StacParser<StacVerticalDivider> {
  const StacVerticalDividerParser();

  @override
  String get type => WidgetType.verticalDivider.name;

  @override
  StacVerticalDivider getModel(Map<String, dynamic> json) =>
      StacVerticalDivider.fromJson(json);

  @override
  Widget parse(BuildContext context, StacVerticalDivider model) {
    return VerticalDivider(
      width: model.width,
      thickness: model.thickness,
      indent: model.indent,
      endIndent: model.endIndent,
      color: model.color?.toColor(context),
    );
  }
}
