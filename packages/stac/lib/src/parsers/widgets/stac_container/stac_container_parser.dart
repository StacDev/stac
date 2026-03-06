import 'package:flutter/material.dart';
import 'package:stac/stac.dart';

class StacContainerParser extends StacParser<StacContainer> {
  const StacContainerParser();

  @override
  String get type => WidgetType.container.name;

  @override
  StacContainer getModel(Map<String, dynamic> json) =>
      StacContainer.fromJson(json);

  @override
  Widget parse(BuildContext context, StacContainer model) {
    return Container(
      alignment: model.alignment?.parse,
      padding: model.padding?.parse,
      color: model.color.toColor(context),
      decoration: model.decoration?.parse(context),
      foregroundDecoration: model.foregroundDecoration?.parse(context),
      width: model.width,
      height: model.height,
      constraints: model.constraints?.parse,
      margin: model.margin?.parse,
      transformAlignment: model.transformAlignment?.parse,
      clipBehavior: model.clipBehavior?.parse ?? Clip.none,
      child: model.child?.parse(context),
    );
  }
}
