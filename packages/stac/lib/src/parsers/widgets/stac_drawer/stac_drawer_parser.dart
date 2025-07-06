import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_drawer/stac_drawer.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_shape_border/stac_shape_border.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacDrawerParser extends StacParser<StacDrawer> {
  const StacDrawerParser();

  @override
  String get type => WidgetType.drawer.name;

  @override
  StacDrawer getModel(Map<String, dynamic> json) => StacDrawer.fromJson(json);

  @override
  Widget parse(BuildContext context, StacDrawer model) {
    return Drawer(
      backgroundColor: model.backgroundColor?.toColor(context),
      elevation: model.elevation?.parse,
      shadowColor: model.shadowColor?.toColor(context),
      surfaceTintColor: model.surfaceTintColor?.toColor(context),
      shape: model.shape?.parse(context),
      width: model.width?.parse,
      semanticLabel: model.semanticLabel,
      clipBehavior: model.clipBehavior,
      child: Stac.fromJson(model.child, context),
    );
  }
}
