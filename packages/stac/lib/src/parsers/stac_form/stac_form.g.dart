// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacFormImpl _$$StacFormImplFromJson(Map<String, dynamic> json) =>
    _$StacFormImpl(
      autovalidateMode: $enumDecodeNullable(
          _$AutovalidateModeEnumMap, json['autovalidateMode']),
      child: json['child'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$StacFormImplToJson(_$StacFormImpl instance) =>
    <String, dynamic>{
      'autovalidateMode': _$AutovalidateModeEnumMap[instance.autovalidateMode],
      'child': instance.child,
    };

const _$AutovalidateModeEnumMap = {
  AutovalidateMode.disabled: 'disabled',
  AutovalidateMode.always: 'always',
  AutovalidateMode.onUserInteraction: 'onUserInteraction',
  AutovalidateMode.onUnfocus: 'onUnfocus',
};
