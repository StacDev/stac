// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_duration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiDurationImpl _$$MiraiDurationImplFromJson(Map<String, dynamic> json) =>
    _$MiraiDurationImpl(
      days: (json['days'] as num?)?.toInt() ?? 0,
      hours: (json['hours'] as num?)?.toInt() ?? 0,
      minutes: (json['minutes'] as num?)?.toInt() ?? 0,
      seconds: (json['seconds'] as num?)?.toInt() ?? 0,
      milliseconds: (json['milliseconds'] as num?)?.toInt() ?? 0,
      microseconds: (json['microseconds'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$MiraiDurationImplToJson(_$MiraiDurationImpl instance) =>
    <String, dynamic>{
      'days': instance.days,
      'hours': instance.hours,
      'minutes': instance.minutes,
      'seconds': instance.seconds,
      'milliseconds': instance.milliseconds,
      'microseconds': instance.microseconds,
    };
