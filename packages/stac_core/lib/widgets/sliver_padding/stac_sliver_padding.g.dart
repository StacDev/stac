// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_sliver_padding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSliverPadding _$StacSliverPaddingFromJson(Map<String, dynamic> json) =>
    StacSliverPadding(
      sliver: StacWidget.fromJson(json['sliver'] as Map<String, dynamic>),
      padding: StacEdgeInsets.fromJson(json['padding']),
    );

Map<String, dynamic> _$StacSliverPaddingToJson(StacSliverPadding instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'sliver': instance.sliver.toJson(),
      'type': instance.type,
    };
