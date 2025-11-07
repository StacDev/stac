import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_baseline_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_direction_parser.dart';
import 'package:stac/src/parsers/foundation/ui_components/stac_table_border_parser.dart';
import 'package:stac/src/parsers/foundation/ui_components/stac_table_cell_vertical_alignment_parser.dart';
import 'package:stac/src/parsers/foundation/ui_components/stac_table_column_width_parser.dart';
import 'package:stac/src/parsers/foundation/ui_components/stac_table_row_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacTableParser extends StacParser<StacTable> {
  const StacTableParser();

  @override
  StacTable getModel(Map<String, dynamic> json) => StacTable.fromJson(json);

  @override
  String get type => WidgetType.table.name;

  @override
  Widget parse(BuildContext context, StacTable model) {
    return Table(
      children: model.children.map((row) => row.parse(context)).toList(),
      columnWidths: model.columnWidths?.map(
        (key, value) => MapEntry(key, value.parse),
      ),
      defaultColumnWidth: model.defaultColumnWidth != null
          ? model.defaultColumnWidth!.parse
          : const FlexColumnWidth(),
      textDirection: model.textDirection?.parse,
      border: model.border != null
          ? StacTableBorderParser(model.border!).parse(context)
          : null,
      defaultVerticalAlignment:
          model.defaultVerticalAlignment?.parse ??
          TableCellVerticalAlignment.top,
      textBaseline: model.textBaseline?.parse,
    );
  }
}
