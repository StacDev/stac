import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/animation/stac_duration_parsers.dart';
import 'package:stac/src/parsers/foundation/borders/stac_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/navigation/stac_navigation_destination_label_behavior_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/parsers/widgets/stac_default_navigation_controller/stac_default_navigation_controller_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacNavigationBarParser extends StacParser<StacNavigationBar> {
  const StacNavigationBarParser();

  @override
  String get type => WidgetType.navigationBar.name;

  @override
  StacNavigationBar getModel(Map<String, dynamic> json) =>
      StacNavigationBar.fromJson(json);

  @override
  Widget parse(BuildContext context, StacNavigationBar model) {
    return _NavigationBarWidget(model: model);
  }
}

class _NavigationBarWidget extends StatelessWidget {
  const _NavigationBarWidget({required this.model});

  final StacNavigationBar model;

  int _clampIndex(int index, int length) {
    if (length <= 0) {
      return 0;
    }

    return index.clamp(0, length - 1);
  }

  @override
  Widget build(BuildContext context) {
    final controller = NavigationScope.maybeOf(context)?.controller;
    final destinations = model.destinations
        .map(
          (destination) => NavigationDestination(
            icon: destination.icon.parse(context) ?? const SizedBox(),
            selectedIcon: destination.selectedIcon?.parse(context),
            label: destination.label,
            tooltip: destination.tooltip,
            enabled: destination.enabled ?? true,
          ),
        )
        .toList();
    final selectedIndex = _clampIndex(
      controller?.index ?? model.selectedIndex ?? 0,
      destinations.length,
    );

    return NavigationBar(
      destinations: destinations,
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) {
        if (controller != null) {
          controller.index = index;
        }
      },
      animationDuration: model.animationDuration?.parse,
      backgroundColor: model.backgroundColor?.toColor(context),
      elevation: model.elevation,
      shadowColor: model.shadowColor?.toColor(context),
      surfaceTintColor: model.surfaceTintColor?.toColor(context),
      indicatorColor: model.indicatorColor?.toColor(context),
      indicatorShape: model.indicatorShape?.parse(context),
      height: model.height,
      labelBehavior: model.labelBehavior?.parse,
      labelTextStyle: model.labelTextStyle == null
          ? null
          : WidgetStateProperty.all(model.labelTextStyle!.parse(context)),
      labelPadding: model.labelPadding?.parse,
      maintainBottomViewPadding: model.maintainBottomViewPadding ?? false,
    );
  }
}
