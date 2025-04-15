import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_card/stac_card.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/widgets/stac_shape_border/stac_shape_border.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
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
      borderOnForeground: model.borderOnForeground,
      clipBehavior: model.clipBehavior,
      semanticContainer: model.semanticContainer,
      margin: model.margin?.parse,
      child: Stac.fromJson(model.child, context),
    );
  }
}
