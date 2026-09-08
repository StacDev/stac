import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_core/widgets/intrinsic_height/stac_intrinsic_height.dart';

class StacIntrinsicHeightParser extends StacParser<StacIntrinsicHeight> {
  const StacIntrinsicHeightParser();

  @override
  String get type => StacIntrinsicHeight().type;

  @override
  StacIntrinsicHeight getModel(Map<String, dynamic> json) =>
      StacIntrinsicHeight.fromJson(json);

  @override
  Widget parse(BuildContext context, StacIntrinsicHeight model) {
    return IntrinsicHeight(child: model.child.parse(context));
  }
}
