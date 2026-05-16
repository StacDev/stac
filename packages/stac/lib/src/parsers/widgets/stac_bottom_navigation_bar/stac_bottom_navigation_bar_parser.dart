import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/navigation/stac_bottom_navigation_bar_landscape_layout_parser.dart';
import 'package:stac/src/parsers/foundation/navigation/stac_bottom_navigation_bar_type_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/parsers/widgets/stac_default_navigation_controller/stac_default_navigation_controller_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
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
    return _BottomNavigationBarWidget(model: model);
  }
}

class _BottomNavigationBarWidget extends StatelessWidget {
  const _BottomNavigationBarWidget({required this.model});

  final StacBottomNavigationBar model;

  @override
  Widget build(BuildContext context) {
    final controller = NavigationScope.of(context)?.controller;

    return BottomNavigationBar(
      items: model.items
          .map(
            (item) => BottomNavigationBarItem(
              icon: item.icon.parse(context)!,
              activeIcon: item.activeIcon?.parse(context),
              label: item.label,
              backgroundColor: item.backgroundColor?.toColor(context),
              tooltip: item.tooltip,
            ),
          )
          .toList(),
      onTap: (index) => controller?.index = index,
      currentIndex: controller?.index ?? 0,
      elevation: model.elevation,
      type: model.barType?.parse,
      fixedColor: model.fixedColor?.toColor(context),
      backgroundColor: model.backgroundColor?.toColor(context),
      iconSize: model.iconSize ?? 24.0,
      selectedItemColor: model.selectedItemColor?.toColor(context),
      unselectedItemColor: model.unselectedItemColor?.toColor(context),
      selectedFontSize: model.selectedFontSize ?? 14.0,
      unselectedFontSize: model.unselectedFontSize ?? 12.0,
      selectedLabelStyle: model.selectedLabelStyle?.parse(context),
      unselectedLabelStyle: model.unselectedLabelStyle?.parse(context),
      showSelectedLabels: model.showSelectedLabels,
      showUnselectedLabels: model.showUnselectedLabels,
      enableFeedback: model.enableFeedback,
      landscapeLayout: model.landscapeLayout?.parse,
    );
  }
}
