// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_table_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacTableBorder _$StacTableBorderFromJson(Map<String, dynamic> json) =>
    StacTableBorder(
      color: json['color'] as String?,
      width: const DoubleConverter().fromJson(json['width']),
      style: $enumDecodeNullable(_$StacBorderStyleEnumMap, json['style']),
      borderRadius: json['borderRadius'] == null
          ? null
          : StacBorderRadius.fromJson(json['borderRadius']),
    );

Map<String, dynamic> _$StacTableBorderToJson(StacTableBorder instance) =>
    <String, dynamic>{
      'color': instance.color,
      'width': const DoubleConverter().toJson(instance.width),
      'style': _$StacBorderStyleEnumMap[instance.style],
      'borderRadius': instance.borderRadius?.toJson(),
    };

const _$StacBorderStyleEnumMap = {
  StacBorderStyle.none: 'none',
  StacBorderStyle.solid: 'solid',
};
