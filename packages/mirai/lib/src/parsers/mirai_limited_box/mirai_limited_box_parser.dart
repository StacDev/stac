import 'package:flutter/material.dart';
import 'package:mirai/src/framework/framework.dart';
import 'package:mirai/src/parsers/mirai_limited_box/mirai_limited_box.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiLimitedBoxParser extends MiraiParser<MiraiLimitedBox> {
  const MiraiLimitedBoxParser();

  @override
  String get type => WidgetType.limitedBox.name;

  @override
  MiraiLimitedBox getModel(Map<String, dynamic> json) =>
      MiraiLimitedBox.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiLimitedBox model) {
    return LimitedBox(
      maxHeight: model.maxHeight,
      maxWidth: model.maxWidth,
      child: Mirai.fromJson(model.child, context),
    );
  }
}
