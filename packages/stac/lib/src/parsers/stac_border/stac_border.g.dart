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
      width: (json['width'] as num?)?.toDouble() ?? 1.0,
      strokeAlign: (json['strokeAlign'] as num?)?.toDouble() ??
          BorderSide.strokeAlignInside,
    );

Map<String, dynamic> _$StacBorderToJson(_StacBorder instance) =>
    <String, dynamic>{
      'color': instance.color,
      'borderStyle': _$BorderStyleEnumMap[instance.borderStyle]!,
      'width': instance.width,
      'strokeAlign': instance.strokeAlign,
    };

const _$BorderStyleEnumMap = {
  BorderStyle.none: 'none',
  BorderStyle.solid: 'solid',
};
