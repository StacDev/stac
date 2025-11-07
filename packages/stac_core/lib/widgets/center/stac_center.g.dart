// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_center.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacCenter _$StacCenterFromJson(Map<String, dynamic> json) => StacCenter(
  widthFactor: const DoubleConverter().fromJson(json['widthFactor']),
  heightFactor: const DoubleConverter().fromJson(json['heightFactor']),
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacCenterToJson(StacCenter instance) =>
    <String, dynamic>{
      'widthFactor': const DoubleConverter().toJson(instance.widthFactor),
      'heightFactor': const DoubleConverter().toJson(instance.heightFactor),
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
