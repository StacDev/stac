// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_limited_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacLimitedBox _$StacLimitedBoxFromJson(Map<String, dynamic> json) =>
    _StacLimitedBox(
      maxHeight: json['maxHeight'] == null
          ? StacDouble.infinity
          : StacDouble.fromJson(json['maxHeight']),
      maxWidth: json['maxWidth'] == null
          ? StacDouble.infinity
          : StacDouble.fromJson(json['maxWidth']),
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacLimitedBoxToJson(_StacLimitedBox instance) =>
    <String, dynamic>{
      'maxHeight': instance.maxHeight,
      'maxWidth': instance.maxWidth,
      'child': instance.child,
    };
