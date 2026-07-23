// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_padding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacPadding _$StacPaddingFromJson(Map<String, dynamic> json) => StacPadding(
  padding: json['padding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['padding']),
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacPaddingToJson(StacPadding instance) =>
    <String, dynamic>{
      'padding': instance.padding?.toJson(),
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
