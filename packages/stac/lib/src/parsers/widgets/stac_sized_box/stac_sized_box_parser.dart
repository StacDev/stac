import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_sized_box/stac_sized_box.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacSizedBoxParser extends StacParser<StacSizedBox> {
  const StacSizedBoxParser();

  @override
  StacSizedBox getModel(Map<String, dynamic> json) =>
      StacSizedBox.fromJson(json);

  @override
  String get type => WidgetType.sizedBox.name;

  @override
  Widget parse(BuildContext context, StacSizedBox model) {
    return SizedBox(
      width: model.width,
      height: model.height,
      child: Stac.fromJson(model.child, context),
    );
  }
}
