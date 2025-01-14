import 'package:flutter/cupertino.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai/src/parsers/mirai_box_constraints/mirai_box_constraints.dart';
import 'package:mirai/src/utils/widget_type.dart';

import 'mirai_animated_container.dart';

class MiraiAnimatedContainerParser extends MiraiParser<MiraiAnimatedContainer> {
  const MiraiAnimatedContainerParser();

  @override
  String get type => WidgetType.animatedContainer.name;

  @override
  MiraiAnimatedContainer getModel(Map<String, dynamic> json) =>
      MiraiAnimatedContainer.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiAnimatedContainer model) {
    return AnimatedContainer(
      duration: model.duration,
      alignment: model.alignment?.value,
      padding: model.padding?.parse,
      color: model.color.toColor(context),
      decoration: model.decoration?.parse(context),
      foregroundDecoration: model.foregroundDecoration?.parse(context),
      width: model.width,
      height: model.height,
      constraints: model.constraints?.parse,
      margin: model.margin?.parse,
      clipBehavior: model.clipBehavior,
      child: Mirai.fromJson(model.child, context),
    );
  }
}
