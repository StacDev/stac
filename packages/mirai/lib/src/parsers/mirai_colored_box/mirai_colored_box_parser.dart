import 'package:flutter/cupertino.dart';
import 'package:mirai/src/framework/framework.dart';
import 'package:mirai/src/parsers/mirai_colored_box/mirai_colored_box.dart';
import 'package:mirai/src/utils/color_utils.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiColoredBoxParser extends MiraiParser<MiraiColoredBox> {
  const MiraiColoredBoxParser();

  @override
  String get type => WidgetType.coloredBox.name;

  @override
  MiraiColoredBox getModel(Map<String, dynamic> json) =>
      MiraiColoredBox.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiColoredBox model) {
    return ColoredBox(
      color: model.color.toColor(context)!,
      child: Mirai.fromJson(model.child, context),
    );
  }
}
