// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_circular_progress_indicator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiCircularProgressIndicatorImpl
    _$$MiraiCircularProgressIndicatorImplFromJson(Map<String, dynamic> json) =>
        _$MiraiCircularProgressIndicatorImpl(
          value: (json['value'] as num?)?.toDouble(),
          backgroundColor: json['backgroundColor'] as String?,
          color: json['color'] as String?,
          strokeWidth: (json['strokeWidth'] as num?)?.toDouble() ?? 4.0,
          strokeAlign: (json['strokeAlign'] as num?)?.toDouble() ?? 0,
          semanticsLabel: json['semanticsLabel'] as String?,
          semanticsValue: json['semanticsValue'] as String?,
          strokeCap: $enumDecodeNullable(_$StrokeCapEnumMap, json['strokeCap']),
        );

Map<String, dynamic> _$$MiraiCircularProgressIndicatorImplToJson(
        _$MiraiCircularProgressIndicatorImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'backgroundColor': instance.backgroundColor,
      'color': instance.color,
      'strokeWidth': instance.strokeWidth,
      'strokeAlign': instance.strokeAlign,
      'semanticsLabel': instance.semanticsLabel,
      'semanticsValue': instance.semanticsValue,
      'strokeCap': _$StrokeCapEnumMap[instance.strokeCap],
    };

const _$StrokeCapEnumMap = {
  StrokeCap.butt: 'butt',
  StrokeCap.round: 'round',
  StrokeCap.square: 'square',
};
