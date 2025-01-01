import 'package:flutter/material.dart';
import 'package:mirai/src/framework/framework.dart';
import 'package:mirai/src/parsers/mirai_builder/mirai_builder.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiBuilderParser extends MiraiParser<MiraiBuilder> {
  const MiraiBuilderParser();

  @override
  MiraiBuilder getModel(Map<String, dynamic> json) =>
      MiraiBuilder.fromJson(json);

  @override
  String get type => WidgetType.builder.name;

  @override
  Widget parse(BuildContext context, MiraiBuilder model) {
    return Builder(
      builder: (context) =>
          Mirai.fromJson(model.builder, context) ?? const SizedBox(),
    );
  }
}
