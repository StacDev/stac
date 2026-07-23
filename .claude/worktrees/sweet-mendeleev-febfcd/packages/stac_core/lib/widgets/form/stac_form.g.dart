// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacForm _$StacFormFromJson(Map<String, dynamic> json) => StacForm(
  autovalidateMode: $enumDecodeNullable(
    _$StacAutovalidateModeEnumMap,
    json['autovalidateMode'],
  ),
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacFormToJson(StacForm instance) => <String, dynamic>{
  'autovalidateMode': _$StacAutovalidateModeEnumMap[instance.autovalidateMode],
  'child': instance.child?.toJson(),
  'type': instance.type,
};

const _$StacAutovalidateModeEnumMap = {
  StacAutovalidateMode.disabled: 'disabled',
  StacAutovalidateMode.always: 'always',
  StacAutovalidateMode.onUserInteraction: 'onUserInteraction',
};
