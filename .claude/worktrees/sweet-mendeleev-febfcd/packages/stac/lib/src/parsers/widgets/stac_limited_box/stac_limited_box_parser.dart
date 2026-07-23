import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_core/widgets/limited_box/stac_limited_box.dart';

class StacLimitedBoxParser extends StacParser<StacLimitedBox> {
  const StacLimitedBoxParser();

  @override
  String get type => StacLimitedBox().type;

  @override
  StacLimitedBox getModel(Map<String, dynamic> json) =>
      StacLimitedBox.fromJson(json);

  @override
  Widget parse(BuildContext context, StacLimitedBox model) {
    return LimitedBox(
      maxHeight: model.maxHeight ?? double.infinity,
      maxWidth: model.maxWidth ?? double.infinity,
      child: model.child.parse(context),
    );
  }
}
