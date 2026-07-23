import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/borders/stac_shape_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacCardParser extends StacParser<StacCard> {
  const StacCardParser();

  @override
  String get type => WidgetType.card.name;

  @override
  StacCard getModel(Map<String, dynamic> json) => StacCard.fromJson(json);

  @override
  Widget parse(BuildContext context, StacCard model) {
    return Card(
      color: model.color?.toColor(context),
      shadowColor: model.shadowColor?.toColor(context),
      surfaceTintColor: model.surfaceTintColor?.toColor(context),
      elevation: model.elevation,
      shape: model.shape?.parse(context),
      borderOnForeground: model.borderOnForeground ?? true,
      clipBehavior: model.clipBehavior?.parse,
      semanticContainer: model.semanticContainer ?? true,
      margin: model.margin?.parse,
      child: model.child?.parse(context),
    );
  }
}
