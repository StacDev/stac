import 'package:flutter/cupertino.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_positioned/stac_positioned.dart';
import 'package:stac/src/parsers/widgets/stac_rect/stac_rect.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacPositionedParser extends StacParser<StacPositioned> {
  const StacPositionedParser();

  @override
  StacPositioned getModel(Map<String, dynamic> json) =>
      StacPositioned.fromJson(json);

  @override
  String get type => WidgetType.positioned.name;

  @override
  Widget parse(BuildContext context, StacPositioned model) {
    switch (model.positionedType) {
      case StacPositionedType.directional:
        return Positioned.directional(
            textDirection: model.textDirection,
            top: model.top?.parse,
            bottom: model.bottom?.parse,
            height: model.height?.parse,
            width: model.width?.parse,
            start: model.start?.parse,
            end: model.end?.parse,
            child: Stac.fromJson(model.child, context) ?? const SizedBox());
      case StacPositionedType.fill:
        return Positioned.fill(
            left: model.left?.parse,
            top: model.top?.parse,
            right: model.right?.parse,
            bottom: model.bottom?.parse,
            child: Stac.fromJson(model.child, context) ?? const SizedBox());
      case StacPositionedType.fromRect:
        return Positioned.fromRect(
            rect: model.rect?.parse ?? Rect.zero,
            child: Stac.fromJson(model.child, context) ?? const SizedBox());
      default:
        return Positioned(
            left: model.left?.parse,
            top: model.top?.parse,
            right: model.right?.parse,
            bottom: model.bottom?.parse,
            height: model.height?.parse,
            width: model.width?.parse,
            child: Stac.fromJson(model.child, context) ?? const SizedBox());
    }
  }
}
