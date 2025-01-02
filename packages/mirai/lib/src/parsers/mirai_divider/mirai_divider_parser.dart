import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai/src/utils/widget_type.dart';

class MiraiDividerParser extends MiraiParser<MiraiDivider> {
  const MiraiDividerParser();

  @override
  MiraiDivider getModel(Map<String, dynamic> json) {
    return MiraiDivider.fromJson(json);
  }

  @override
  Widget parse(BuildContext context, MiraiDivider model) {
    return Divider(
      thickness: model.thickness,
      color: model.color.toColor(context),
      height: model.height,
    );
  }

  @override
  String get type => WidgetType.divider.name;
}
