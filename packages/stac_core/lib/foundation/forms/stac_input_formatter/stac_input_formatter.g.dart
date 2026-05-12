// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_input_formatter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacInputFormatter _$StacInputFormatterFromJson(Map<String, dynamic> json) =>
    StacInputFormatter(
      type: $enumDecode(_$StacInputFormatterTypeEnumMap, json['type']),
      rule: json['rule'] as String?,
      mask: json['mask'] as String?,
    );

Map<String, dynamic> _$StacInputFormatterToJson(StacInputFormatter instance) =>
    <String, dynamic>{
      'type': _$StacInputFormatterTypeEnumMap[instance.type]!,
      'rule': instance.rule,
      'mask': instance.mask,
    };

const _$StacInputFormatterTypeEnumMap = {
  StacInputFormatterType.allow: 'allow',
  StacInputFormatterType.deny: 'deny',
  StacInputFormatterType.mask: 'mask',
};
