import 'package:flutter/material.dart';
import 'package:stac/src/parsers/widgets/stac_carousel_view/stac_carousel_view.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

import '../../../framework/framework.dart';

class StacCarouselViewParser extends StacParser<StacCarouselView> {
  const StacCarouselViewParser();

  @override
  String get type => WidgetType.carouselView.name;

  @override
  StacCarouselView getModel(Map<String, dynamic> json) =>
      StacCarouselView.fromJson(json);

  @override
  Widget parse(BuildContext context, StacCarouselView model) {
    switch (model.carouselType) {
      case StacCarouselViewType.regular:
        return CarouselView(
          padding: model.padding.parse,
          backgroundColor: model.backgroundColor.toColor(context),
          elevation: model.elevation,
          overlayColor:
              WidgetStateProperty.all(model.overlayColor.toColor(context)),
          itemSnapping: model.itemSnapping,
          shrinkExtent: model.shrinkExtent,
          scrollDirection: model.scrollDirection,
          reverse: model.reverse,
          onTap: (index) => Stac.fromJson(model.onTap, context),
          enableSplash: model.enableSplash,
          itemExtent: model.itemExtent ?? 0,
          children: model.children
                  ?.map((e) => Stac.fromJson(e, context) ?? SizedBox())
                  .toList() ??
              [],
        );
      case StacCarouselViewType.weighted:
        return CarouselView.weighted(
          padding: model.padding.parse,
          backgroundColor: model.backgroundColor.toColor(context),
          elevation: model.elevation,
          overlayColor:
              WidgetStateProperty.all(model.overlayColor.toColor(context)),
          itemSnapping: model.itemSnapping,
          shrinkExtent: model.shrinkExtent,
          scrollDirection: model.scrollDirection,
          reverse: model.reverse,
          onTap: (index) => Stac.fromJson(model.onTap, context),
          flexWeights: model.flexWeights ?? [],
          children: model.children
                  ?.map((e) => Stac.fromJson(e, context) ?? SizedBox())
                  .toList() ??
              [],
        );
    }
  }
}
