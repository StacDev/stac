// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_input_formatter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacInputFormatterImpl _$$StacInputFormatterImplFromJson(
        Map<String, dynamic> json) =>
    _$StacInputFormatterImpl(
      type: $enumDecode(_$InputFormatterTypeEnumMap, json['type']),
      rule: json['rule'] as String?,
    );

Map<String, dynamic> _$$StacInputFormatterImplToJson(
        _$StacInputFormatterImpl instance) =>
    <String, dynamic>{
      'type': _$InputFormatterTypeEnumMap[instance.type]!,
      'rule': instance.rule,
    };

const _$InputFormatterTypeEnumMap = {
  InputFormatterType.allow: 'allow',
  InputFormatterType.deny: 'deny',
};
