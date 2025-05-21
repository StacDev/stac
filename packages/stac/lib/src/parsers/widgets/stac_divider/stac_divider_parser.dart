import 'package:flutter/material.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac/stac.dart';

class StacDividerParser extends StacParser<StacDivider> {
  const StacDividerParser();

  @override
  StacDivider getModel(Map<String, dynamic> json) {
    return StacDivider.fromJson(json);
  }

  @override
  Widget parse(BuildContext context, StacDivider model) {
    return Divider(
      thickness: model.thickness?.parse,
      color: model.color.toColor(context),
      height: model.height?.parse,
    );
  }

  @override
  String get type => WidgetType.divider.name;
}
