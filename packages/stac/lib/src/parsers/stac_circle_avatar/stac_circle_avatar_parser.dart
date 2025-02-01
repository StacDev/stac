import 'package:flutter/material.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac/stac.dart';

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
      child: Stac.fromJson(model.child, context),
    );
  }
}
