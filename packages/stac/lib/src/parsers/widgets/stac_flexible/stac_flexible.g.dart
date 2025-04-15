// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_flexible.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacFlexible _$StacFlexibleFromJson(Map<String, dynamic> json) =>
    _StacFlexible(
      child: json['child'] as Map<String, dynamic>?,
      flex: (json['flex'] as num?)?.toInt() ?? 1,
      fit: $enumDecodeNullable(_$FlexFitEnumMap, json['fit']) ?? FlexFit.loose,
    );

Map<String, dynamic> _$StacFlexibleToJson(_StacFlexible instance) =>
    <String, dynamic>{
      'child': instance.child,
      'flex': instance.flex,
      'fit': _$FlexFitEnumMap[instance.fit]!,
    };

const _$FlexFitEnumMap = {
  FlexFit.tight: 'tight',
  FlexFit.loose: 'loose',
};
