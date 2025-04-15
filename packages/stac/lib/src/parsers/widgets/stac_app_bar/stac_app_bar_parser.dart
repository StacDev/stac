import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_app_bar/stac_app_bar.dart';
import 'package:stac/src/parsers/widgets/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacAppBarParser extends StacParser<StacAppBar> {
  const StacAppBarParser();

  @override
  String get type => WidgetType.appBar.name;

  @override
  StacAppBar getModel(Map<String, dynamic> json) => StacAppBar.fromJson(json);

  @override
  Widget parse(BuildContext context, StacAppBar model) {
    return AppBar(
      leading: Stac.fromJson(model.leading, context),
      title: Stac.fromJson(model.title, context),
      titleTextStyle: model.titleTextStyle?.parse(context),
      toolbarTextStyle: model.toolbarTextStyle?.parse(context),
      shadowColor: model.shadowColor?.toColor(context),
      backgroundColor: model.backgroundColor?.toColor(context),
      foregroundColor: model.foregroundColor?.toColor(context),
      surfaceTintColor: model.surfaceTintColor?.toColor(context),
      actions: model.actions
          .map((action) => Stac.fromJson(action, context) ?? const SizedBox())
          .toList(),
      bottom: Stac.fromJson(model.bottom, context).toPreferredSizeWidget,
      titleSpacing: model.titleSpacing,
      toolbarOpacity: model.toolbarOpacity,
      bottomOpacity: model.bottomOpacity,
      toolbarHeight: model.toolbarHeight,
      leadingWidth: model.leadingWidth,
      primary: model.primary,
      centerTitle: model.centerTitle,
      elevation: model.elevation,
      scrolledUnderElevation: model.scrolledUnderElevation,
    );
  }
}
