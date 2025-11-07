import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_axis_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_vertical_direction_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_wrap_alignment_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_wrap_cross_alignment_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_direction_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacWrapParser extends StacParser<StacWrap> {
  const StacWrapParser();

  @override
  String get type => WidgetType.wrap.name;

  @override
  StacWrap getModel(Map<String, dynamic> json) => StacWrap.fromJson(json);

  @override
  Widget parse(BuildContext context, StacWrap model) {
    return Wrap(
      direction: model.direction?.parse ?? Axis.horizontal,
      alignment: model.alignment?.parse ?? WrapAlignment.start,
      spacing: model.spacing ?? 0.0,
      runAlignment: model.runAlignment?.parse ?? WrapAlignment.start,
      runSpacing: model.runSpacing ?? 0.0,
      crossAxisAlignment:
          model.crossAxisAlignment?.parse ?? WrapCrossAlignment.start,
      textDirection: model.textDirection?.parse,
      verticalDirection:
          model.verticalDirection?.parse ?? VerticalDirection.down,
      clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
      children: model.children?.parseList(context) ?? const <Widget>[],
    );
  }
}
