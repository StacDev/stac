// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_padding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacPaddingImpl _$$StacPaddingImplFromJson(Map<String, dynamic> json) =>
    _$StacPaddingImpl(
      padding: StacEdgeInsets.fromJson(json['padding']),
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$StacPaddingImplToJson(_$StacPaddingImpl instance) =>
    <String, dynamic>{
      'padding': instance.padding,
      'child': instance.child,
    };
