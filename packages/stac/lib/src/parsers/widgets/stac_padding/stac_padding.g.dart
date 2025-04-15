// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_padding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacPadding _$StacPaddingFromJson(Map<String, dynamic> json) => _StacPadding(
      padding: StacEdgeInsets.fromJson(json['padding']),
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacPaddingToJson(_StacPadding instance) =>
    <String, dynamic>{
      'padding': instance.padding,
      'child': instance.child,
    };
