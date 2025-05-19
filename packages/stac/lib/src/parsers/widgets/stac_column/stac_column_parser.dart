import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

import 'stac_column.dart';

class StacColumnParser extends StacParser<StacColumn> {
  const StacColumnParser();

  @override
  StacColumn getModel(Map<String, dynamic> json) => StacColumn.fromJson(json);

  @override
  String get type => WidgetType.column.name;

  @override
  Widget parse(BuildContext context, StacColumn model) {
    return Column(
      mainAxisAlignment: model.mainAxisAlignment,
      crossAxisAlignment: model.crossAxisAlignment,
      mainAxisSize: model.mainAxisSize,
      textDirection: model.textDirection,
      verticalDirection: model.verticalDirection,
      spacing: model.spacing.parse,
      children: model.children
          .map(
            (value) => Stac.fromJson(value, context) ?? const SizedBox(),
          )
          .toList(),
    );
  }
}
