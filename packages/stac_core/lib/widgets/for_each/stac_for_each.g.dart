// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_for_each.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacForEach _$StacForEachFromJson(Map<String, dynamic> json) => StacForEach(
  items: json['items'],
  itemTemplate: StacWidget.fromJson(
    json['itemTemplate'] as Map<String, dynamic>,
  ),
  emptyWidget: json['emptyWidget'] == null
      ? null
      : StacWidget.fromJson(json['emptyWidget'] as Map<String, dynamic>),
  keyPath: json['keyPath'] as String?,
);

Map<String, dynamic> _$StacForEachToJson(StacForEach instance) =>
    <String, dynamic>{
      'items': instance.items,
      'itemTemplate': instance.itemTemplate.toJson(),
      'emptyWidget': instance.emptyWidget?.toJson(),
      'keyPath': instance.keyPath,
      'type': instance.type,
    };
