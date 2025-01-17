import 'package:flutter/material.dart';
import 'package:mirai/src/framework/framework.dart';
import 'package:mirai/src/parsers/mirai_placeholder/mirai_placeholder.dart';
import 'package:mirai/src/utils/utils.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiPlaceholderParser extends MiraiParser<MiraiPlaceholder> {
  const MiraiPlaceholderParser();

  @override
  String get type => WidgetType.placeholder.name;

  @override
  MiraiPlaceholder getModel(Map<String, dynamic> json) =>
      MiraiPlaceholder.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiPlaceholder model) {
    return Placeholder(
      fallbackWidth: model.fallbackWidth,
      fallbackHeight: model.fallbackHeight,
      strokeWidth: model.strokeWidth,
      color: model.color.toColor(context) ?? Color(0xFF455A64),
      child: Mirai.fromJson(model.child, context),
    );
  }
}
