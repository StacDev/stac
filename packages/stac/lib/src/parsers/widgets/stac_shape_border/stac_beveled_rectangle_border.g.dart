// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_beveled_rectangle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacBeveledRectangleBorder _$StacBeveledRectangleBorderFromJson(
        Map<String, dynamic> json) =>
    _StacBeveledRectangleBorder(
      side: json['side'] == null
          ? StacBorderSide.none
          : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? const StacBorderRadius()
          : StacBorderRadius.fromJson(json['borderRadius']),
    );

Map<String, dynamic> _$StacBeveledRectangleBorderToJson(
        _StacBeveledRectangleBorder instance) =>
    <String, dynamic>{
      'side': instance.side,
      'borderRadius': instance.borderRadius,
    };
