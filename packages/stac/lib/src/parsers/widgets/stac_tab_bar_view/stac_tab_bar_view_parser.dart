import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

import 'stac_tab_bar_view.dart';

class StacTabBarViewParser extends StacParser<StacTabBarView> {
  const StacTabBarViewParser({this.controller});

  final TabController? controller;

  @override
  StacTabBarView getModel(Map<String, dynamic> json) =>
      StacTabBarView.fromJson(json);

  @override
  String get type => WidgetType.tabBarView.name;

  @override
  Widget parse(BuildContext context, StacTabBarView model) {
    return TabBarView(
      controller: controller,
      physics: model.physics?.parse,
      dragStartBehavior: model.dragStartBehavior,
      viewportFraction: model.viewportFraction,
      clipBehavior: model.clipBehavior,
      children: model.children
          .map((child) => Stac.fromJson(child, context) ?? const SizedBox())
          .toList(),
    );
  }
}
