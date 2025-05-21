// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_refresh_indicator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacRefreshIndicator _$StacRefreshIndicatorFromJson(
        Map<String, dynamic> json) =>
    _StacRefreshIndicator(
      child: json['child'] as Map<String, dynamic>?,
      displacement: json['displacement'] == null
          ? const StacDouble(40)
          : StacDouble.fromJson(json['displacement']),
      edgeOffset: json['edgeOffset'] == null
          ? StacDouble.zero
          : StacDouble.fromJson(json['edgeOffset']),
      onRefresh: json['onRefresh'] as Map<String, dynamic>?,
      color: json['color'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      semanticsLabel: json['semanticsLabel'] as String?,
      semanticsValue: json['semanticsValue'] as String?,
      strokeWidth: json['strokeWidth'] == null
          ? const StacDouble(RefreshProgressIndicator.defaultStrokeWidth)
          : StacDouble.fromJson(json['strokeWidth']),
      triggerMode: $enumDecodeNullable(
              _$RefreshIndicatorTriggerModeEnumMap, json['triggerMode']) ??
          RefreshIndicatorTriggerMode.onEdge,
    );

Map<String, dynamic> _$StacRefreshIndicatorToJson(
        _StacRefreshIndicator instance) =>
    <String, dynamic>{
      'child': instance.child,
      'displacement': instance.displacement,
      'edgeOffset': instance.edgeOffset,
      'onRefresh': instance.onRefresh,
      'color': instance.color,
      'backgroundColor': instance.backgroundColor,
      'semanticsLabel': instance.semanticsLabel,
      'semanticsValue': instance.semanticsValue,
      'strokeWidth': instance.strokeWidth,
      'triggerMode':
          _$RefreshIndicatorTriggerModeEnumMap[instance.triggerMode]!,
    };

const _$RefreshIndicatorTriggerModeEnumMap = {
  RefreshIndicatorTriggerMode.anywhere: 'anywhere',
  RefreshIndicatorTriggerMode.onEdge: 'onEdge',
};
