// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_flexible.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiFlexibleImpl _$$MiraiFlexibleImplFromJson(Map<String, dynamic> json) =>
    _$MiraiFlexibleImpl(
      child: json['child'] as Map<String, dynamic>?,
      flex: (json['flex'] as num?)?.toInt() ?? 1,
      fit: $enumDecodeNullable(_$FlexFitEnumMap, json['fit']) ?? FlexFit.loose,
    );

Map<String, dynamic> _$$MiraiFlexibleImplToJson(_$MiraiFlexibleImpl instance) =>
    <String, dynamic>{
      'child': instance.child,
      'flex': instance.flex,
      'fit': _$FlexFitEnumMap[instance.fit]!,
    };

const _$FlexFitEnumMap = {
  FlexFit.tight: 'tight',
  FlexFit.loose: 'loose',
};
