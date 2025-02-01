// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_rounded_rectangle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacRoundedRactangleBorderImpl _$$StacRoundedRactangleBorderImplFromJson(
        Map<String, dynamic> json) =>
    _$StacRoundedRactangleBorderImpl(
      side: json['side'] == null
          ? const StacBorderSide.none()
          : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? const StacBorderRadius()
          : StacBorderRadius.fromJson(json['borderRadius']),
    );

Map<String, dynamic> _$$StacRoundedRactangleBorderImplToJson(
        _$StacRoundedRactangleBorderImpl instance) =>
    <String, dynamic>{
      'side': instance.side,
      'borderRadius': instance.borderRadius,
    };
