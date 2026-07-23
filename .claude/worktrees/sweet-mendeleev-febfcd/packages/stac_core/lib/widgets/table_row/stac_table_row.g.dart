// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_table_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacTableRow _$StacTableRowFromJson(Map<String, dynamic> json) => StacTableRow(
  decoration: json['decoration'] == null
      ? null
      : StacBoxDecoration.fromJson(json['decoration'] as Map<String, dynamic>),
  children:
      (json['children'] as List<dynamic>?)
          ?.map((e) => StacWidget.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <StacWidget>[],
);

Map<String, dynamic> _$StacTableRowToJson(StacTableRow instance) =>
    <String, dynamic>{
      'decoration': instance.decoration?.toJson(),
      'children': instance.children.map((e) => e.toJson()).toList(),
    };
