import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacCircleAvatarParser extends StacParser<StacCircleAvatar> {
  const StacCircleAvatarParser();

  @override
  String get type => WidgetType.circleAvatar.name;

  @override
  StacCircleAvatar getModel(Map<String, dynamic> json) =>
      StacCircleAvatar.fromJson(json);

  @override
  Widget parse(BuildContext context, StacCircleAvatar model) {
    return CircleAvatar(
      backgroundColor: model.backgroundColor.toColor(context),
      backgroundImage: model.backgroundImage != null
          ? NetworkImage(model.backgroundImage!)
          : null,
      foregroundImage: model.foregroundImage != null
          ? NetworkImage(model.foregroundImage!)
          : null,
      foregroundColor: model.foregroundColor.toColor(context),
      radius: model.radius,
      minRadius: model.minRadius,
      maxRadius: model.maxRadius,
      child: model.child?.parse(context),
    );
  }
}
