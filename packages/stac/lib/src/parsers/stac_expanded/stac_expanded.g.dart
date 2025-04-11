// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_expanded.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacExpanded _$StacExpandedFromJson(Map<String, dynamic> json) =>
    _StacExpanded(
      flex: (json['flex'] as num?)?.toInt() ?? 1,
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacExpandedToJson(_StacExpanded instance) =>
    <String, dynamic>{
      'flex': instance.flex,
      'child': instance.child,
    };
