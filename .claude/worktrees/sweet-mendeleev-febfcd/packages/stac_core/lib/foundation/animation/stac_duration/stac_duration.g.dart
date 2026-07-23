// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_duration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacDuration _$StacDurationFromJson(Map<String, dynamic> json) => StacDuration(
  days: (json['days'] as num?)?.toInt(),
  hours: (json['hours'] as num?)?.toInt(),
  minutes: (json['minutes'] as num?)?.toInt(),
  seconds: (json['seconds'] as num?)?.toInt(),
  milliseconds: (json['milliseconds'] as num?)?.toInt(),
  microseconds: (json['microseconds'] as num?)?.toInt(),
);

Map<String, dynamic> _$StacDurationToJson(StacDuration instance) =>
    <String, dynamic>{
      'days': instance.days,
      'hours': instance.hours,
      'minutes': instance.minutes,
      'seconds': instance.seconds,
      'milliseconds': instance.milliseconds,
      'microseconds': instance.microseconds,
    };
