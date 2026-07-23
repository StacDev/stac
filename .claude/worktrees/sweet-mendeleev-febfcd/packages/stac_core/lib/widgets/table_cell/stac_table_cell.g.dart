// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_table_cell.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacTableCell _$StacTableCellFromJson(Map<String, dynamic> json) =>
    StacTableCell(
      verticalAlignment: $enumDecodeNullable(
        _$StacTableCellVerticalAlignmentEnumMap,
        json['verticalAlignment'],
      ),
      child: json['child'] == null
          ? null
          : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacTableCellToJson(StacTableCell instance) =>
    <String, dynamic>{
      'verticalAlignment':
          _$StacTableCellVerticalAlignmentEnumMap[instance.verticalAlignment],
      'child': instance.child?.toJson(),
      'type': instance.type,
    };

const _$StacTableCellVerticalAlignmentEnumMap = {
  StacTableCellVerticalAlignment.top: 'top',
  StacTableCellVerticalAlignment.middle: 'middle',
  StacTableCellVerticalAlignment.bottom: 'bottom',
  StacTableCellVerticalAlignment.baseline: 'baseline',
  StacTableCellVerticalAlignment.fill: 'fill',
};
