// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_circular_progress_indicator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacCircularProgressIndicator _$StacCircularProgressIndicatorFromJson(
        Map<String, dynamic> json) =>
    _StacCircularProgressIndicator(
      value: json['value'] == null ? null : StacDouble.fromJson(json['value']),
      backgroundColor: json['backgroundColor'] as String?,
      color: json['color'] as String?,
      strokeWidth: json['strokeWidth'] == null
          ? const StacDouble(4.0)
          : StacDouble.fromJson(json['strokeWidth']),
      strokeAlign: json['strokeAlign'] == null
          ? StacDouble.zero
          : StacDouble.fromJson(json['strokeAlign']),
      semanticsLabel: json['semanticsLabel'] as String?,
      semanticsValue: json['semanticsValue'] as String?,
      strokeCap: $enumDecodeNullable(_$StrokeCapEnumMap, json['strokeCap']),
    );

Map<String, dynamic> _$StacCircularProgressIndicatorToJson(
        _StacCircularProgressIndicator instance) =>
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
