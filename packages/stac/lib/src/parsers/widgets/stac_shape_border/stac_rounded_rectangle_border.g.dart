// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_rounded_rectangle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacRoundedRactangleBorder _$StacRoundedRactangleBorderFromJson(
        Map<String, dynamic> json) =>
    _StacRoundedRactangleBorder(
      side: json['side'] == null
          ? StacBorderSide.none
          : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? const StacBorderRadius()
          : StacBorderRadius.fromJson(json['borderRadius']),
    );

Map<String, dynamic> _$StacRoundedRactangleBorderToJson(
        _StacRoundedRactangleBorder instance) =>
    <String, dynamic>{
      'side': instance.side,
      'borderRadius': instance.borderRadius,
    };
