import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_center/stac_center.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacCenterParser extends StacParser<StacCenter> {
  const StacCenterParser();

  @override
  StacCenter getModel(Map<String, dynamic> json) => StacCenter.fromJson(json);

  @override
  String get type => WidgetType.center.name;

  @override
  Widget parse(BuildContext context, StacCenter model) {
    return Center(
      widthFactor: model.widthFactor?.parse,
      heightFactor: model.heightFactor?.parse,
      child: Stac.fromJson(model.child, context),
    );
  }
}
