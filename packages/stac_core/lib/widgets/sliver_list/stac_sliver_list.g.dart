// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_sliver_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSliverList _$StacSliverListFromJson(Map<String, dynamic> json) =>
    StacSliverList(
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => StacWidget.fromJson(e as Map<String, dynamic>))
          .toList(),
      items: json['items'],
      itemTemplate: json['itemTemplate'] == null
          ? null
          : StacWidget.fromJson(json['itemTemplate'] as Map<String, dynamic>),
      emptyWidget: json['emptyWidget'] == null
          ? null
          : StacWidget.fromJson(json['emptyWidget'] as Map<String, dynamic>),
      keyPath: json['keyPath'] as String?,
      addAutomaticKeepAlives: json['addAutomaticKeepAlives'] as bool?,
      addRepaintBoundaries: json['addRepaintBoundaries'] as bool?,
      addSemanticIndexes: json['addSemanticIndexes'] as bool?,
      semanticIndexOffset: (json['semanticIndexOffset'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StacSliverListToJson(StacSliverList instance) =>
    <String, dynamic>{
      'children': instance.children?.map((e) => e.toJson()).toList(),
      'items': instance.items,
      'itemTemplate': instance.itemTemplate?.toJson(),
      'emptyWidget': instance.emptyWidget?.toJson(),
      'keyPath': instance.keyPath,
      'addAutomaticKeepAlives': instance.addAutomaticKeepAlives,
      'addRepaintBoundaries': instance.addRepaintBoundaries,
      'addSemanticIndexes': instance.addSemanticIndexes,
      'semanticIndexOffset': instance.semanticIndexOffset,
      'type': instance.type,
    };
