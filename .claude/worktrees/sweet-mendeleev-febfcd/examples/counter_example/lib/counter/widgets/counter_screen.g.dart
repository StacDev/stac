// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_screen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CounterScreen _$CounterScreenFromJson(Map<String, dynamic> json) =>
    _CounterScreen(
      title: json['title'] as String,
      description: json['description'] as String,
      initialCount: (json['initialCount'] as num?)?.toInt() ?? 0,
      onIncrement: json['onIncrement'] as Map<String, dynamic>?,
      onDecrement: json['onDecrement'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$CounterScreenToJson(_CounterScreen instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'initialCount': instance.initialCount,
      'onIncrement': instance.onIncrement,
      'onDecrement': instance.onDecrement,
    };
