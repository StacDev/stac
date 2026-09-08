// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_intrinsic_height.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacIntrinsicHeight _$StacIntrinsicHeightFromJson(Map<String, dynamic> json) =>
    StacIntrinsicHeight(
      child: json['child'] == null
          ? null
          : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacIntrinsicHeightToJson(
  StacIntrinsicHeight instance,
) => <String, dynamic>{
  'child': instance.child?.toJson(),
  'type': instance.type,
};
