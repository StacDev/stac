import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/borders/stac_border_radius_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac_core/stac_core.dart';
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
      borderRadius: model.borderRadius?.parse ?? BorderRadius.zero,
      clipBehavior: model.clipBehavior?.parse ?? Clip.antiAlias,
      child: model.child?.parse(context),
    );
  }
}
