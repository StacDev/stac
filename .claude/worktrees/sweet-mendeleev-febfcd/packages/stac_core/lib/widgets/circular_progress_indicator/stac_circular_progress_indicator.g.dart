// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_circular_progress_indicator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacCircularProgressIndicator _$StacCircularProgressIndicatorFromJson(
  Map<String, dynamic> json,
) => StacCircularProgressIndicator(
  value: const DoubleConverter().fromJson(json['value']),
  backgroundColor: json['backgroundColor'] as String?,
  color: json['color'] as String?,
  strokeWidth: const DoubleConverter().fromJson(json['strokeWidth']),
  strokeAlign: const DoubleConverter().fromJson(json['strokeAlign']),
  semanticsLabel: json['semanticsLabel'] as String?,
  semanticsValue: json['semanticsValue'] as String?,
  strokeCap: $enumDecodeNullable(_$StacStrokeCapEnumMap, json['strokeCap']),
);

Map<String, dynamic> _$StacCircularProgressIndicatorToJson(
  StacCircularProgressIndicator instance,
) => <String, dynamic>{
  'value': const DoubleConverter().toJson(instance.value),
  'backgroundColor': instance.backgroundColor,
  'color': instance.color,
  'strokeWidth': const DoubleConverter().toJson(instance.strokeWidth),
  'strokeAlign': const DoubleConverter().toJson(instance.strokeAlign),
  'semanticsLabel': instance.semanticsLabel,
  'semanticsValue': instance.semanticsValue,
  'strokeCap': _$StacStrokeCapEnumMap[instance.strokeCap],
  'type': instance.type,
};

const _$StacStrokeCapEnumMap = {
  StacStrokeCap.butt: 'butt',
  StacStrokeCap.round: 'round',
  StacStrokeCap.square: 'square',
};
