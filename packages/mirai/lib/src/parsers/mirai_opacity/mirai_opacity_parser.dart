import 'package:flutter/material.dart';
import 'package:mirai/src/framework/framework.dart';
import 'package:mirai/src/parsers/mirai_opacity/mirai_opacity.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiOpacityParser extends MiraiParser<MiraiOpacity> {
  const MiraiOpacityParser();

  @override
  String get type => WidgetType.opacity.name;
  
  @override
  MiraiOpacity getModel(Map<String, dynamic> json) =>
      MiraiOpacity.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiOpacity model) {
    return Opacity(
      opacity: model.opacity,
      child: Mirai.fromJson(model.child, context),
    );
  }
}
