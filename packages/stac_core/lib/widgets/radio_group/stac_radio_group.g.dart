// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_radio_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacRadioGroup _$StacRadioGroupFromJson(Map<String, dynamic> json) =>
    StacRadioGroup(
      id: json['id'] as String?,
      groupValue: json['groupValue'],
      child: json['child'] == null
          ? null
          : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
      onChanged: json['onChanged'] == null
          ? null
          : StacAction.fromJson(json['onChanged'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacRadioGroupToJson(StacRadioGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'groupValue': instance.groupValue,
      'child': instance.child?.toJson(),
      'onChanged': instance.onChanged?.toJson(),
      'type': instance.type,
    };
