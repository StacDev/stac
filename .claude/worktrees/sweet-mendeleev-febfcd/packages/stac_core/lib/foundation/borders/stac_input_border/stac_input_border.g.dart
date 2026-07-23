// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_input_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacInputBorder _$StacInputBorderFromJson(Map<String, dynamic> json) =>
    StacInputBorder(
      type:
          $enumDecodeNullable(_$StacInputBorderTypeEnumMap, json['type']) ??
          StacInputBorderType.underlineInputBorder,
      borderRadius: json['borderRadius'] == null
          ? null
          : StacBorderRadius.fromJson(json['borderRadius']),
      gapPadding: const DoubleConverter().fromJson(json['gapPadding']),
      width: const DoubleConverter().fromJson(json['width']),
      color: json['color'] as String?,
      gradient: json['gradient'] == null
          ? null
          : StacGradient.fromJson(json['gradient'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacInputBorderToJson(StacInputBorder instance) =>
    <String, dynamic>{
      'type': _$StacInputBorderTypeEnumMap[instance.type]!,
      'borderRadius': instance.borderRadius?.toJson(),
      'gapPadding': const DoubleConverter().toJson(instance.gapPadding),
      'width': const DoubleConverter().toJson(instance.width),
      'color': instance.color,
      'gradient': instance.gradient?.toJson(),
    };

const _$StacInputBorderTypeEnumMap = {
  StacInputBorderType.none: 'none',
  StacInputBorderType.underlineInputBorder: 'underlineInputBorder',
  StacInputBorderType.outlineInputBorder: 'outlineInputBorder',
};
