// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacBorder _$StacBorderFromJson(Map<String, dynamic> json) => StacBorder(
  color: json['color'] as String?,
  borderStyle: $enumDecodeNullable(
    _$StacBorderStyleEnumMap,
    json['borderStyle'],
  ),
  width: (json['width'] as num?)?.toDouble(),
  strokeAlign: (json['strokeAlign'] as num?)?.toDouble(),
  top: json['top'] == null
      ? null
      : StacBorderSide.fromJson(json['top'] as Map<String, dynamic>),
  right: json['right'] == null
      ? null
      : StacBorderSide.fromJson(json['right'] as Map<String, dynamic>),
  bottom: json['bottom'] == null
      ? null
      : StacBorderSide.fromJson(json['bottom'] as Map<String, dynamic>),
  left: json['left'] == null
      ? null
      : StacBorderSide.fromJson(json['left'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacBorderToJson(StacBorder instance) =>
    <String, dynamic>{
      'color': instance.color,
      'borderStyle': _$StacBorderStyleEnumMap[instance.borderStyle],
      'width': instance.width,
      'strokeAlign': instance.strokeAlign,
      'top': instance.top?.toJson(),
      'right': instance.right?.toJson(),
      'bottom': instance.bottom?.toJson(),
      'left': instance.left?.toJson(),
    };

const _$StacBorderStyleEnumMap = {
  StacBorderStyle.none: 'none',
  StacBorderStyle.solid: 'solid',
};
