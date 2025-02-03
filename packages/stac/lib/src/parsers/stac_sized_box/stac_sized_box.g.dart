// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_sized_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacSizedBoxImpl _$$StacSizedBoxImplFromJson(Map<String, dynamic> json) =>
    _$StacSizedBoxImpl(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$StacSizedBoxImplToJson(_$StacSizedBoxImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'child': instance.child,
    };
