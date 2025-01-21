import 'package:flutter/material.dart';
import 'package:mirai/src/framework/framework.dart';
import 'package:mirai/src/parsers/mirai_aspect_ratio/mirai_aspect_ratio.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiAspectRatioParser extends MiraiParser<MiraiAspectRatio> {
  const MiraiAspectRatioParser();

  @override
  String get type => WidgetType.aspectRatio.name;

  @override
  MiraiAspectRatio getModel(Map<String, dynamic> json) =>
      MiraiAspectRatio.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiAspectRatio model) {
    return AspectRatio(
      aspectRatio: model.aspectRatio,
      child: Mirai.fromJson(model.child, context),
    );
  }
}
