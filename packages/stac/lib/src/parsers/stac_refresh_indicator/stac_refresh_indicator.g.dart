// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_refresh_indicator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacRefreshIndicatorImpl _$$StacRefreshIndicatorImplFromJson(
        Map<String, dynamic> json) =>
    _$StacRefreshIndicatorImpl(
      child: json['child'] as Map<String, dynamic>?,
      displacement: (json['displacement'] as num?)?.toDouble() ?? 40,
      edgeOffset: (json['edgeOffset'] as num?)?.toDouble() ?? 0,
      onRefresh: json['onRefresh'] as Map<String, dynamic>?,
      color: json['color'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      semanticsLabel: json['semanticsLabel'] as String?,
      semanticsValue: json['semanticsValue'] as String?,
      strokeWidth: (json['strokeWidth'] as num?)?.toDouble() ??
          RefreshProgressIndicator.defaultStrokeWidth,
      triggerMode: $enumDecodeNullable(
              _$RefreshIndicatorTriggerModeEnumMap, json['triggerMode']) ??
          RefreshIndicatorTriggerMode.onEdge,
    );

Map<String, dynamic> _$$StacRefreshIndicatorImplToJson(
        _$StacRefreshIndicatorImpl instance) =>
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
