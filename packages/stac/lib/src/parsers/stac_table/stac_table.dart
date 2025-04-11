import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/stac.dart';

export 'package:stac/src/parsers/stac_table/stac_table_parser.dart';

part 'stac_table.freezed.dart';
part 'stac_table.g.dart';

enum StacTableColumnWidthType {
  fixedColumnWidth,
  flexColumnWidth,
  fractionColumnWidth,
  intrinsicColumnWidth
}

@freezed
abstract class StacTable with _$StacTable {
  const factory StacTable({
    @Default([]) List<StacTableRow> children,
    Map<int, StacTableColumnWidth>? columnWidths,
    StacTableColumnWidth? defaultColumnWidth,
    TextDirection? textDirection,
    StacTableBorder? border,
    @Default(TableCellVerticalAlignment.top)
    TableCellVerticalAlignment defaultVerticalAlignment,
    TextBaseline? textBaseline,
  }) = _StacTable;

  factory StacTable.fromJson(Map<String, dynamic> json) =>
      _$StacTableFromJson(json);
}

@freezed
abstract class StacTableRow with _$StacTableRow {
  const factory StacTableRow({
    StacBoxDecoration? decoration,
    @Default([]) List<Map<String, dynamic>> children,
  }) = _StacTableRow;

  factory StacTableRow.fromJson(Map<String, dynamic> json) =>
      _$StacTableRowFromJson(json);
}

@freezed
abstract class StacTableBorder with _$StacTableBorder {
  const factory StacTableBorder({
    @Default('#000000') String color,
    @Default(1.0) double width,
    @Default(BorderStyle.solid) BorderStyle style,
    @Default(StacBorderRadius()) StacBorderRadius borderRadius,
  }) = _StacTableBorder;

  factory StacTableBorder.fromJson(Map<String, dynamic> json) =>
      _$StacTableBorderFromJson(json);
}

@freezed
abstract class StacTableColumnWidth with _$StacTableColumnWidth {
  const factory StacTableColumnWidth({
    @Default(StacTableColumnWidthType.flexColumnWidth)
    StacTableColumnWidthType type,
    double? value,
  }) = _StacTableColumnWidth;

  factory StacTableColumnWidth.fromJson(Map<String, dynamic> json) =>
      _$StacTableColumnWidthFromJson(json);
}
