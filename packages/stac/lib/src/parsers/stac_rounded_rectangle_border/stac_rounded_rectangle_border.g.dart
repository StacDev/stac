// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_rounded_rectangle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacRoundedRectangleBorder _$StacRoundedRectangleBorderFromJson(
        Map<String, dynamic> json) =>
    _StacRoundedRectangleBorder(
      side: json['side'] == null
          ? null
          : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? null
          : StacBorderRadius.fromJson(json['borderRadius']),
    );

Map<String, dynamic> _$StacRoundedRectangleBorderToJson(
        _StacRoundedRectangleBorder instance) =>
    <String, dynamic>{
      'side': instance.side,
      'borderRadius': instance.borderRadius,
    };
