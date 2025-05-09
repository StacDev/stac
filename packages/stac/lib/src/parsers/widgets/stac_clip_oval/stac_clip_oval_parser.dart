import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_clip_oval/stac_clip_oval.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacClipOvalParser extends StacParser<StacClipOval> {
  const StacClipOvalParser();

  @override
  String get type => WidgetType.clipOval.name;

  @override
  StacClipOval getModel(Map<String, dynamic> json) =>
      StacClipOval.fromJson(json);

  @override
  Widget parse(BuildContext context, StacClipOval model) {
    return ClipOval(
        clipBehavior: model.clipBehavior,
        child: Stac.fromJson(model.child, context));
  }
}
