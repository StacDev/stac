import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/mirai.dart';

export 'package:mirai/src/parsers/mirai_table/mirai_table_parser.dart';

part 'mirai_table.freezed.dart';
part 'mirai_table.g.dart';

enum MiraiTableColumnWidthType {
  fixedColumnWidth,
  flexColumnWidth,
  fractionColumnWidth,
  intrinsicColumnWidth
}

@freezed
class MiraiTable with _$MiraiTable {
  const factory MiraiTable({
    @Default([]) List<MiraiTableRow> children,
    Map<int, MiraiTableColumnWidth>? columnWidths,
    MiraiTableColumnWidth? defaultColumnWidth,
    TextDirection? textDirection,
    MiraiTableBorder? border,
    @Default(TableCellVerticalAlignment.top)
    TableCellVerticalAlignment defaultVerticalAlignment,
    TextBaseline? textBaseline,
  }) = _MiraiTable;

  factory MiraiTable.fromJson(Map<String, dynamic> json) =>
      _$MiraiTableFromJson(json);
}

@freezed
class MiraiTableRow with _$MiraiTableRow {
  const factory MiraiTableRow({
    MiraiBoxDecoration? decoration,
    @Default([]) List<Map<String, dynamic>> children,
  }) = _MiraiTableRow;

  factory MiraiTableRow.fromJson(Map<String, dynamic> json) =>
      _$MiraiTableRowFromJson(json);
}

@freezed
class MiraiTableBorder with _$MiraiTableBorder {
  const factory MiraiTableBorder({
    @Default('#000000') String color,
    @Default(1.0) double width,
    @Default(BorderStyle.solid) BorderStyle style,
    @Default(MiraiBorderRadius()) MiraiBorderRadius borderRadius,
  }) = _MiraiTableBorder;

  factory MiraiTableBorder.fromJson(Map<String, dynamic> json) =>
      _$MiraiTableBorderFromJson(json);
}

@freezed
class MiraiTableColumnWidth with _$MiraiTableColumnWidth {
  const factory MiraiTableColumnWidth({
    @Default(MiraiTableColumnWidthType.flexColumnWidth)
    MiraiTableColumnWidthType type,
    double? value,
  }) = _MiraiTableColumnWidth;

  factory MiraiTableColumnWidth.fromJson(Map<String, dynamic> json) =>
      _$MiraiTableColumnWidthFromJson(json);
}
