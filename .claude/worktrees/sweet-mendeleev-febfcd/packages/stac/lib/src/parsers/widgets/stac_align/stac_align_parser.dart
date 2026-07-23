import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/alignment/stac_alignment_directional_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacAlignParser extends StacParser<StacAlign> {
  const StacAlignParser();

  @override
  String get type => WidgetType.align.name;

  @override
  StacAlign getModel(Map<String, dynamic> json) => StacAlign.fromJson(json);

  @override
  Widget parse(BuildContext context, StacAlign model) {
    return Align(
      alignment: model.alignment?.parse ?? Alignment.center,
      heightFactor: model.heightFactor,
      widthFactor: model.widthFactor,
      child: model.child?.parse(context),
    );
  }
}
