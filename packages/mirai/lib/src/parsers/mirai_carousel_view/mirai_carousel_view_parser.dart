import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai/src/utils/widget_type.dart';

class MiraiCarouselViewParser extends MiraiParser<MiraiCarouselView> {
  const MiraiCarouselViewParser();

  @override
  String get type => WidgetType.carouselView.name;

  @override
  MiraiCarouselView getModel(Map<String, dynamic> json) =>
      MiraiCarouselView.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiCarouselView model) {
    switch (model.carouselType) {
      case MiraiCarouselViewType.regular:
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
          onTap: (index) => Mirai.fromJson(model.onTap, context),
          enableSplash: model.enableSplash,
          itemExtent: model.itemExtent ?? 0,
          children: model.children
                  ?.map((e) => Mirai.fromJson(e, context) ?? SizedBox())
                  .toList() ??
              [],
        );
      case MiraiCarouselViewType.weighted:
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
          onTap: (index) => Mirai.fromJson(model.onTap, context),
          flexWeights: model.flexWeights ?? [],
          children: model.children
                  ?.map((e) => Mirai.fromJson(e, context) ?? SizedBox())
                  .toList() ??
              [],
        );
    }
  }
}
