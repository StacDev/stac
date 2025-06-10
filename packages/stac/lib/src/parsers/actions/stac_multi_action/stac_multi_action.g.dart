// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_multi_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacMultiAction _$StacMultiActionFromJson(Map<String, dynamic> json) =>
    _StacMultiAction(
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>?)
          .toList(),
    );

Map<String, dynamic> _$StacMultiActionToJson(_StacMultiAction instance) =>
    <String, dynamic>{
      'actions': instance.actions,
    };
