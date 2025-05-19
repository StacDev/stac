import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_align/stac_align.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacAlignParser extends StacParser<StacAlign> {
  const StacAlignParser();

  @override
  StacAlign getModel(Map<String, dynamic> json) => StacAlign.fromJson(json);

  @override
  String get type => WidgetType.align.name;

  @override
  Widget parse(BuildContext context, StacAlign model) {
    return Align(
      alignment: model.alignment.value,
      heightFactor: model.heightFactor?.parse,
      widthFactor: model.widthFactor?.parse,
      child: Stac.fromJson(model.child, context),
    );
  }
}
