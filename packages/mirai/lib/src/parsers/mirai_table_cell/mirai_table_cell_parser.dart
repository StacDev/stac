import 'package:flutter/material.dart';
import 'package:mirai/src/parsers/mirai_table_cell/mirai_table_cell.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiTableCellParser extends MiraiParser<MiraiTableCell> {
  const MiraiTableCellParser();

  @override
  String get type => WidgetType.tableCell.name;

  @override
  MiraiTableCell getModel(Map<String, dynamic> json) =>
      MiraiTableCell.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiTableCell model) {
    return TableCell(
      verticalAlignment: model.verticalAlignment,
      child: Mirai.fromJson(model.child, context) ?? const SizedBox(),
    );
  }
}
