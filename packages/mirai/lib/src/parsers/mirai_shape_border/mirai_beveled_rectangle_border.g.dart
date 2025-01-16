// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_beveled_rectangle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiBeveledRectangleBorderImpl _$$MiraiBeveledRectangleBorderImplFromJson(
        Map<String, dynamic> json) =>
    _$MiraiBeveledRectangleBorderImpl(
      side: json['side'] == null
          ? const MiraiBorderSide.none()
          : MiraiBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? const MiraiBorderRadius()
          : MiraiBorderRadius.fromJson(json['borderRadius']),
    );

Map<String, dynamic> _$$MiraiBeveledRectangleBorderImplToJson(
        _$MiraiBeveledRectangleBorderImpl instance) =>
    <String, dynamic>{
      'side': instance.side,
      'borderRadius': instance.borderRadius,
    };
