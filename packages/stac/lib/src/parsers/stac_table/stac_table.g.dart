// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacTableImpl _$$StacTableImplFromJson(Map<String, dynamic> json) =>
    _$StacTableImpl(
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => StacTableRow.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      columnWidths: (json['columnWidths'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k),
            StacTableColumnWidth.fromJson(e as Map<String, dynamic>)),
      ),
      defaultColumnWidth: json['defaultColumnWidth'] == null
          ? null
          : StacTableColumnWidth.fromJson(
              json['defaultColumnWidth'] as Map<String, dynamic>),
      textDirection:
          $enumDecodeNullable(_$TextDirectionEnumMap, json['textDirection']),
      border: json['border'] == null
          ? null
          : StacTableBorder.fromJson(json['border'] as Map<String, dynamic>),
      defaultVerticalAlignment: $enumDecodeNullable(
              _$TableCellVerticalAlignmentEnumMap,
              json['defaultVerticalAlignment']) ??
          TableCellVerticalAlignment.top,
      textBaseline:
          $enumDecodeNullable(_$TextBaselineEnumMap, json['textBaseline']),
    );

Map<String, dynamic> _$$StacTableImplToJson(_$StacTableImpl instance) =>
    <String, dynamic>{
      'children': instance.children,
      'columnWidths':
          instance.columnWidths?.map((k, e) => MapEntry(k.toString(), e)),
      'defaultColumnWidth': instance.defaultColumnWidth,
      'textDirection': _$TextDirectionEnumMap[instance.textDirection],
      'border': instance.border,
      'defaultVerticalAlignment': _$TableCellVerticalAlignmentEnumMap[
          instance.defaultVerticalAlignment]!,
      'textBaseline': _$TextBaselineEnumMap[instance.textBaseline],
    };

const _$TextDirectionEnumMap = {
  TextDirection.rtl: 'rtl',
  TextDirection.ltr: 'ltr',
};

const _$TableCellVerticalAlignmentEnumMap = {
  TableCellVerticalAlignment.top: 'top',
  TableCellVerticalAlignment.middle: 'middle',
  TableCellVerticalAlignment.bottom: 'bottom',
  TableCellVerticalAlignment.baseline: 'baseline',
  TableCellVerticalAlignment.fill: 'fill',
  TableCellVerticalAlignment.intrinsicHeight: 'intrinsicHeight',
};

const _$TextBaselineEnumMap = {
  TextBaseline.alphabetic: 'alphabetic',
  TextBaseline.ideographic: 'ideographic',
};

_$StacTableRowImpl _$$StacTableRowImplFromJson(Map<String, dynamic> json) =>
    _$StacTableRowImpl(
      decoration: json['decoration'] == null
          ? null
          : StacBoxDecoration.fromJson(
              json['decoration'] as Map<String, dynamic>),
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$StacTableRowImplToJson(_$StacTableRowImpl instance) =>
    <String, dynamic>{
      'decoration': instance.decoration,
      'children': instance.children,
    };

_$StacTableBorderImpl _$$StacTableBorderImplFromJson(
        Map<String, dynamic> json) =>
    _$StacTableBorderImpl(
      color: json['color'] as String? ?? '#000000',
      width: (json['width'] as num?)?.toDouble() ?? 1.0,
      style: $enumDecodeNullable(_$BorderStyleEnumMap, json['style']) ??
          BorderStyle.solid,
      borderRadius: json['borderRadius'] == null
          ? const StacBorderRadius()
          : StacBorderRadius.fromJson(json['borderRadius']),
    );

Map<String, dynamic> _$$StacTableBorderImplToJson(
        _$StacTableBorderImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'width': instance.width,
      'style': _$BorderStyleEnumMap[instance.style]!,
      'borderRadius': instance.borderRadius,
    };

const _$BorderStyleEnumMap = {
  BorderStyle.none: 'none',
  BorderStyle.solid: 'solid',
};

_$StacTableColumnWidthImpl _$$StacTableColumnWidthImplFromJson(
        Map<String, dynamic> json) =>
    _$StacTableColumnWidthImpl(
      type: $enumDecodeNullable(
              _$StacTableColumnWidthTypeEnumMap, json['type']) ??
          StacTableColumnWidthType.flexColumnWidth,
      value: (json['value'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$StacTableColumnWidthImplToJson(
        _$StacTableColumnWidthImpl instance) =>
    <String, dynamic>{
      'type': _$StacTableColumnWidthTypeEnumMap[instance.type]!,
      'value': instance.value,
    };

const _$StacTableColumnWidthTypeEnumMap = {
  StacTableColumnWidthType.fixedColumnWidth: 'fixedColumnWidth',
  StacTableColumnWidthType.flexColumnWidth: 'flexColumnWidth',
  StacTableColumnWidthType.fractionColumnWidth: 'fractionColumnWidth',
  StacTableColumnWidthType.intrinsicColumnWidth: 'intrinsicColumnWidth',
};
