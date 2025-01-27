import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai/src/parsers/mirai_shape_border/mirai_shape_border.dart';
import 'package:mirai/src/utils/widget_type.dart';

class MiraiDrawerParser extends MiraiParser<MiraiDrawer> {
  const MiraiDrawerParser();

  @override
  String get type => WidgetType.drawer.name;

  @override
  MiraiDrawer getModel(Map<String, dynamic> json) => MiraiDrawer.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiDrawer model) {
    return Drawer(
      width: model.width,
      elevation: model.elevation,
      backgroundColor: model.backgroundColor?.toColor(context),
      shadowColor: model.shadowColor?.toColor(context),
      surfaceTintColor: model.surfaceTintColor?.toColor(context),
      shape: model.shape?.parse(context),
      semanticLabel: model.semanticLabel,
      clipBehavior: model.clipBehavior,
      child: Mirai.fromJson(model.child, context),
    );
  }
}
