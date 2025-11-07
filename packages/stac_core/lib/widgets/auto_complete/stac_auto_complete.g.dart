// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_auto_complete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacAutoComplete _$StacAutoCompleteFromJson(
  Map<String, dynamic> json,
) => StacAutoComplete(
  options: (json['options'] as List<dynamic>).map((e) => e as String).toList(),
  onSelected: json['onSelected'] == null
      ? null
      : StacAction.fromJson(json['onSelected'] as Map<String, dynamic>),
  optionsMaxHeight: const DoubleConverter().fromJson(json['optionsMaxHeight']),
  optionsViewOpenDirection: $enumDecodeNullable(
    _$StacOptionsViewOpenDirectionEnumMap,
    json['optionsViewOpenDirection'],
  ),
  initialValue: json['initialValue'] as String?,
);

Map<String, dynamic> _$StacAutoCompleteToJson(
  StacAutoComplete instance,
) => <String, dynamic>{
  'options': instance.options,
  'onSelected': instance.onSelected?.toJson(),
  'optionsMaxHeight': const DoubleConverter().toJson(instance.optionsMaxHeight),
  'optionsViewOpenDirection':
      _$StacOptionsViewOpenDirectionEnumMap[instance.optionsViewOpenDirection],
  'initialValue': instance.initialValue,
  'type': instance.type,
};

const _$StacOptionsViewOpenDirectionEnumMap = {
  StacOptionsViewOpenDirection.up: 'up',
  StacOptionsViewOpenDirection.down: 'down',
};
