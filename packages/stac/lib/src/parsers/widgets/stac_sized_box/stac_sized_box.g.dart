// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_sized_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacSizedBox _$StacSizedBoxFromJson(Map<String, dynamic> json) =>
    _StacSizedBox(
      width: json['width'] == null ? null : StacDouble.fromJson(json['width']),
      height:
          json['height'] == null ? null : StacDouble.fromJson(json['height']),
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacSizedBoxToJson(_StacSizedBox instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'child': instance.child,
    };
