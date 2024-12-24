// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiFormImpl _$$MiraiFormImplFromJson(Map<String, dynamic> json) =>
    _$MiraiFormImpl(
      autovalidateMode: $enumDecodeNullable(
          _$AutovalidateModeEnumMap, json['autovalidateMode']),
      child: json['child'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$MiraiFormImplToJson(_$MiraiFormImpl instance) =>
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
