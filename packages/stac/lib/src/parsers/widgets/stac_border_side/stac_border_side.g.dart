// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_border_side.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacBorderSide _$StacBorderSideFromJson(Map<String, dynamic> json) =>
    _StacBorderSide(
      color: json['color'] as String?,
      width: json['width'] == null
          ? const StacDouble(1.0)
          : StacDouble.fromJson(json['width']),
      strokeAlign: json['strokeAlign'] == null
          ? const StacDouble(BorderSide.strokeAlignInside)
          : StacDouble.fromJson(json['strokeAlign']),
      borderStyle:
          $enumDecodeNullable(_$BorderStyleEnumMap, json['borderStyle']) ??
              BorderStyle.solid,
    );

Map<String, dynamic> _$StacBorderSideToJson(_StacBorderSide instance) =>
    <String, dynamic>{
      'color': instance.color,
      'width': instance.width,
      'strokeAlign': instance.strokeAlign,
      'borderStyle': _$BorderStyleEnumMap[instance.borderStyle]!,
    };

const _$BorderStyleEnumMap = {
  BorderStyle.none: 'none',
  BorderStyle.solid: 'solid',
};
