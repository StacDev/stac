import 'package:flutter/cupertino.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/icon_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_logger/stac_logger.dart';

import 'stac_icon.dart';

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
      case IconType.material:
        iconData = materialIconMap[model.icon];
        break;
      case IconType.cupertino:
        iconData = cupertinoIconsMap[model.icon];
        break;
    }

    if (iconData != null) {
      return Icon(
        iconData,
        size: model.size?.parse,
        color: model.color.toColor(context),
        semanticLabel: model.semanticLabel,
        textDirection: model.textDirection,
      );
    } else {
      Log.e("The Icon ${model.icon} does not exist.");
      return const SizedBox();
    }
  }
}
