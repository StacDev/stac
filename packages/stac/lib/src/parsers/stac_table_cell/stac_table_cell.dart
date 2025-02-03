import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'stac_table_cell_parser.dart';

part 'stac_table_cell.freezed.dart';
part 'stac_table_cell.g.dart';

@freezed
class StacTableCell with _$StacTableCell {
  const factory StacTableCell({
    TableCellVerticalAlignment? verticalAlignment,
    Map<String, dynamic>? child,
  }) = _StacTableCell;

  factory StacTableCell.fromJson(Map<String, dynamic> json) =>
      _$StacTableCellFromJson(json);
}
