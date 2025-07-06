// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacBorder _$StacBorderFromJson(Map<String, dynamic> json) => _StacBorder(
      color: json['color'] as String?,
      borderStyle:
          $enumDecodeNullable(_$BorderStyleEnumMap, json['borderStyle']) ??
              BorderStyle.solid,
      width: json['width'] == null
          ? const StacDouble(1.0)
          : StacDouble.fromJson(json['width']),
      strokeAlign: json['strokeAlign'] == null
          ? const StacDouble(BorderSide.strokeAlignInside)
          : StacDouble.fromJson(json['strokeAlign']),
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

Map<String, dynamic> _$StacBorderToJson(_StacBorder instance) =>
    <String, dynamic>{
      'color': instance.color,
      'borderStyle': _$BorderStyleEnumMap[instance.borderStyle]!,
      'width': instance.width,
      'strokeAlign': instance.strokeAlign,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
      'left': instance.left,
    };

const _$BorderStyleEnumMap = {
  BorderStyle.none: 'none',
  BorderStyle.solid: 'solid',
};
