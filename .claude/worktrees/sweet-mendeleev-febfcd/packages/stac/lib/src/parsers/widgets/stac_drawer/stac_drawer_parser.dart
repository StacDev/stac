import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/borders/stac_shape_border_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
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
      elevation: model.elevation,
      shadowColor: model.shadowColor?.toColor(context),
      surfaceTintColor: model.surfaceTintColor?.toColor(context),
      shape: model.shape?.parse(context),
      width: model.width,
      semanticLabel: model.semanticLabel,
      clipBehavior: model.clipBehavior?.parse,
      child: model.child?.parse(context),
    );
  }
}
