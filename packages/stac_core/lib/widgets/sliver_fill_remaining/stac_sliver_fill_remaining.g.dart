// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_sliver_fill_remaining.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSliverFillRemaining _$StacSliverFillRemainingFromJson(
  Map<String, dynamic> json,
) => StacSliverFillRemaining(
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
  hasScrollBody: json['hasScrollBody'] as bool?,
  fillOverscroll: json['fillOverscroll'] as bool?,
);

Map<String, dynamic> _$StacSliverFillRemainingToJson(
  StacSliverFillRemaining instance,
) => <String, dynamic>{
  'child': instance.child?.toJson(),
  'hasScrollBody': instance.hasScrollBody,
  'fillOverscroll': instance.fillOverscroll,
  'type': instance.type,
};
