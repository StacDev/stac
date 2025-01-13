// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_continous_rectangle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiralContinousRectangleBorderImpl
    _$$MiralContinousRectangleBorderImplFromJson(Map<String, dynamic> json) =>
        _$MiralContinousRectangleBorderImpl(
          side: json['side'] == null
              ? const MiraiBorderSide.none()
              : MiraiBorderSide.fromJson(json['side'] as Map<String, dynamic>),
          borderRadius: json['borderRadius'] == null
              ? const MiraiBorderRadius()
              : MiraiBorderRadius.fromJson(json['borderRadius']),
        );

Map<String, dynamic> _$$MiralContinousRectangleBorderImplToJson(
        _$MiralContinousRectangleBorderImpl instance) =>
    <String, dynamic>{
      'side': instance.side,
      'borderRadius': instance.borderRadius,
    };
