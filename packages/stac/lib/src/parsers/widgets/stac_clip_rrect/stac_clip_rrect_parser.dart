import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_border_radius/stac_border_radius.dart';
import 'package:stac/src/parsers/widgets/stac_clip_rrect/stac_clip_rrect.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacClipRRectParser extends StacParser<StacClipRRect> {
  const StacClipRRectParser();

  @override
  String get type => WidgetType.clipRRect.name;

  @override
  StacClipRRect getModel(Map<String, dynamic> json) =>
      StacClipRRect.fromJson(json);

  @override
  Widget parse(BuildContext context, StacClipRRect model) {
    return ClipRRect(
      borderRadius: model.borderRadius.parse,
      clipBehavior: model.clipBehavior,
      child: Stac.fromJson(model.child, context),
    );
  }
}
