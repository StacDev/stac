import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/animation/stac_duration_parsers.dart';
import 'package:stac_core/stac_core.dart';
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
      initialIndex: model.initialIndex ?? 0,
      animationDuration: model.animationDuration?.parse,
      child: model.child.parse(context) ?? const SizedBox(),
    );
  }
}
