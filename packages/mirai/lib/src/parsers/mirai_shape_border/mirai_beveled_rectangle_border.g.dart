// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_beveled_rectangle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiralBeveledRectangleBorderImpl _$$MiralBeveledRectangleBorderImplFromJson(
        Map<String, dynamic> json) =>
    _$MiralBeveledRectangleBorderImpl(
      side: json['side'] == null
          ? const MiraiBorderSide.none()
          : MiraiBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? const MiraiBorderRadius()
          : MiraiBorderRadius.fromJson(json['borderRadius']),
    );

Map<String, dynamic> _$$MiralBeveledRectangleBorderImplToJson(
        _$MiralBeveledRectangleBorderImpl instance) =>
    <String, dynamic>{
      'side': instance.side,
      'borderRadius': instance.borderRadius,
    };
