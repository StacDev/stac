import 'package:flutter/widgets.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac/stac.dart';

class StacHeroParser extends StacParser<StacHero> {
  const StacHeroParser();

  @override
  String get type => WidgetType.hero.name;

  @override
  StacHero getModel(Map<String, dynamic> json) => StacHero.fromJson(json);

  @override
  Widget parse(BuildContext context, StacHero model) {
    return Hero(
      tag: model.tag,
      createRectTween: model.createRectTween != null
          ? (_, __) => model.createRectTween!.parse(context)
          : null,
      flightShuttleBuilder: model.flightShuttleBuilder != null
          ? (flightContext, animation, flightDirection, fromHeroContext,
              toHeroContext) {
              final widget =
                  Stac.fromJson(model.flightShuttleBuilder!, context);
              return widget ?? const SizedBox();
            }
          : null,
      placeholderBuilder: model.placeholderBuilder != null
          ? (context, heroSize, child) {
              final widget = Stac.fromJson(model.placeholderBuilder!, context);
              return widget ?? const SizedBox();
            }
          : null,
      transitionOnUserGestures: model.transitionOnUserGestures,
      child: Stac.fromJson(model.child, context) ?? const SizedBox(),
    );
  }
}
