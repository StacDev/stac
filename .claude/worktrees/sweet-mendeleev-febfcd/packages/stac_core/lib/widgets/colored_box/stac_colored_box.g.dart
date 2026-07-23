// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_colored_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacColoredBox _$StacColoredBoxFromJson(Map<String, dynamic> json) =>
    StacColoredBox(
      color: json['color'] as String,
      child: json['child'] == null
          ? null
          : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacColoredBoxToJson(StacColoredBox instance) =>
    <String, dynamic>{
      'color': instance.color,
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
