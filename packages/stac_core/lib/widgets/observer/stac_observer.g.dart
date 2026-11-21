// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_observer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacObserver _$StacObserverFromJson(Map<String, dynamic> json) => StacObserver(
  keys: (json['keys'] as List<dynamic>?)?.map((e) => e as String).toList(),
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacObserverToJson(StacObserver instance) =>
    <String, dynamic>{
      'keys': instance.keys,
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
