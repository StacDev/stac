// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_colored_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacColoredBox _$StacColoredBoxFromJson(Map<String, dynamic> json) =>
    _StacColoredBox(
      color: json['color'] as String,
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacColoredBoxToJson(_StacColoredBox instance) =>
    <String, dynamic>{
      'color': instance.color,
      'child': instance.child,
    };
