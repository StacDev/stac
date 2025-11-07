// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacTable _$StacTableFromJson(Map<String, dynamic> json) => StacTable(
  children:
      (json['children'] as List<dynamic>?)
          ?.map((e) => StacTableRow.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <StacTableRow>[],
  columnWidths: (json['columnWidths'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(
      int.parse(k),
      StacTableColumnWidth.fromJson(e as Map<String, dynamic>),
    ),
  ),
  defaultColumnWidth: json['defaultColumnWidth'] == null
      ? null
      : StacTableColumnWidth.fromJson(
          json['defaultColumnWidth'] as Map<String, dynamic>,
        ),
  textDirection: $enumDecodeNullable(
    _$StacTextDirectionEnumMap,
    json['textDirection'],
  ),
  border: json['border'] == null
      ? null
      : StacTableBorder.fromJson(json['border'] as Map<String, dynamic>),
  defaultVerticalAlignment: $enumDecodeNullable(
    _$StacTableCellVerticalAlignmentEnumMap,
    json['defaultVerticalAlignment'],
  ),
  textBaseline: $enumDecodeNullable(
    _$StacTextBaselineEnumMap,
    json['textBaseline'],
  ),
);

Map<String, dynamic> _$StacTableToJson(StacTable instance) => <String, dynamic>{
  'children': instance.children.map((e) => e.toJson()).toList(),
  'columnWidths': instance.columnWidths?.map(
    (k, e) => MapEntry(k.toString(), e.toJson()),
  ),
  'defaultColumnWidth': instance.defaultColumnWidth?.toJson(),
  'textDirection': _$StacTextDirectionEnumMap[instance.textDirection],
  'border': instance.border?.toJson(),
  'defaultVerticalAlignment':
      _$StacTableCellVerticalAlignmentEnumMap[instance
          .defaultVerticalAlignment],
  'textBaseline': _$StacTextBaselineEnumMap[instance.textBaseline],
  'type': instance.type,
};

const _$StacTextDirectionEnumMap = {
  StacTextDirection.rtl: 'rtl',
  StacTextDirection.ltr: 'ltr',
};

const _$StacTableCellVerticalAlignmentEnumMap = {
  StacTableCellVerticalAlignment.top: 'top',
  StacTableCellVerticalAlignment.middle: 'middle',
  StacTableCellVerticalAlignment.bottom: 'bottom',
  StacTableCellVerticalAlignment.baseline: 'baseline',
  StacTableCellVerticalAlignment.fill: 'fill',
};

const _$StacTextBaselineEnumMap = {
  StacTextBaseline.alphabetic: 'alphabetic',
  StacTextBaseline.ideographic: 'ideographic',
};
