import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/colors/stac_blend_mode_parser.dart';
import 'package:stac/src/parsers/foundation/effects/stac_shadow_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_direction_parser.dart';
import 'package:stac/src/utils/icon_utils.dart';
import 'package:stac/src/utils/utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_logger/stac_logger.dart';

class StacIconParser extends StacParser<StacIcon> {
  const StacIconParser();

  @override
  String get type => WidgetType.icon.name;

  @override
  StacIcon getModel(Map<String, dynamic> json) => StacIcon.fromJson(json);

  @override
  Widget parse(BuildContext context, StacIcon model) {
    IconData? iconData;
    switch (model.iconType) {
      case StacIconType.material:
        iconData = materialIconMap[model.icon];
        break;
      case StacIconType.cupertino:
        iconData = cupertinoIconsMap[model.icon];
        break;
    }

    if (iconData != null) {
      return Icon(
        iconData,
        size: model.size,
        fill: model.fill,
        weight: model.weight,
        grade: model.grade,
        opticalSize: model.opticalSize,
        color: model.color.toColor(context),
        shadows: model.shadows?.map((e) => e.parse(context)).toList(),
        semanticLabel: model.semanticLabel,
        textDirection: model.textDirection?.parse,
        applyTextScaling: model.applyTextScaling,
        blendMode: model.blendMode?.parse,
      );
    } else {
      Log.e("The Icon ${model.icon} does not exist.");
      return const SizedBox();
    }
  }
}
