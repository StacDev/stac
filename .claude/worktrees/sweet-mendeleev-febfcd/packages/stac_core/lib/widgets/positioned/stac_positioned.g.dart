// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_positioned.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacPositioned _$StacPositionedFromJson(Map<String, dynamic> json) =>
    StacPositioned(
      left: const DoubleConverter().fromJson(json['left']),
      top: const DoubleConverter().fromJson(json['top']),
      right: const DoubleConverter().fromJson(json['right']),
      bottom: const DoubleConverter().fromJson(json['bottom']),
      width: const DoubleConverter().fromJson(json['width']),
      height: const DoubleConverter().fromJson(json['height']),
      child: json['child'] == null
          ? null
          : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacPositionedToJson(StacPositioned instance) =>
    <String, dynamic>{
      'left': const DoubleConverter().toJson(instance.left),
      'top': const DoubleConverter().toJson(instance.top),
      'right': const DoubleConverter().toJson(instance.right),
      'bottom': const DoubleConverter().toJson(instance.bottom),
      'width': const DoubleConverter().toJson(instance.width),
      'height': const DoubleConverter().toJson(instance.height),
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
