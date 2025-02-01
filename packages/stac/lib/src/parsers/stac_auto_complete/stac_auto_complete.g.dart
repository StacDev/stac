// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_auto_complete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacAutoCompleteImpl _$$StacAutoCompleteImplFromJson(
        Map<String, dynamic> json) =>
    _$StacAutoCompleteImpl(
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
      onSelected: json['onSelected'] as Map<String, dynamic>?,
      optionsMaxHeight: (json['optionsMaxHeight'] as num?)?.toDouble() ?? 200,
      optionsViewOpenDirection: $enumDecodeNullable(
              _$OptionsViewOpenDirectionEnumMap,
              json['optionsViewOpenDirection']) ??
          OptionsViewOpenDirection.down,
      initialValue: json['initialValue'] as String?,
    );

Map<String, dynamic> _$$StacAutoCompleteImplToJson(
        _$StacAutoCompleteImpl instance) =>
    <String, dynamic>{
      'options': instance.options,
      'onSelected': instance.onSelected,
      'optionsMaxHeight': instance.optionsMaxHeight,
      'optionsViewOpenDirection':
          _$OptionsViewOpenDirectionEnumMap[instance.optionsViewOpenDirection]!,
      'initialValue': instance.initialValue,
    };

const _$OptionsViewOpenDirectionEnumMap = {
  OptionsViewOpenDirection.up: 'up',
  OptionsViewOpenDirection.down: 'down',
};
