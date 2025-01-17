import 'package:flutter/material.dart';
import 'package:mirai/src/framework/framework.dart';
import 'package:mirai/src/parsers/mirai_visibility/mirai_visibility.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiVisibilityParser extends MiraiParser<MiraiVisibility> {
  const MiraiVisibilityParser();

  @override
  String get type => WidgetType.visibility.name;

  @override
  MiraiVisibility getModel(Map<String, dynamic> json) =>
      MiraiVisibility.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiVisibility model) {
    return Visibility(
      visible: model.visible,
      maintainState: model.maintainState,
      maintainAnimation: model.maintainAnimation,
      maintainSize: model.maintainSize,
      maintainSemantics: model.maintainSemantics,
      maintainInteractivity: model.maintainInteractivity,
      replacement:
          Mirai.fromJson(model.replacement, context) ?? SizedBox.shrink(),
      child: Mirai.fromJson(model.child, context) ?? SizedBox.shrink(),
    );
  }
}
