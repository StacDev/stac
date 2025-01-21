import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai/src/utils/widget_type.dart';

class MiraiTableParser extends MiraiParser<MiraiTable> {
  const MiraiTableParser();

  @override
  MiraiTable getModel(Map<String, dynamic> json) => MiraiTable.fromJson(json);

  @override
  String get type => WidgetType.table.name;

  @override
  Widget parse(BuildContext context, MiraiTable model) {
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

extension MiraiTableRowParser on MiraiTableRow {
  TableRow parse(BuildContext context) {
    return TableRow(
      decoration: decoration.parse(context),
      children: children
          .map((json) => Mirai.fromJson(json, context) ?? const SizedBox())
          .toList(),
    );
  }
}

extension MiraiTableBorderParser on MiraiTableBorder {
  TableBorder parse(BuildContext context) {
    return TableBorder.all(
      color: color.toColor(context) ?? Colors.black,
      width: width,
      style: style,
      borderRadius: borderRadius.parse,
    );
  }
}

extension MiraiTableColumnWidthParser on MiraiTableColumnWidth {
  TableColumnWidth get parse {
    switch (type) {
      case MiraiTableColumnWidthType.fixedColumnWidth:
        return FixedColumnWidth(value!);
      case MiraiTableColumnWidthType.flexColumnWidth:
        return FlexColumnWidth(value!);
      case MiraiTableColumnWidthType.fractionColumnWidth:
        return FractionColumnWidth(value!);
      case MiraiTableColumnWidthType.intrinsicColumnWidth:
        return IntrinsicColumnWidth(flex: value!);
    }
  }
}
