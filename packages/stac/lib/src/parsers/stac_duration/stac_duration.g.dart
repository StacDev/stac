// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_duration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacDurationImpl _$$StacDurationImplFromJson(Map<String, dynamic> json) =>
    _$StacDurationImpl(
      days: (json['days'] as num?)?.toInt() ?? 0,
      hours: (json['hours'] as num?)?.toInt() ?? 0,
      minutes: (json['minutes'] as num?)?.toInt() ?? 0,
      seconds: (json['seconds'] as num?)?.toInt() ?? 0,
      milliseconds: (json['milliseconds'] as num?)?.toInt() ?? 0,
      microseconds: (json['microseconds'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$StacDurationImplToJson(_$StacDurationImpl instance) =>
    <String, dynamic>{
      'days': instance.days,
      'hours': instance.hours,
      'minutes': instance.minutes,
      'seconds': instance.seconds,
      'milliseconds': instance.milliseconds,
      'microseconds': instance.microseconds,
    };
