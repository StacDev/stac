import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_children.dart';
import 'package:stac/src/parsers/foundation/alignment/stac_cross_axis_alignment_parser.dart';
import 'package:stac/src/parsers/foundation/alignment/stac_main_axis_alignment_parser.dart';
import 'package:stac/src/parsers/foundation/alignment/stac_main_axis_size_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_vertical_direction_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_direction_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacColumnParser extends StacParser<StacColumn> {
  const StacColumnParser();

  @override
  StacColumn getModel(Map<String, dynamic> json) => StacColumn.fromJson(json);

  @override
  String get type => StacColumn().type;

  @override
  Widget parse(BuildContext context, StacColumn model) {
    final children = StacChildren(
      context,
      children: model.children,
      items: model.items,
      itemTemplate: model.itemTemplate,
      keyPath: model.keyPath,
    );
    final empty = children.emptyReplacement(context, model.emptyWidget);
    if (empty != null) return empty;

    return Column(
      mainAxisAlignment:
          model.mainAxisAlignment?.parse ?? MainAxisAlignment.start,
      crossAxisAlignment:
          model.crossAxisAlignment?.parse ?? CrossAxisAlignment.center,
      mainAxisSize: model.mainAxisSize?.parse ?? MainAxisSize.max,
      textDirection: model.textDirection?.parse,
      verticalDirection:
          model.verticalDirection?.parse ?? VerticalDirection.down,
      spacing: model.spacing ?? 0,
      children: children.buildAll(context),
    );
  }
}
