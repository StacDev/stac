// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_intrinsic_width.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacIntrinsicWidth _$StacIntrinsicWidthFromJson(Map<String, dynamic> json) =>
    StacIntrinsicWidth(
      stepWidth: const DoubleConverter().fromJson(json['stepWidth']),
      stepHeight: const DoubleConverter().fromJson(json['stepHeight']),
      child: json['child'] == null
          ? null
          : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacIntrinsicWidthToJson(StacIntrinsicWidth instance) =>
    <String, dynamic>{
      'stepWidth': const DoubleConverter().toJson(instance.stepWidth),
      'stepHeight': const DoubleConverter().toJson(instance.stepHeight),
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
