// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_list_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacListView _$StacListViewFromJson(Map<String, dynamic> json) => StacListView(
  scrollDirection: $enumDecodeNullable(
    _$StacAxisEnumMap,
    json['scrollDirection'],
  ),
  reverse: json['reverse'] as bool?,
  primary: json['primary'] as bool?,
  physics: $enumDecodeNullable(_$StacScrollPhysicsEnumMap, json['physics']),
  shrinkWrap: json['shrinkWrap'] as bool?,
  padding: json['padding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['padding']),
  addAutomaticKeepAlives: json['addAutomaticKeepAlives'] as bool?,
  addRepaintBoundaries: json['addRepaintBoundaries'] as bool?,
  addSemanticIndexes: json['addSemanticIndexes'] as bool?,
  cacheExtent: const DoubleConverter().fromJson(json['cacheExtent']),
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => StacWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
  separator: json['separator'] == null
      ? null
      : StacWidget.fromJson(json['separator'] as Map<String, dynamic>),
  semanticChildCount: (json['semanticChildCount'] as num?)?.toInt(),
  dragStartBehavior: $enumDecodeNullable(
    _$StacDragStartBehaviorEnumMap,
    json['dragStartBehavior'],
  ),
  keyboardDismissBehavior: $enumDecodeNullable(
    _$StacScrollViewKeyboardDismissBehaviorEnumMap,
    json['keyboardDismissBehavior'],
  ),
  restorationId: json['restorationId'] as String?,
  clipBehavior: $enumDecodeNullable(_$StacClipEnumMap, json['clipBehavior']),
);

Map<String, dynamic> _$StacListViewToJson(StacListView instance) =>
    <String, dynamic>{
      'scrollDirection': _$StacAxisEnumMap[instance.scrollDirection],
      'reverse': instance.reverse,
      'primary': instance.primary,
      'physics': _$StacScrollPhysicsEnumMap[instance.physics],
      'shrinkWrap': instance.shrinkWrap,
      'padding': instance.padding?.toJson(),
      'addAutomaticKeepAlives': instance.addAutomaticKeepAlives,
      'addRepaintBoundaries': instance.addRepaintBoundaries,
      'addSemanticIndexes': instance.addSemanticIndexes,
      'cacheExtent': const DoubleConverter().toJson(instance.cacheExtent),
      'children': instance.children?.map((e) => e.toJson()).toList(),
      'separator': instance.separator?.toJson(),
      'semanticChildCount': instance.semanticChildCount,
      'dragStartBehavior':
          _$StacDragStartBehaviorEnumMap[instance.dragStartBehavior],
      'keyboardDismissBehavior':
          _$StacScrollViewKeyboardDismissBehaviorEnumMap[instance
              .keyboardDismissBehavior],
      'restorationId': instance.restorationId,
      'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
      'type': instance.type,
    };

const _$StacAxisEnumMap = {
  StacAxis.horizontal: 'horizontal',
  StacAxis.vertical: 'vertical',
};

const _$StacScrollPhysicsEnumMap = {
  StacScrollPhysics.never: 'never',
  StacScrollPhysics.bouncing: 'bouncing',
  StacScrollPhysics.clamping: 'clamping',
  StacScrollPhysics.fixed: 'fixed',
  StacScrollPhysics.page: 'page',
};

const _$StacDragStartBehaviorEnumMap = {
  StacDragStartBehavior.down: 'down',
  StacDragStartBehavior.start: 'start',
};

const _$StacScrollViewKeyboardDismissBehaviorEnumMap = {
  StacScrollViewKeyboardDismissBehavior.manual: 'manual',
  StacScrollViewKeyboardDismissBehavior.onDrag: 'onDrag',
};

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
