// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_set_value_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSetValueAction _$StacSetValueActionFromJson(Map<String, dynamic> json) =>
    StacSetValueAction(
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      action: json['action'] == null
          ? null
          : StacAction.fromJson(json['action'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacSetValueActionToJson(StacSetValueAction instance) =>
    <String, dynamic>{
      'values': instance.values,
      'action': instance.action?.toJson(),
      'actionType': instance.actionType,
    };
