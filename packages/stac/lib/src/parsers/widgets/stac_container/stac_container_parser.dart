import 'package:flutter/cupertino.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac/src/parsers/widgets/stac_box_decoration/stac_box_decoration.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

import 'stac_container.dart';

class StacContainerParser extends StacParser<StacContainer> {
  const StacContainerParser();

  @override
  String get type => WidgetType.container.name;

  @override
  StacContainer getModel(Map<String, dynamic> json) =>
      StacContainer.fromJson(json);

  @override
  Widget parse(BuildContext context, StacContainer model) {
    return Container(
      alignment: model.alignment?.value,
      padding: model.padding?.parse,
      color: model.color?.toColor(context),
      decoration: model.decoration?.parse(context),
      foregroundDecoration: model.foregroundDecoration?.parse(context),
      width: model.width?.parse,
      height: model.height?.parse,
      constraints: model.constraints?.parse,
      margin: model.margin?.parse,
      clipBehavior: model.clipBehavior,
      child: Stac.fromJson(model.child, context),
    );
  }
}
