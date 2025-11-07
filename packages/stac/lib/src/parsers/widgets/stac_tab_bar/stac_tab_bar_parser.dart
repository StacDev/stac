import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/decoration/stac_box_decoration_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_drag_start_behavior_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_scroll_physics_parser.dart';
import 'package:stac/src/parsers/foundation/navigation/stac_tab_alignment_parser.dart';
import 'package:stac/src/parsers/foundation/navigation/stac_tab_bar_indicator_size_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacTabBarParser extends StacParser<StacTabBar> {
  const StacTabBarParser({this.controller});

  final TabController? controller;

  @override
  StacTabBar getModel(Map<String, dynamic> json) => StacTabBar.fromJson(json);

  @override
  String get type => WidgetType.tabBar.name;

  @override
  Widget parse(BuildContext context, StacTabBar model) {
    return TabBar(
      controller: controller,
      tabs: model.tabs
          .map((t) => t.parse(context) ?? const SizedBox())
          .toList(),
      isScrollable: model.isScrollable ?? false,
      padding: model.padding?.parse,
      indicatorColor: model.indicatorColor?.toColor(context),
      automaticIndicatorColorAdjustment:
          model.automaticIndicatorColorAdjustment ?? true,
      indicatorWeight: model.indicatorWeight ?? 2.0,
      indicatorPadding: model.indicatorPadding?.parse ?? EdgeInsets.zero,
      indicator: model.indicator?.parse(context),
      indicatorSize: model.indicatorSize?.parse,
      labelColor: model.labelColor?.toColor(context),
      labelStyle: model.labelStyle?.parse(context),
      labelPadding: model.labelPadding?.parse,
      unselectedLabelColor: model.unselectedLabelColor?.toColor(context),
      unselectedLabelStyle: model.unselectedLabelStyle?.parse(context),
      dragStartBehavior:
          model.dragStartBehavior?.parse ?? DragStartBehavior.start,
      enableFeedback: model.enableFeedback,
      onTap: (_) {},
      physics: model.physics?.parse,
      tabAlignment: model.tabAlignment?.parse,
      dividerColor: model.dividerColor?.toColor(context),
      dividerHeight: model.dividerHeight,
    );
  }
}
