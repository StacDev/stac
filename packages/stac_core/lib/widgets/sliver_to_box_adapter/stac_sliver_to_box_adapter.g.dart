// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_sliver_to_box_adapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSliverToBoxAdapter _$StacSliverToBoxAdapterFromJson(
  Map<String, dynamic> json,
) => StacSliverToBoxAdapter(
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacSliverToBoxAdapterToJson(
  StacSliverToBoxAdapter instance,
) => <String, dynamic>{
  'child': instance.child?.toJson(),
  'type': instance.type,
};
