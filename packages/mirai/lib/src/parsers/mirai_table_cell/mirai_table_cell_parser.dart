import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai/src/utils/widget_type.dart';

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
