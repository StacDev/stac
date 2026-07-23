import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/alignment/stac_alignment_parser.dart';
import 'package:stac/src/parsers/foundation/alignment/stac_main_axis_alignment_parser.dart';
import 'package:stac/src/parsers/foundation/borders/stac_shape_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_vertical_direction_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/parsers/foundation/ui_components/stac_overflow_bar_alignment_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
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
      icon: model.icon?.parse(context),
      iconPadding: model.iconPadding?.parse,
      iconColor: model.iconColor?.toColor(context),
      title: model.title?.parse(context),
      titlePadding: model.titlePadding?.parse,
      titleTextStyle: model.titleTextStyle?.parse(context),
      content: model.content?.parse(context),
      contentPadding: model.contentPadding?.parse,
      contentTextStyle: model.contentTextStyle?.parse(context),
      actions: model.actions?.parseList(context),
      actionsPadding: model.actionsPadding?.parse,
      actionsAlignment: model.actionsAlignment?.parse ?? MainAxisAlignment.end,
      actionsOverflowAlignment: model.actionsOverflowAlignment?.parse,
      actionsOverflowDirection:
          model.actionsOverflowDirection?.parse ?? VerticalDirection.down,
      actionsOverflowButtonSpacing: model.actionsOverflowButtonSpacing,
      buttonPadding: model.buttonPadding?.parse,
      backgroundColor: model.backgroundColor.toColor(context),
      elevation: model.elevation,
      shadowColor: model.shadowColor.toColor(context),
      surfaceTintColor: model.surfaceTintColor.toColor(context),
      semanticLabel: model.semanticLabel,
      insetPadding:
          model.insetPadding?.parse ??
          const EdgeInsets.fromLTRB(40, 24, 40, 24),
      clipBehavior: model.clipBehavior?.parse ?? Clip.none,
      shape: model.shape?.parse(context),
      alignment: model.alignment?.parse ?? Alignment.center,
      scrollable: model.scrollable ?? false,
    );
  }
}
