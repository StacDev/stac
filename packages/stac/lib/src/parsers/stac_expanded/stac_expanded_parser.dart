import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/stac_expanded/stac_expanded.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacExpandedParser extends StacParser<StacExpanded> {
  const StacExpandedParser();

  @override
  String get type => WidgetType.expanded.name;

  @override
  StacExpanded getModel(Map<String, dynamic> json) =>
      StacExpanded.fromJson(json);

  @override
  Widget parse(BuildContext context, StacExpanded model) {
    return Expanded(
      flex: model.flex,
      child: Stac.fromJson(model.child, context) ?? const SizedBox(),
    );
  }
}
