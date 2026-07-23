// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_sliver_safe_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSliverSafeArea _$StacSliverSafeAreaFromJson(Map<String, dynamic> json) =>
    StacSliverSafeArea(
      left: json['left'] as bool?,
      top: json['top'] as bool?,
      right: json['right'] as bool?,
      bottom: json['bottom'] as bool?,
      minimum: json['minimum'] == null
          ? null
          : StacEdgeInsets.fromJson(json['minimum']),
      sliver: StacWidget.fromJson(json['sliver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacSliverSafeAreaToJson(StacSliverSafeArea instance) =>
    <String, dynamic>{
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
      'minimum': instance.minimum?.toJson(),
      'sliver': instance.sliver.toJson(),
      'type': instance.type,
    };
