import 'package:material_ui/material_ui.dart';
import 'package:stac/src/parsers/core/stac_items_binding.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/alignment/stac_cross_axis_alignment_parser.dart';
import 'package:stac/src/parsers/foundation/alignment/stac_main_axis_alignment_parser.dart';
import 'package:stac/src/parsers/foundation/alignment/stac_main_axis_size_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_vertical_direction_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_baseline_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_direction_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacRowParser extends StacParser<StacRow> {
  const StacRowParser();

  @override
  StacRow getModel(Map<String, dynamic> json) => StacRow.fromJson(json);

  @override
  String get type => StacRow().type;

  @override
  Widget parse(BuildContext context, StacRow model) {
    final crossAxisAlignment =
        model.crossAxisAlignment?.parse ?? CrossAxisAlignment.center;
    return buildWithItems(
      context,
      items: model.items,
      itemTemplate: model.itemTemplate,
      emptyTemplate: model.emptyTemplate,
      children: model.children,
      builder: (context, children) => Row(
        mainAxisAlignment:
            model.mainAxisAlignment?.parse ?? MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisSize: model.mainAxisSize?.parse ?? MainAxisSize.max,
        textDirection: model.textDirection?.parse,
        // Baseline alignment needs a baseline: use the alphabetic one when the
        // JSON sets none.
        textBaseline:
            model.textBaseline?.parse ??
            (crossAxisAlignment == CrossAxisAlignment.baseline
                ? TextBaseline.alphabetic
                : null),
        verticalDirection:
            model.verticalDirection?.parse ?? VerticalDirection.down,
        spacing: model.spacing ?? 0,
        children: children.parseList(context) ?? [],
      ),
    );
  }
}
