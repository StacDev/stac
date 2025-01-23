import 'package:flutter/material.dart';
import 'package:mirai/src/framework/framework.dart';
import 'package:mirai/src/parsers/mirai_alert_dialog/mirai_alert_dialog.dart';
import 'package:mirai/src/parsers/mirai_alignment_geometry/mirai_alignment_geometry.dart';
import 'package:mirai/src/parsers/mirai_edge_insets/mirai_edge_insets.dart';
import 'package:mirai/src/parsers/mirai_shape_border/mirai_shape_border.dart';
import 'package:mirai/src/parsers/mirai_text_style/mirai_text_style.dart';
import 'package:mirai/src/utils/color_utils.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiAlertDialogParser extends MiraiParser<MiraiAlertDialog> {
  const MiraiAlertDialogParser();

  @override
  String get type => WidgetType.alertDialog.name;

  @override
  MiraiAlertDialog getModel(Map<String, dynamic> json) =>
      MiraiAlertDialog.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiAlertDialog model) {
    return AlertDialog(
      icon: Mirai.fromJson(model.icon, context),
      iconPadding: model.iconPadding?.parse,
      iconColor: model.iconColor?.toColor(context),
      title: Mirai.fromJson(model.title, context),
      titlePadding: model.titlePadding?.parse,
      titleTextStyle: model.titleTextStyle?.parse(context),
      content: Mirai.fromJson(model.content, context),
      contentPadding: model.contentPadding.parse,
      contentTextStyle: model.contentTextStyle?.parse(context),
      actions: model.actions
          ?.map((action) => Mirai.fromJson(action, context) ?? const SizedBox())
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
