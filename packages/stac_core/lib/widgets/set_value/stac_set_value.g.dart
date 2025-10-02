// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_set_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSetValue _$StacSetValueFromJson(Map<String, dynamic> json) => StacSetValue(
  values:
      (json['values'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList() ??
      const [],
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacSetValueToJson(StacSetValue instance) =>
    <String, dynamic>{
      'values': instance.values,
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
