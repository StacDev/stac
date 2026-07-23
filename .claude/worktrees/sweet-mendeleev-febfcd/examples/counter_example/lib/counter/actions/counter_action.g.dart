// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CounterAction _$CounterActionFromJson(Map<String, dynamic> json) =>
    _CounterAction(
      counterActionType:
          $enumDecode(_$CounterActionTypeEnumMap, json['counterActionType']),
      delta: (json['delta'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$CounterActionToJson(_CounterAction instance) =>
    <String, dynamic>{
      'counterActionType':
          _$CounterActionTypeEnumMap[instance.counterActionType]!,
      'delta': instance.delta,
    };

const _$CounterActionTypeEnumMap = {
  CounterActionType.increment: 'increment',
  CounterActionType.decrement: 'decrement',
};
