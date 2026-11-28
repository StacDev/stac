import 'package:material_ui/material_ui.dart';
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
    final color = model.color.toColor(context);
    // Container takes a color or a decoration, not both, so the color fills the
    // decoration unless the decoration sets its own. It goes in while the
    // BoxDecoration is built, because a backgroundBlendMode needs a color then.
    final decoration = model.decoration?.parse(context, fallbackColor: color);
    return Container(
      alignment: model.alignment?.parse,
      padding: model.padding?.parse,
      color: decoration == null ? color : null,
      decoration: decoration,
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
