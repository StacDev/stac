// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_continous_rectangle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacContinousRectangleBorder _$StacContinousRectangleBorderFromJson(
        Map<String, dynamic> json) =>
    _StacContinousRectangleBorder(
      side: json['side'] == null
          ? StacBorderSide.none
          : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? const StacBorderRadius()
          : StacBorderRadius.fromJson(json['borderRadius']),
    );

Map<String, dynamic> _$StacContinousRectangleBorderToJson(
        _StacContinousRectangleBorder instance) =>
    <String, dynamic>{
      'side': instance.side,
      'borderRadius': instance.borderRadius,
    };
