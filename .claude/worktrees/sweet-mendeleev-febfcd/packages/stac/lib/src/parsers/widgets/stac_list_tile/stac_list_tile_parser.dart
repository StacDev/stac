import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/borders/stac_shape_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_visual_density_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_mouse_cursor_parser.dart';
import 'package:stac/src/parsers/foundation/ui_components/stac_list_tile_style_parser.dart';
import 'package:stac/src/parsers/foundation/ui_components/stac_list_tile_title_alignment_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacListTileParser extends StacParser<StacListTile> {
  const StacListTileParser();

  @override
  String get type => WidgetType.listTile.name;

  @override
  StacListTile getModel(Map<String, dynamic> json) =>
      StacListTile.fromJson(json);

  @override
  Widget parse(BuildContext context, StacListTile model) {
    return ListTile(
      leading: model.leading?.parse(context),
      title: model.title?.parse(context),
      subtitle: model.subtitle?.parse(context),
      trailing: model.trailing?.parse(context),
      isThreeLine: model.isThreeLine ?? false,
      dense: model.dense,
      visualDensity: model.visualDensity?.parse,
      shape: model.shape?.parse(context),
      style: model.style?.parse,
      selectedColor: model.selectedColor?.toColor(context),
      iconColor: model.iconColor?.toColor(context),
      textColor: model.textColor?.toColor(context),
      contentPadding: model.contentPadding?.parse,
      enabled: model.enabled ?? true,
      onTap: model.onTap != null ? () => model.onTap?.parse(context) : null,
      onLongPress: model.onLongPress != null
          ? () => model.onLongPress?.parse(context)
          : null,
      mouseCursor: model.mouseCursor?.parse,
      selected: model.selected ?? false,
      focusColor: model.focusColor?.toColor(context),
      hoverColor: model.hoverColor?.toColor(context),
      autofocus: model.autofocus ?? false,
      tileColor: model.tileColor?.toColor(context),
      selectedTileColor: model.selectedTileColor?.toColor(context),
      enableFeedback: model.enableFeedback,
      horizontalTitleGap: model.horizontalTitleGap,
      minVerticalPadding: model.minVerticalPadding,
      minLeadingWidth: model.minLeadingWidth,
      titleAlignment: model.titleAlignment?.parse,
    );
  }
}
