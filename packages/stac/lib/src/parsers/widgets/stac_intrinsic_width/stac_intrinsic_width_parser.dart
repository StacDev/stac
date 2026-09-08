import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_core/widgets/intrinsic_width/stac_intrinsic_width.dart';

class StacIntrinsicWidthParser extends StacParser<StacIntrinsicWidth> {
  const StacIntrinsicWidthParser();

  @override
  String get type => StacIntrinsicWidth().type;

  @override
  StacIntrinsicWidth getModel(Map<String, dynamic> json) =>
      StacIntrinsicWidth.fromJson(json);

  @override
  Widget parse(BuildContext context, StacIntrinsicWidth model) {
    return IntrinsicWidth(
      stepWidth: model.stepWidth,
      stepHeight: model.stepHeight,
      child: model.child.parse(context),
    );
  }
}
