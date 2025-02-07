// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CounterActionImpl _$$CounterActionImplFromJson(Map<String, dynamic> json) =>
    _$CounterActionImpl(
      counterActionType:
          $enumDecode(_$CounterActionTypeEnumMap, json['counterActionType']),
      delta: (json['delta'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$$CounterActionImplToJson(_$CounterActionImpl instance) =>
    <String, dynamic>{
      'counterActionType':
          _$CounterActionTypeEnumMap[instance.counterActionType]!,
      'delta': instance.delta,
    };

const _$CounterActionTypeEnumMap = {
  CounterActionType.increment: 'increment',
  CounterActionType.decrement: 'decrement',
};
