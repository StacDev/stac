// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_linear_progress_indicator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacLinearProgressIndicator _$StacLinearProgressIndicatorFromJson(
        Map<String, dynamic> json) =>
    _StacLinearProgressIndicator(
      value: json['value'] == null ? null : StacDouble.fromJson(json['value']),
      backgroundColor: json['backgroundColor'] as String?,
      color: json['color'] as String?,
      minHeight: json['minHeight'] == null
          ? null
          : StacDouble.fromJson(json['minHeight']),
      semanticsLabel: json['semanticsLabel'] as String?,
      semanticsValue: json['semanticsValue'] as String?,
      borderRadius: json['borderRadius'] == null
          ? const StacBorderRadius()
          : StacBorderRadius.fromJson(json['borderRadius']),
    );

Map<String, dynamic> _$StacLinearProgressIndicatorToJson(
        _StacLinearProgressIndicator instance) =>
    <String, dynamic>{
      'value': instance.value,
      'backgroundColor': instance.backgroundColor,
      'color': instance.color,
      'minHeight': instance.minHeight,
      'semanticsLabel': instance.semanticsLabel,
      'semanticsValue': instance.semanticsValue,
      'borderRadius': instance.borderRadius,
    };
