import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/widgets/stac_default_navigation_controller/stac_default_navigation_controller_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacNavigationViewParser extends StacParser<StacNavigationView> {
  const StacNavigationViewParser();

  @override
  String get type => WidgetType.navigationView.name;

  @override
  StacNavigationView getModel(Map<String, dynamic> json) =>
      StacNavigationView.fromJson(json);

  @override
  Widget parse(BuildContext context, StacNavigationView model) {
    return _NavigationViewWidget(model: model);
  }
}

class _NavigationViewWidget extends StatelessWidget {
  const _NavigationViewWidget({required this.model});

  final StacNavigationView model;

  @override
  Widget build(BuildContext context) {
    final controller = NavigationScope.of(context)?.controller;
    if (model.children.isEmpty) return const SizedBox();
    final index = controller?.index ?? 0;
    final safeIndex = index.clamp(0, model.children.length - 1);
    return model.children[safeIndex].parse(context) ?? const SizedBox();
  }
}
