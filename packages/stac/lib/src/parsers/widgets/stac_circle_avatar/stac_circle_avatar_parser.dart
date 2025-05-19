import 'package:flutter/material.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
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
      radius: model.radius?.parse,
      minRadius: model.minRadius?.parse,
      maxRadius: model.maxRadius?.parse,
      child: Stac.fromJson(model.child, context),
    );
  }
}
