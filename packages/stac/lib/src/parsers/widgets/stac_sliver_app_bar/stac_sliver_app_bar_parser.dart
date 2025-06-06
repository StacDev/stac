import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/theme/stac_icon_theme_data/stac_icon_theme_data.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/widgets/stac_shape_border/stac_shape_border.dart';
import 'package:stac/src/parsers/widgets/stac_system_ui_olverlay_style/stac_system_ui_overlay_style.dart';
import 'package:stac/src/parsers/widgets/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

import 'stac_sliver_app_bar.dart';

class StacSliverAppBarParser extends StacParser<StacSliverAppBar> {
  const StacSliverAppBarParser();

  @override
  String get type => WidgetType.sliverAppBar.name;

  @override
  StacSliverAppBar getModel(Map<String, dynamic> json) =>
      StacSliverAppBar.fromJson(json);

  @override
  Widget parse(BuildContext context, StacSliverAppBar model) {
    return SliverAppBar(
      leading: Stac.fromJson(model.leading, context),
      automaticallyImplyLeading: model.automaticallyImplyLeading,
      title: Stac.fromJson(model.title, context),
      actions: model.actions
          ?.map((e) => Stac.fromJson(e, context) ?? const SizedBox.shrink())
          .toList(growable: false),
      flexibleSpace: Stac.fromJson(model.flexibleSpace, context),
      bottom: Stac.fromJson(model.bottom, context).toPreferredSizeWidget,
      elevation: model.elevation?.parse,
      scrolledUnderElevation: model.scrolledUnderElevation?.parse,
      shadowColor: model.shadowColor.toColor(context),
      surfaceTintColor: model.surfaceTintColor.toColor(context),
      forceElevated: model.forceElevated,
      backgroundColor: model.backgroundColor.toColor(context),
      foregroundColor: model.foregroundColor.toColor(context),
      iconTheme: model.iconTheme?.parse(context),
      actionsIconTheme: model.actionsIconTheme?.parse(context),
      primary: model.primary,
      centerTitle: model.centerTitle,
      excludeHeaderSemantics: model.excludeHeaderSemantics,
      titleSpacing: model.titleSpacing?.parse,
      collapsedHeight: model.collapsedHeight?.parse,
      expandedHeight: model.expandedHeight?.parse,
      floating: model.floating,
      pinned: model.pinned,
      snap: model.snap,
      stretch: model.stretch,
      stretchTriggerOffset: model.stretchTriggerOffset.parse,
      shape: model.shape?.parse(context),
      toolbarHeight: model.toolbarHeight.parse,
      leadingWidth: model.leadingWidth?.parse,
      toolbarTextStyle: model.toolbarTextStyle?.parse(context),
      titleTextStyle: model.titleTextStyle?.parse(context),
      systemOverlayStyle: model.systemOverlayStyle?.parse(context),
      forceMaterialTransparency: model.forceMaterialTransparency,
      clipBehavior: model.clipBehavior,
      actionsPadding: model.actionsPadding?.parse,
    );
  }
}
