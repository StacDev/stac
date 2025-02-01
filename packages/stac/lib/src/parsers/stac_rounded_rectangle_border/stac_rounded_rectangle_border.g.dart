// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_rounded_rectangle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacRoundedRectangleBorderImpl _$$StacRoundedRectangleBorderImplFromJson(
        Map<String, dynamic> json) =>
    _$StacRoundedRectangleBorderImpl(
      side: json['side'] == null
          ? null
          : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? null
          : StacBorderRadius.fromJson(json['borderRadius']),
    );

Map<String, dynamic> _$$StacRoundedRectangleBorderImplToJson(
        _$StacRoundedRectangleBorderImpl instance) =>
    <String, dynamic>{
      'side': instance.side,
      'borderRadius': instance.borderRadius,
    };
