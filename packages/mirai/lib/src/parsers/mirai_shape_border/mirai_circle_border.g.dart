// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_circle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiCircleBorderImpl _$$MiraiCircleBorderImplFromJson(
        Map<String, dynamic> json) =>
    _$MiraiCircleBorderImpl(
      side: json['side'] == null
          ? const MiraiBorderSide.none()
          : MiraiBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      eccentricity: (json['eccentricity'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$MiraiCircleBorderImplToJson(
        _$MiraiCircleBorderImpl instance) =>
    <String, dynamic>{
      'side': instance.side,
      'eccentricity': instance.eccentricity,
    };
