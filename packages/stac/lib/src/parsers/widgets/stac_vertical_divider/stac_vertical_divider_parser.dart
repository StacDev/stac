import 'package:flutter/material.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_vertical_divider/stac_vertical_divider.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacVerticalDividerParser extends StacParser<StacVerticalDivider> {
  const StacVerticalDividerParser();

  @override
  StacVerticalDivider getModel(Map<String, dynamic> json) =>
      StacVerticalDivider.fromJson(json);

  @override
  String get type => WidgetType.verticalDivider.name;

  @override
  Widget parse(BuildContext context, StacVerticalDivider model) {
    return VerticalDivider(
      width: model.width?.parse,
      thickness: model.thickness?.parse,
      indent: model.indent?.parse,
      endIndent: model.endIndent?.parse,
      color: model.color?.toColor(context),
    );
  }
}
