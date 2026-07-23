import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/alignment/stac_alignment_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_box_fit_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacFittedBoxParser extends StacParser<StacFittedBox> {
  const StacFittedBoxParser();

  @override
  String get type => WidgetType.fittedBox.name;

  @override
  StacFittedBox getModel(Map<String, dynamic> json) =>
      StacFittedBox.fromJson(json);

  @override
  Widget parse(BuildContext context, StacFittedBox model) {
    return FittedBox(
      fit: model.fit?.parse ?? BoxFit.contain,
      alignment: model.alignment?.parse ?? Alignment.center,
      clipBehavior: model.clipBehavior?.parse ?? Clip.none,
      child: model.child.parse(context),
    );
  }
}
