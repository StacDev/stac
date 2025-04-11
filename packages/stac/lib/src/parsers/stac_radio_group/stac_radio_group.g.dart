// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_radio_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacRadioGroup _$StacRadioGroupFromJson(Map<String, dynamic> json) =>
    _StacRadioGroup(
      id: json['id'] as String?,
      groupValue: json['groupValue'],
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacRadioGroupToJson(_StacRadioGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'groupValue': instance.groupValue,
      'child': instance.child,
    };
