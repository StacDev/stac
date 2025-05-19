// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_auto_complete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacAutoComplete _$StacAutoCompleteFromJson(Map<String, dynamic> json) =>
    _StacAutoComplete(
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
      onSelected: json['onSelected'] as Map<String, dynamic>?,
      optionsMaxHeight: json['optionsMaxHeight'] == null
          ? const StacDouble(200)
          : StacDouble.fromJson(json['optionsMaxHeight']),
      optionsViewOpenDirection: $enumDecodeNullable(
              _$OptionsViewOpenDirectionEnumMap,
              json['optionsViewOpenDirection']) ??
          OptionsViewOpenDirection.down,
      initialValue: json['initialValue'] as String?,
    );

Map<String, dynamic> _$StacAutoCompleteToJson(_StacAutoComplete instance) =>
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
