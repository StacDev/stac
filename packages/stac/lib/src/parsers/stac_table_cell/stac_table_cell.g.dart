// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_table_cell.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacTableCellImpl _$$StacTableCellImplFromJson(Map<String, dynamic> json) =>
    _$StacTableCellImpl(
      verticalAlignment: $enumDecodeNullable(
          _$TableCellVerticalAlignmentEnumMap, json['verticalAlignment']),
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$StacTableCellImplToJson(_$StacTableCellImpl instance) =>
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
