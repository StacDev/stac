// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_refresh_indicator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacRefreshIndicator _$StacRefreshIndicatorFromJson(
  Map<String, dynamic> json,
) => StacRefreshIndicator(
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
  onRefresh: json['onRefresh'] == null
      ? null
      : StacAction.fromJson(json['onRefresh'] as Map<String, dynamic>),
  displacement: const DoubleConverter().fromJson(json['displacement']),
  edgeOffset: const DoubleConverter().fromJson(json['edgeOffset']),
  color: json['color'] as String?,
  backgroundColor: json['backgroundColor'] as String?,
  semanticsLabel: json['semanticsLabel'] as String?,
  semanticsValue: json['semanticsValue'] as String?,
  strokeWidth: const DoubleConverter().fromJson(json['strokeWidth']),
  triggerMode: $enumDecodeNullable(
    _$StacRefreshIndicatorTriggerModeEnumMap,
    json['triggerMode'],
  ),
);

Map<String, dynamic> _$StacRefreshIndicatorToJson(
  StacRefreshIndicator instance,
) => <String, dynamic>{
  'child': instance.child?.toJson(),
  'onRefresh': instance.onRefresh?.toJson(),
  'displacement': const DoubleConverter().toJson(instance.displacement),
  'edgeOffset': const DoubleConverter().toJson(instance.edgeOffset),
  'color': instance.color,
  'backgroundColor': instance.backgroundColor,
  'semanticsLabel': instance.semanticsLabel,
  'semanticsValue': instance.semanticsValue,
  'strokeWidth': const DoubleConverter().toJson(instance.strokeWidth),
  'triggerMode': _$StacRefreshIndicatorTriggerModeEnumMap[instance.triggerMode],
  'type': instance.type,
};

const _$StacRefreshIndicatorTriggerModeEnumMap = {
  StacRefreshIndicatorTriggerMode.onEdge: 'onEdge',
  StacRefreshIndicatorTriggerMode.anywhere: 'anywhere',
};
