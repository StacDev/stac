// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_expanded.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacExpandedImpl _$$StacExpandedImplFromJson(Map<String, dynamic> json) =>
    _$StacExpandedImpl(
      flex: (json['flex'] as num?)?.toInt() ?? 1,
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$StacExpandedImplToJson(_$StacExpandedImpl instance) =>
    <String, dynamic>{
      'flex': instance.flex,
      'child': instance.child,
    };
