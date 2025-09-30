import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/widgets/stac_default_bottom_navigation_controller/stac_default_bottom_navigation_controller_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacBottomNavigationViewParser
    extends StacParser<StacBottomNavigationView> {
  const StacBottomNavigationViewParser();

  @override
  String get type => WidgetType.bottomNavigationView.name;

  @override
  StacBottomNavigationView getModel(Map<String, dynamic> json) =>
      StacBottomNavigationView.fromJson(json);

  @override
  Widget parse(BuildContext context, StacBottomNavigationView model) {
    return _BottomNavigationViewWidget(model: model);
  }
}

class _BottomNavigationViewWidget extends StatelessWidget {
  const _BottomNavigationViewWidget({required this.model});

  final StacBottomNavigationView model;

  @override
  Widget build(BuildContext context) {
    final controller = BottomNavigationScope.of(context)?.controller;
    if (model.children.isEmpty) return const SizedBox();
    final index = controller?.index ?? 0;
    final safeIndex = index.clamp(0, model.children.length - 1);
    return model.children[safeIndex].parse(context) ?? const SizedBox();
  }
}
