// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_continous_rectangle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacContinousRectangleBorderImpl _$$StacContinousRectangleBorderImplFromJson(
        Map<String, dynamic> json) =>
    _$StacContinousRectangleBorderImpl(
      side: json['side'] == null
          ? const StacBorderSide.none()
          : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? const StacBorderRadius()
          : StacBorderRadius.fromJson(json['borderRadius']),
    );

Map<String, dynamic> _$$StacContinousRectangleBorderImplToJson(
        _$StacContinousRectangleBorderImpl instance) =>
    <String, dynamic>{
      'side': instance.side,
      'borderRadius': instance.borderRadius,
    };
