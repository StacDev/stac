import 'package:flutter/material.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacDividerParser extends StacParser<StacDivider> {
  const StacDividerParser();

  @override
  String get type => WidgetType.divider.name;

  @override
  StacDivider getModel(Map<String, dynamic> json) => StacDivider.fromJson(json);

  @override
  Widget parse(BuildContext context, StacDivider model) {
    return Divider(
      height: model.height,
      thickness: model.thickness,
      indent: model.indent,
      endIndent: model.endIndent,
      color: model.color?.toColor(context),
    );
  }
}
