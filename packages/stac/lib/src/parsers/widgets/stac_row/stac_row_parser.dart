import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_row/stac_row.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacRowParser extends StacParser<StacRow> {
  const StacRowParser();

  @override
  StacRow getModel(Map<String, dynamic> json) => StacRow.fromJson(json);

  @override
  String get type => WidgetType.row.name;

  @override
  Widget parse(BuildContext context, StacRow model) {
    return Row(
      mainAxisAlignment: model.mainAxisAlignment,
      crossAxisAlignment: model.crossAxisAlignment,
      mainAxisSize: model.mainAxisSize,
      textDirection: model.textDirection,
      verticalDirection: model.verticalDirection,
      spacing: model.spacing,
      children: model.children
          .map((value) => Stac.fromJson(value, context) ?? const SizedBox())
          .toList(),
    );
  }
}
