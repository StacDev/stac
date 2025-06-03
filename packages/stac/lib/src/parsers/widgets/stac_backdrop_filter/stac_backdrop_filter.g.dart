// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_backdrop_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacBackdropFilter _$StacBackdropFilterFromJson(Map<String, dynamic> json) =>
    _StacBackdropFilter(
      filter: StacImageFilter.fromJson(json['filter'] as Map<String, dynamic>),
      child: json['child'] as Map<String, dynamic>?,
      enabled: json['enabled'] as bool? ?? true,
    );

Map<String, dynamic> _$StacBackdropFilterToJson(_StacBackdropFilter instance) =>
    <String, dynamic>{
      'filter': instance.filter,
      'child': instance.child,
      'enabled': instance.enabled,
    };
