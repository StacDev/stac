import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacTabParser extends StacParser<StacTab> {
  const StacTabParser();

  @override
  StacTab getModel(Map<String, dynamic> json) => StacTab.fromJson(json);

  @override
  Widget parse(BuildContext context, StacTab model) {
    return Tab(
      text: model.text,
      icon: model.icon?.parse(context),
      iconMargin: model.iconMargin?.parse,
      height: model.height,
      child: model.child?.parse(context),
    );
  }

  @override
  String get type => WidgetType.tab.name;
}
