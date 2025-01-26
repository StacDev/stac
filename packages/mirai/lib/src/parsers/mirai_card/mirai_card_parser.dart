import 'package:flutter/material.dart';
import 'package:mirai/src/framework/framework.dart';
import 'package:mirai/src/parsers/mirai_card/mirai_card.dart';
import 'package:mirai/src/parsers/mirai_edge_insets/mirai_edge_insets.dart';
import 'package:mirai/src/parsers/mirai_shape_border/mirai_shape_border.dart';
import 'package:mirai/src/utils/color_utils.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiCardParser extends MiraiParser<MiraiCard> {
  const MiraiCardParser();

  @override
  String get type => WidgetType.card.name;

  @override
  MiraiCard getModel(Map<String, dynamic> json) => MiraiCard.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiCard model) {
    return Card(
      color: model.color?.toColor(context),
      shadowColor: model.shadowColor?.toColor(context),
      surfaceTintColor: model.surfaceTintColor?.toColor(context),
      elevation: model.elevation,
      shape: model.shape?.parse(context),
      borderOnForeground: model.borderOnForeground,
      clipBehavior: model.clipBehavior,
      semanticContainer: model.semanticContainer,
      margin: model.margin?.parse,
      child: Mirai.fromJson(model.child, context),
    );
  }
}
