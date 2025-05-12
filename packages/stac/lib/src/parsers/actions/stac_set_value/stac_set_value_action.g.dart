// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_set_value_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacSetValueAction _$StacSetValueActionFromJson(Map<String, dynamic> json) =>
    _StacSetValueAction(
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      action: json['action'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacSetValueActionToJson(_StacSetValueAction instance) =>
    <String, dynamic>{
      'values': instance.values,
      'action': instance.action,
    };
