// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_border_side.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacBorderSide _$StacBorderSideFromJson(Map<String, dynamic> json) =>
    StacBorderSide(
      color: json['color'] as String?,
      width: (json['width'] as num?)?.toDouble(),
      strokeAlign: (json['strokeAlign'] as num?)?.toDouble(),
      borderStyle: $enumDecodeNullable(
        _$StacBorderStyleEnumMap,
        json['borderStyle'],
      ),
    );

Map<String, dynamic> _$StacBorderSideToJson(StacBorderSide instance) =>
    <String, dynamic>{
      'color': instance.color,
      'width': instance.width,
      'strokeAlign': instance.strokeAlign,
      'borderStyle': _$StacBorderStyleEnumMap[instance.borderStyle],
    };

const _$StacBorderStyleEnumMap = {
  StacBorderStyle.none: 'none',
  StacBorderStyle.solid: 'solid',
};
