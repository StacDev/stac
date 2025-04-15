import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_limited_box/stac_limited_box.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacLimitedBoxParser extends StacParser<StacLimitedBox> {
  const StacLimitedBoxParser();

  @override
  String get type => WidgetType.limitedBox.name;

  @override
  StacLimitedBox getModel(Map<String, dynamic> json) =>
      StacLimitedBox.fromJson(json);

  @override
  Widget parse(BuildContext context, StacLimitedBox model) {
    return LimitedBox(
      maxHeight: model.maxHeight,
      maxWidth: model.maxWidth,
      child: Stac.fromJson(model.child, context),
    );
  }
}
