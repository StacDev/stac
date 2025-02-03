// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_input_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacInputBorderImpl _$$StacInputBorderImplFromJson(
        Map<String, dynamic> json) =>
    _$StacInputBorderImpl(
      type: $enumDecodeNullable(_$StacInputBorderTypeEnumMap, json['type']) ??
          StacInputBorderType.underlineInputBorder,
      borderRadius: json['borderRadius'] == null
          ? null
          : StacBorderRadius.fromJson(json['borderRadius']),
      gapPadding: (json['gapPadding'] as num?)?.toDouble() ?? 4.0,
      width: (json['width'] as num?)?.toDouble() ?? 0.0,
      color: json['color'] as String?,
      gradient: json['gradient'] == null
          ? null
          : StacGradient.fromJson(json['gradient'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StacInputBorderImplToJson(
        _$StacInputBorderImpl instance) =>
    <String, dynamic>{
      'type': _$StacInputBorderTypeEnumMap[instance.type]!,
      'borderRadius': instance.borderRadius,
      'gapPadding': instance.gapPadding,
      'width': instance.width,
      'color': instance.color,
      'gradient': instance.gradient,
    };

const _$StacInputBorderTypeEnumMap = {
  StacInputBorderType.none: 'none',
  StacInputBorderType.underlineInputBorder: 'underlineInputBorder',
  StacInputBorderType.outlineInputBorder: 'outlineInputBorder',
};
