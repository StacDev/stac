import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/stac_default_tab_controller/stac_default_tab_controller.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacDefaultTabControllerParser
    extends StacParser<StacDefaultTabController> {
  const StacDefaultTabControllerParser();

  @override
  String get type => WidgetType.defaultTabController.name;

  @override
  StacDefaultTabController getModel(Map<String, dynamic> json) =>
      StacDefaultTabController.fromJson(json);

  @override
  Widget parse(BuildContext context, StacDefaultTabController model) {
    return DefaultTabController(
      length: model.length,
      initialIndex: model.initialIndex,
      child: Stac.fromJson(model.child, context) ?? const SizedBox(),
    );
  }
}
