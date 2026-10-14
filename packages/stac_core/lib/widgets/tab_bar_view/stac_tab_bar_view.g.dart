// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_tab_bar_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacTabBarView _$StacTabBarViewFromJson(
  Map<String, dynamic> json,
) => StacTabBarView(
  children:
      (json['children'] as List<dynamic>?)
          ?.map((e) => StacWidget.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  items: json['items'],
  itemTemplate: json['itemTemplate'] == null
      ? null
      : StacWidget.fromJson(json['itemTemplate'] as Map<String, dynamic>),
  emptyWidget: json['emptyWidget'] == null
      ? null
      : StacWidget.fromJson(json['emptyWidget'] as Map<String, dynamic>),
  keyPath: json['keyPath'] as String?,
  dragStartBehavior: $enumDecodeNullable(
    _$StacDragStartBehaviorEnumMap,
    json['dragStartBehavior'],
  ),
  physics: $enumDecodeNullable(_$StacScrollPhysicsEnumMap, json['physics']),
  viewportFraction: const DoubleConverter().fromJson(json['viewportFraction']),
  clipBehavior: $enumDecodeNullable(_$StacClipEnumMap, json['clipBehavior']),
);

Map<String, dynamic> _$StacTabBarViewToJson(
  StacTabBarView instance,
) => <String, dynamic>{
  'children': instance.children.map((e) => e.toJson()).toList(),
  'items': instance.items,
  'itemTemplate': instance.itemTemplate?.toJson(),
  'emptyWidget': instance.emptyWidget?.toJson(),
  'keyPath': instance.keyPath,
  'dragStartBehavior':
      _$StacDragStartBehaviorEnumMap[instance.dragStartBehavior],
  'physics': _$StacScrollPhysicsEnumMap[instance.physics],
  'viewportFraction': const DoubleConverter().toJson(instance.viewportFraction),
  'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
  'type': instance.type,
};

const _$StacDragStartBehaviorEnumMap = {
  StacDragStartBehavior.down: 'down',
  StacDragStartBehavior.start: 'start',
};

const _$StacScrollPhysicsEnumMap = {
  StacScrollPhysics.never: 'never',
  StacScrollPhysics.bouncing: 'bouncing',
  StacScrollPhysics.clamping: 'clamping',
  StacScrollPhysics.fixed: 'fixed',
  StacScrollPhysics.page: 'page',
};

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
