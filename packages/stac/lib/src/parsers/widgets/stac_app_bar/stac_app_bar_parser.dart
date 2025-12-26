import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/parsers/foundation/ui_components/stac_system_ui_overlay_style_parser.dart';
import 'package:stac/stac.dart';
import 'package:stac_core/stac_core.dart';

class StacAppBarParser extends StacParser<StacAppBar> {
  const StacAppBarParser();

  @override
  String get type => WidgetType.appBar.name;

  @override
  StacAppBar getModel(Map<String, dynamic> json) => StacAppBar.fromJson(json);

  @override
  Widget parse(BuildContext context, StacAppBar model) {
    return AppBar(
      leading: model.leading?.parse(context),
      automaticallyImplyLeading: model.automaticallyImplyLeading ?? true,
      title: model.title?.parse(context),
      actions: model.actions.parseList(context),
      flexibleSpace: model.flexibleSpace?.parse(context),
      bottom: model.bottom?.parsePreferredSizeWidget(context),
      elevation: model.elevation,
      scrolledUnderElevation: model.scrolledUnderElevation,
      shadowColor: model.shadowColor?.toColor(context),
      surfaceTintColor: model.surfaceTintColor?.toColor(context),
      // shape: shape,
      backgroundColor: model.backgroundColor?.toColor(context),
      foregroundColor: model.foregroundColor?.toColor(context),
      // iconTheme: iconTheme,
      // actionsIconTheme: actionsIconTheme,
      primary: model.primary ?? true,
      centerTitle: model.centerTitle,
      excludeHeaderSemantics: model.excludeHeaderSemantics ?? false,
      titleSpacing: model.titleSpacing,
      toolbarOpacity: model.toolbarOpacity ?? 1.0,
      bottomOpacity: model.bottomOpacity ?? 1.0,
      toolbarHeight: model.toolbarHeight,
      leadingWidth: model.leadingWidth,
      toolbarTextStyle: model.toolbarTextStyle?.parse(context),
      titleTextStyle: model.titleTextStyle?.parse(context),
      systemOverlayStyle: model.systemOverlayStyle?.parse(context),
      forceMaterialTransparency: model.forceMaterialTransparency ?? false,
      useDefaultSemanticsOrder: model.useDefaultSemanticsOrder ?? true,
      clipBehavior: model.clipBehavior?.parse,
      actionsPadding: model.actionsPadding?.parse,
    );
  }
}
