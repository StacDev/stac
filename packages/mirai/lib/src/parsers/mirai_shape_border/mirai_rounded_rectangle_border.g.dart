// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_rounded_rectangle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiRoundedRactangleBorderImpl _$$MiraiRoundedRactangleBorderImplFromJson(
        Map<String, dynamic> json) =>
    _$MiraiRoundedRactangleBorderImpl(
      side: json['side'] == null
          ? const MiraiBorderSide.none()
          : MiraiBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? const MiraiBorderRadius()
          : MiraiBorderRadius.fromJson(json['borderRadius']),
    );

Map<String, dynamic> _$$MiraiRoundedRactangleBorderImplToJson(
        _$MiraiRoundedRactangleBorderImpl instance) =>
    <String, dynamic>{
      'side': instance.side,
      'borderRadius': instance.borderRadius,
    };
