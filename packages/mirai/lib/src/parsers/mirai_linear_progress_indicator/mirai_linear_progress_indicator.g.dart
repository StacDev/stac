// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_linear_progress_indicator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiLinearProgressIndicatorImpl _$$MiraiLinearProgressIndicatorImplFromJson(
        Map<String, dynamic> json) =>
    _$MiraiLinearProgressIndicatorImpl(
      value: (json['value'] as num?)?.toDouble(),
      backgroundColor: json['backgroundColor'] as String?,
      color: json['color'] as String?,
      minHeight: (json['minHeight'] as num?)?.toDouble(),
      semanticsLabel: json['semanticsLabel'] as String?,
      semanticsValue: json['semanticsValue'] as String?,
      borderRadius: json['borderRadius'] == null
          ? const MiraiBorderRadius()
          : MiraiBorderRadius.fromJson(json['borderRadius']),
    );

Map<String, dynamic> _$$MiraiLinearProgressIndicatorImplToJson(
        _$MiraiLinearProgressIndicatorImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'backgroundColor': instance.backgroundColor,
      'color': instance.color,
      'minHeight': instance.minHeight,
      'semanticsLabel': instance.semanticsLabel,
      'semanticsValue': instance.semanticsValue,
      'borderRadius': instance.borderRadius,
    };
