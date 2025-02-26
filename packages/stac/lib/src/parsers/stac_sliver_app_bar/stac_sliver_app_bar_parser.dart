import 'package:flutter/material.dart';
import 'package:stac/src/parsers/stac_icon_theme_data/stac_icon_theme_data.dart';
import 'package:stac/src/parsers/stac_shape_border/stac_shape_border.dart';
import 'package:stac/src/parsers/stac_system_ui_olverlay_style/stac_system_ui_overlay_style.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac/stac.dart';

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
      elevation: model.elevation,
      scrolledUnderElevation: model.scrolledUnderElevation,
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
      titleSpacing: model.titleSpacing,
      collapsedHeight: model.collapsedHeight,
      expandedHeight: model.expandedHeight,
      floating: model.floating,
      pinned: model.pinned,
      snap: model.snap,
      stretch: model.stretch,
      stretchTriggerOffset: model.stretchTriggerOffset,
      shape: model.shape?.parse(context),
      toolbarHeight: model.toolbarHeight,
      leadingWidth: model.leadingWidth,
      toolbarTextStyle: model.toolbarTextStyle?.parse(context),
      titleTextStyle: model.titleTextStyle?.parse(context),
      systemOverlayStyle: model.systemOverlayStyle?.parse(context),
      forceMaterialTransparency: model.forceMaterialTransparency,
      clipBehavior: model.clipBehavior,
      actionsPadding: model.actionsPadding?.parse,
    );
  }
}
