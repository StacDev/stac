// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_custom_scroll_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacCustomScrollView _$StacCustomScrollViewFromJson(
  Map<String, dynamic> json,
) => StacCustomScrollView(
  slivers: (json['slivers'] as List<dynamic>?)
      ?.map((e) => StacWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
  scrollDirection: $enumDecodeNullable(
    _$StacAxisEnumMap,
    json['scrollDirection'],
  ),
  reverse: json['reverse'] as bool?,
  primary: json['primary'] as bool?,
  physics: $enumDecodeNullable(_$StacScrollPhysicsEnumMap, json['physics']),
  shrinkWrap: json['shrinkWrap'] as bool?,
  anchor: const DoubleConverter().fromJson(json['anchor']),
  cacheExtent: const DoubleConverter().fromJson(json['cacheExtent']),
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
  hitTestBehavior: $enumDecodeNullable(
    _$StacHitTestBehaviorEnumMap,
    json['hitTestBehavior'],
  ),
);

Map<String, dynamic> _$StacCustomScrollViewToJson(
  StacCustomScrollView instance,
) => <String, dynamic>{
  'slivers': instance.slivers?.map((e) => e.toJson()).toList(),
  'scrollDirection': _$StacAxisEnumMap[instance.scrollDirection],
  'reverse': instance.reverse,
  'primary': instance.primary,
  'physics': _$StacScrollPhysicsEnumMap[instance.physics],
  'shrinkWrap': instance.shrinkWrap,
  'anchor': const DoubleConverter().toJson(instance.anchor),
  'cacheExtent': const DoubleConverter().toJson(instance.cacheExtent),
  'semanticChildCount': instance.semanticChildCount,
  'dragStartBehavior':
      _$StacDragStartBehaviorEnumMap[instance.dragStartBehavior],
  'keyboardDismissBehavior':
      _$StacScrollViewKeyboardDismissBehaviorEnumMap[instance
          .keyboardDismissBehavior],
  'restorationId': instance.restorationId,
  'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
  'hitTestBehavior': _$StacHitTestBehaviorEnumMap[instance.hitTestBehavior],
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

const _$StacHitTestBehaviorEnumMap = {
  StacHitTestBehavior.deferToChild: 'deferToChild',
  StacHitTestBehavior.opaque: 'opaque',
  StacHitTestBehavior.translucent: 'translucent',
};
