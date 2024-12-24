import 'package:flutter/material.dart';
import 'package:mirai/src/framework/framework.dart';
import 'package:mirai/src/parsers/mirai_column/mirai_column.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiColumnParser extends MiraiParser<MiraiColumn> {
  const MiraiColumnParser();

  @override
  MiraiColumn getModel(Map<String, dynamic> json) => MiraiColumn.fromJson(json);

  @override
  String get type => WidgetType.column.name;

  @override
  Widget parse(BuildContext context, MiraiColumn model) {
    return Column(
      mainAxisAlignment: model.mainAxisAlignment,
      crossAxisAlignment: model.crossAxisAlignment,
      mainAxisSize: model.mainAxisSize,
      textDirection: model.textDirection,
      verticalDirection: model.verticalDirection,
      spacing: model.spacing,
      children: model.children
          .map(
            (value) => Mirai.fromJson(value, context) ?? const SizedBox(),
          )
          .toList(),
    );
  }
}
