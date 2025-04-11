// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_table_cell.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacTableCell _$StacTableCellFromJson(Map<String, dynamic> json) =>
    _StacTableCell(
      verticalAlignment: $enumDecodeNullable(
          _$TableCellVerticalAlignmentEnumMap, json['verticalAlignment']),
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacTableCellToJson(_StacTableCell instance) =>
    <String, dynamic>{
      'verticalAlignment':
          _$TableCellVerticalAlignmentEnumMap[instance.verticalAlignment],
      'child': instance.child,
    };

const _$TableCellVerticalAlignmentEnumMap = {
  TableCellVerticalAlignment.top: 'top',
  TableCellVerticalAlignment.middle: 'middle',
  TableCellVerticalAlignment.bottom: 'bottom',
  TableCellVerticalAlignment.baseline: 'baseline',
  TableCellVerticalAlignment.fill: 'fill',
  TableCellVerticalAlignment.intrinsicHeight: 'intrinsicHeight',
};
