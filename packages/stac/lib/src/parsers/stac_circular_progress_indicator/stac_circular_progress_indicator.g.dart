// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_circular_progress_indicator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacCircularProgressIndicatorImpl
    _$$StacCircularProgressIndicatorImplFromJson(Map<String, dynamic> json) =>
        _$StacCircularProgressIndicatorImpl(
          value: (json['value'] as num?)?.toDouble(),
          backgroundColor: json['backgroundColor'] as String?,
          color: json['color'] as String?,
          strokeWidth: (json['strokeWidth'] as num?)?.toDouble() ?? 4.0,
          strokeAlign: (json['strokeAlign'] as num?)?.toDouble() ?? 0,
          semanticsLabel: json['semanticsLabel'] as String?,
          semanticsValue: json['semanticsValue'] as String?,
          strokeCap: $enumDecodeNullable(_$StrokeCapEnumMap, json['strokeCap']),
        );

Map<String, dynamic> _$$StacCircularProgressIndicatorImplToJson(
        _$StacCircularProgressIndicatorImpl instance) =>
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
