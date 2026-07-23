// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_multi_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacMultiAction _$StacMultiActionFromJson(Map<String, dynamic> json) =>
    StacMultiAction(
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => StacAction.fromJson(e as Map<String, dynamic>))
          .toList(),
      sync: json['sync'] as bool? ?? false,
    );

Map<String, dynamic> _$StacMultiActionToJson(StacMultiAction instance) =>
    <String, dynamic>{
      'actions': instance.actions?.map((e) => e.toJson()).toList(),
      'sync': instance.sync,
      'actionType': instance.actionType,
    };
