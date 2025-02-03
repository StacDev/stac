import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/stac_alert_dialog/stac_alert_dialog.dart';
import 'package:stac/src/parsers/stac_alignment_geometry/stac_alignment_geometry.dart';
import 'package:stac/src/parsers/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/stac_shape_border/stac_shape_border.dart';
import 'package:stac/src/parsers/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacAlertDialogParser extends StacParser<StacAlertDialog> {
  const StacAlertDialogParser();

  @override
  String get type => WidgetType.alertDialog.name;

  @override
  StacAlertDialog getModel(Map<String, dynamic> json) =>
      StacAlertDialog.fromJson(json);

  @override
  Widget parse(BuildContext context, StacAlertDialog model) {
    return AlertDialog(
      icon: Stac.fromJson(model.icon, context),
      iconPadding: model.iconPadding?.parse,
      iconColor: model.iconColor?.toColor(context),
      title: Stac.fromJson(model.title, context),
      titlePadding: model.titlePadding?.parse,
      titleTextStyle: model.titleTextStyle?.parse(context),
      content: Stac.fromJson(model.content, context),
      contentPadding: model.contentPadding.parse,
      contentTextStyle: model.contentTextStyle?.parse(context),
      actions: model.actions
          ?.map((action) => Stac.fromJson(action, context) ?? const SizedBox())
          .toList(),
      actionsPadding: model.actionsPadding.parse,
      actionsAlignment: model.actionsAlignment,
      actionsOverflowAlignment: model.actionsOverflowAlignment,
      actionsOverflowDirection: model.actionsOverflowDirection,
      actionsOverflowButtonSpacing: model.actionsOverflowButtonSpacing,
      buttonPadding: model.buttonPadding.parse,
      backgroundColor: model.backgroundColor.toColor(context),
      elevation: model.elevation,
      shadowColor: model.shadowColor.toColor(context),
      surfaceTintColor: model.surfaceTintColor.toColor(context),
      semanticLabel: model.semanticLabel,
      insetPadding: model.insetPadding.parse,
      clipBehavior: model.clipBehavior,
      shape: model.shape?.parse(context),
      alignment: model.alignment?.parse,
      scrollable: model.scrollable,
    );
  }
}
