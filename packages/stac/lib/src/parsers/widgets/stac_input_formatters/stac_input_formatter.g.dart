// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_input_formatter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacInputFormatter _$StacInputFormatterFromJson(Map<String, dynamic> json) =>
    _StacInputFormatter(
      type: $enumDecode(_$InputFormatterTypeEnumMap, json['type']),
      rule: json['rule'] as String?,
    );

Map<String, dynamic> _$StacInputFormatterToJson(_StacInputFormatter instance) =>
    <String, dynamic>{
      'type': _$InputFormatterTypeEnumMap[instance.type]!,
      'rule': instance.rule,
    };

const _$InputFormatterTypeEnumMap = {
  InputFormatterType.allow: 'allow',
  InputFormatterType.deny: 'deny',
};
