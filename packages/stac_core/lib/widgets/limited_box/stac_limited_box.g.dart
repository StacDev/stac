// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_limited_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacLimitedBox _$StacLimitedBoxFromJson(Map<String, dynamic> json) =>
    StacLimitedBox(
      maxWidth: const DoubleConverter().fromJson(json['maxWidth']),
      maxHeight: const DoubleConverter().fromJson(json['maxHeight']),
      child: json['child'] == null
          ? null
          : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacLimitedBoxToJson(StacLimitedBox instance) =>
    <String, dynamic>{
      'maxWidth': const DoubleConverter().toJson(instance.maxWidth),
      'maxHeight': const DoubleConverter().toJson(instance.maxHeight),
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
