import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/borders/stac_border_side_parser.dart';
import 'package:stac/src/parsers/foundation/borders/stac_shape_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_box_constraints_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_visual_density_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_material_tap_target_size_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacChipParser extends StacParser<StacChip> {
  const StacChipParser();

  @override
  String get type => WidgetType.chip.name;

  @override
  StacChip getModel(Map<String, dynamic> json) => StacChip.fromJson(json);

  @override
  Widget parse(BuildContext context, StacChip model) {
    return Chip(
      avatar: model.avatar?.parse(context),
      label: model.label.parse(context) ?? const SizedBox.shrink(),
      labelStyle: model.labelStyle?.parse(context),
      labelPadding: model.labelPadding?.parse,
      deleteIcon: model.deleteIcon?.parse(context),
      onDeleted: model.onDeleted == null
          ? null
          : () => model.onDeleted!.parse(context),
      deleteIconColor: model.deleteIconColor?.toColor(context),
      deleteButtonTooltipMessage: model.deleteButtonTooltipMessage,
      side: model.side?.parse(context),
      shape: model.shape?.parse(context),
      clipBehavior: model.clipBehavior?.parse ?? Clip.none,
      autofocus: model.autofocus ?? false,
      color: model.color == null
          ? null
          : WidgetStateProperty.all(model.color!.toColor(context)),
      backgroundColor: model.backgroundColor?.toColor(context),
      padding: model.padding?.parse,
      visualDensity: model.visualDensity?.parse,
      materialTapTargetSize: model.materialTapTargetSize?.parse,
      elevation: model.elevation,
      shadowColor: model.shadowColor?.toColor(context),
      surfaceTintColor: model.surfaceTintColor?.toColor(context),
      avatarBoxConstraints: model.avatarBoxConstraints?.parse,
      deleteIconBoxConstraints: model.deleteIconBoxConstraints?.parse,
    );
  }
}
