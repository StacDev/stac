// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_delay_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacDelayAction _$StacDelayActionFromJson(Map<String, dynamic> json) =>
    _StacDelayAction(
      milliseconds: (json['milliseconds'] as num?)?.toInt() ?? 1000,
    );

Map<String, dynamic> _$StacDelayActionToJson(_StacDelayAction instance) =>
    <String, dynamic>{
      'milliseconds': instance.milliseconds,
    };
