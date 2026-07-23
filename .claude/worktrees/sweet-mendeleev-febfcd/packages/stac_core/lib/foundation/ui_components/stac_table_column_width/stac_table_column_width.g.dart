// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_table_column_width.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacTableColumnWidth _$StacTableColumnWidthFromJson(
  Map<String, dynamic> json,
) => StacTableColumnWidth(
  type:
      $enumDecodeNullable(_$StacTableColumnWidthTypeEnumMap, json['type']) ??
      StacTableColumnWidthType.flexColumnWidth,
  value: const DoubleConverter().fromJson(json['value']),
);

Map<String, dynamic> _$StacTableColumnWidthToJson(
  StacTableColumnWidth instance,
) => <String, dynamic>{
  'type': _$StacTableColumnWidthTypeEnumMap[instance.type]!,
  'value': const DoubleConverter().toJson(instance.value),
};

const _$StacTableColumnWidthTypeEnumMap = {
  StacTableColumnWidthType.fixedColumnWidth: 'fixedColumnWidth',
  StacTableColumnWidthType.flexColumnWidth: 'flexColumnWidth',
  StacTableColumnWidthType.fractionColumnWidth: 'fractionColumnWidth',
  StacTableColumnWidthType.intrinsicColumnWidth: 'intrinsicColumnWidth',
};
