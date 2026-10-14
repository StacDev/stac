// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_sliver_grid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSliverGrid _$StacSliverGridFromJson(
  Map<String, dynamic> json,
) => StacSliverGrid(
  crossAxisCount: (json['crossAxisCount'] as num?)?.toInt(),
  mainAxisSpacing: const DoubleConverter().fromJson(json['mainAxisSpacing']),
  crossAxisSpacing: const DoubleConverter().fromJson(json['crossAxisSpacing']),
  childAspectRatio: const DoubleConverter().fromJson(json['childAspectRatio']),
  mainAxisExtent: const DoubleConverter().fromJson(json['mainAxisExtent']),
  addAutomaticKeepAlives: json['addAutomaticKeepAlives'] as bool?,
  addRepaintBoundaries: json['addRepaintBoundaries'] as bool?,
  addSemanticIndexes: json['addSemanticIndexes'] as bool?,
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
);

Map<String, dynamic> _$StacSliverGridToJson(
  StacSliverGrid instance,
) => <String, dynamic>{
  'crossAxisCount': instance.crossAxisCount,
  'mainAxisSpacing': const DoubleConverter().toJson(instance.mainAxisSpacing),
  'crossAxisSpacing': const DoubleConverter().toJson(instance.crossAxisSpacing),
  'childAspectRatio': const DoubleConverter().toJson(instance.childAspectRatio),
  'mainAxisExtent': const DoubleConverter().toJson(instance.mainAxisExtent),
  'addAutomaticKeepAlives': instance.addAutomaticKeepAlives,
  'addRepaintBoundaries': instance.addRepaintBoundaries,
  'addSemanticIndexes': instance.addSemanticIndexes,
  'children': instance.children?.map((e) => e.toJson()).toList(),
  'items': instance.items,
  'itemTemplate': instance.itemTemplate?.toJson(),
  'emptyWidget': instance.emptyWidget?.toJson(),
  'keyPath': instance.keyPath,
  'type': instance.type,
};
