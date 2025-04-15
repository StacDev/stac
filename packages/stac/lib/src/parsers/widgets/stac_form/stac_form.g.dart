// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacForm _$StacFormFromJson(Map<String, dynamic> json) => _StacForm(
      autovalidateMode: $enumDecodeNullable(
          _$AutovalidateModeEnumMap, json['autovalidateMode']),
      child: json['child'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$StacFormToJson(_StacForm instance) => <String, dynamic>{
      'autovalidateMode': _$AutovalidateModeEnumMap[instance.autovalidateMode],
      'child': instance.child,
    };

const _$AutovalidateModeEnumMap = {
  AutovalidateMode.disabled: 'disabled',
  AutovalidateMode.always: 'always',
  AutovalidateMode.onUserInteraction: 'onUserInteraction',
  AutovalidateMode.onUnfocus: 'onUnfocus',
};
