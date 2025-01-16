import 'package:flutter/material.dart';
import 'package:mirai/src/framework/framework.dart';
import 'package:mirai/src/parsers/mirai_placeholder/mirai_placeholder.dart';
import 'package:mirai/src/utils/utils.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiPlaceholderParser extends MiraiParser<MiraiPlaceholder> {
  const MiraiPlaceholderParser();

  @override
  MiraiPlaceholder getModel(Map<String, dynamic> json) =>
      MiraiPlaceholder.fromJson(json);

  @override
  String get type => WidgetType.placeholder.name;

  @override
  Widget parse(BuildContext context, MiraiPlaceholder model) {
    return Placeholder(
      fallbackWidth: model.fallbackWidth ?? 400.0,
      fallbackHeight: model.fallbackHeight ?? 400.0,
      strokeWidth: model.strokeWidth ?? 2.0,
      color: model.color?.toColor(context) ?? const Color(0xFF455A64),
      child: Mirai.fromJson(model.child, context),
    );
  }
}
