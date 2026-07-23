// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_sized_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSizedBox _$StacSizedBoxFromJson(Map<String, dynamic> json) => StacSizedBox(
  width: const DoubleConverter().fromJson(json['width']),
  height: const DoubleConverter().fromJson(json['height']),
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacSizedBoxToJson(StacSizedBox instance) =>
    <String, dynamic>{
      'width': const DoubleConverter().toJson(instance.width),
      'height': const DoubleConverter().toJson(instance.height),
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
