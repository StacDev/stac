import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_axis_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacCarouselViewParser extends StacParser<StacCarouselView> {
  const StacCarouselViewParser();

  @override
  String get type => WidgetType.carouselView.name;

  @override
  StacCarouselView getModel(Map<String, dynamic> json) =>
      StacCarouselView.fromJson(json);

  @override
  Widget parse(BuildContext context, StacCarouselView model) {
    final StacCarouselViewType carouselType =
        model.carouselType ?? StacCarouselViewType.regular;
    switch (carouselType) {
      case StacCarouselViewType.regular:
        return CarouselView(
          padding: model.padding?.parse,
          backgroundColor: model.backgroundColor.toColor(context),
          elevation: model.elevation,
          overlayColor: WidgetStateProperty.all(
            model.overlayColor.toColor(context),
          ),
          itemSnapping: model.itemSnapping ?? false,
          shrinkExtent: model.shrinkExtent ?? 0.0,
          scrollDirection: model.scrollDirection?.parse ?? Axis.horizontal,
          reverse: model.reverse ?? false,
          onTap: (index) => model.onTap?.parse(context),
          enableSplash: model.enableSplash ?? true,
          itemExtent: model.itemExtent ?? 0,
          children: model.children?.parseList(context) ?? const <Widget>[],
        );
      case StacCarouselViewType.weighted:
        return CarouselView.weighted(
          padding: model.padding?.parse,
          backgroundColor: model.backgroundColor.toColor(context),
          elevation: model.elevation,
          overlayColor: WidgetStateProperty.all(
            model.overlayColor.toColor(context),
          ),
          itemSnapping: model.itemSnapping ?? false,
          shrinkExtent: model.shrinkExtent ?? 0.0,
          scrollDirection: model.scrollDirection?.parse ?? Axis.horizontal,
          reverse: model.reverse ?? false,
          onTap: (index) => model.onTap?.parse(context),
          flexWeights: model.flexWeights ?? const <int>[],
          children: model.children?.parseList(context) ?? const <Widget>[],
        );
    }
  }
}
