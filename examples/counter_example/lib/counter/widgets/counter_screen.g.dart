// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_screen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CounterScreenImpl _$$CounterScreenImplFromJson(Map<String, dynamic> json) =>
    _$CounterScreenImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      initialCount: (json['initialCount'] as num?)?.toInt() ?? 0,
      onIncrement: json['onIncrement'] as Map<String, dynamic>?,
      onDecrement: json['onDecrement'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$CounterScreenImplToJson(_$CounterScreenImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'initialCount': instance.initialCount,
      'onIncrement': instance.onIncrement,
      'onDecrement': instance.onDecrement,
    };
