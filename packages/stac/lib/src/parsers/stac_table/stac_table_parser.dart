import 'package:flutter/material.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac/stac.dart';

class StacTableParser extends StacParser<StacTable> {
  const StacTableParser();

  @override
  StacTable getModel(Map<String, dynamic> json) => StacTable.fromJson(json);

  @override
  String get type => WidgetType.table.name;

  @override
  Widget parse(BuildContext context, StacTable model) {
    return Table(
      children:
          model.children.map((tableRow) => tableRow.parse(context)).toList(),
      columnWidths:
          model.columnWidths?.map((key, value) => MapEntry(key, value.parse)),
      defaultColumnWidth:
          model.defaultColumnWidth?.parse ?? const FlexColumnWidth(),
      textDirection: model.textDirection,
      border: model.border?.parse(context),
      defaultVerticalAlignment: model.defaultVerticalAlignment,
      textBaseline: model.textBaseline,
    );
  }
}

extension StacTableRowParser on StacTableRow {
  TableRow parse(BuildContext context) {
    return TableRow(
      decoration: decoration.parse(context),
      children: children
          .map((json) => Stac.fromJson(json, context) ?? const SizedBox())
          .toList(),
    );
  }
}

extension StacTableBorderParser on StacTableBorder {
  TableBorder parse(BuildContext context) {
    return TableBorder.all(
      color: color.toColor(context) ?? Colors.black,
      width: width,
      style: style,
      borderRadius: borderRadius.parse,
    );
  }
}

extension StacTableColumnWidthParser on StacTableColumnWidth {
  TableColumnWidth get parse {
    switch (type) {
      case StacTableColumnWidthType.fixedColumnWidth:
        return FixedColumnWidth(value!);
      case StacTableColumnWidthType.flexColumnWidth:
        return FlexColumnWidth(value!);
      case StacTableColumnWidthType.fractionColumnWidth:
        return FractionColumnWidth(value!);
      case StacTableColumnWidthType.intrinsicColumnWidth:
        return IntrinsicColumnWidth(flex: value!);
    }
  }
}
