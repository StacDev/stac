import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/widgets/stac_list_tile/stac_list_tile.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
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
      onTap: () => Stac.onCallFromJson(model.onTap, context),
      onLongPress: () => Stac.onCallFromJson(model.onLongPress, context),
      leading: Stac.fromJson(model.leading, context),
      title: Stac.fromJson(model.title, context),
      subtitle: Stac.fromJson(model.subtitle, context),
      trailing: Stac.fromJson(model.trailing, context),
      isThreeLine: model.isThreeLine,
      dense: model.dense,
      style: model.style,
      selectedColor: model.selectedColor?.toColor(context),
      iconColor: model.iconColor?.toColor(context),
      textColor: model.textColor?.toColor(context),
      contentPadding: model.contentPadding?.parse,
      enabled: model.enabled,
      selected: model.selected,
      focusColor: model.focusColor?.toColor(context),
      hoverColor: model.hoverColor?.toColor(context),
      autofocus: model.autofocus,
      tileColor: model.tileColor?.toColor(context),
      selectedTileColor: model.selectedTileColor?.toColor(context),
      enableFeedback: model.enableFeedback,
      horizontalTitleGap: model.horizontalTitleGap,
      minVerticalPadding: model.minVerticalPadding,
      minLeadingWidth: model.minLeadingWidth,
    );
  }
}
