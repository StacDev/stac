// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_beveled_rectangle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacBeveledRectangleBorderImpl _$$StacBeveledRectangleBorderImplFromJson(
        Map<String, dynamic> json) =>
    _$StacBeveledRectangleBorderImpl(
      side: json['side'] == null
          ? const StacBorderSide.none()
          : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? const StacBorderRadius()
          : StacBorderRadius.fromJson(json['borderRadius']),
    );

Map<String, dynamic> _$$StacBeveledRectangleBorderImplToJson(
        _$StacBeveledRectangleBorderImpl instance) =>
    <String, dynamic>{
      'side': instance.side,
      'borderRadius': instance.borderRadius,
    };
