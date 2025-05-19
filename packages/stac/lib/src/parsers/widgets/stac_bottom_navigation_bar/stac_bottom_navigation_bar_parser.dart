import 'package:flutter/material.dart';
import 'package:stac/src/parsers/widgets/stac_bottom_navigation_bar/stac_bottom_navigation_bar.dart';
import 'package:stac/src/parsers/widgets/stac_default_bottom_navigation_controller/stac_default_bottom_navigation_controller.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_navigation_bar_item/stac_bottom_navigation_bar_item.dart';
import 'package:stac/src/parsers/widgets/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacBottomNavigationBarParser
    extends StacParser<StacBottomNavigationBar> {
  const StacBottomNavigationBarParser();

  @override
  String get type => WidgetType.bottomNavigationBar.name;

  @override
  StacBottomNavigationBar getModel(Map<String, dynamic> json) =>
      StacBottomNavigationBar.fromJson(json);

  @override
  Widget parse(BuildContext context, StacBottomNavigationBar model) {
    final controller = BottomNavigationScope.of(context)?.controller;

    return BottomNavigationBar(
      items: model.items.map((item) => item.parse(context)).toList(),
      onTap: (index) => controller?.index = index,
      currentIndex: controller?.index ?? 0,
      elevation: model.elevation?.parse,
      type: model.bottomNavigationBarType,
      fixedColor: model.fixedColor?.toColor(context),
      backgroundColor: model.backgroundColor?.toColor(context),
      iconSize: model.iconSize.parse,
      selectedItemColor: model.selectedItemColor?.toColor(context),
      unselectedItemColor: model.unselectedItemColor?.toColor(context),
      selectedFontSize: model.selectedFontSize.parse,
      unselectedFontSize: model.unselectedFontSize.parse,
      selectedLabelStyle: model.selectedLabelStyle?.parse(context),
      unselectedLabelStyle: model.unselectedLabelStyle?.parse(context),
      showSelectedLabels: model.showSelectedLabels,
      showUnselectedLabels: model.showUnselectedLabels,
      enableFeedback: model.enableFeedback,
      landscapeLayout: model.landscapeLayout,
    );
  }
}
