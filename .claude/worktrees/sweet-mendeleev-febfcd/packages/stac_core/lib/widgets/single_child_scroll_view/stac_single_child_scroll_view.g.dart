// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_single_child_scroll_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSingleChildScrollView _$StacSingleChildScrollViewFromJson(
  Map<String, dynamic> json,
) => StacSingleChildScrollView(
  scrollDirection: $enumDecodeNullable(
    _$StacAxisEnumMap,
    json['scrollDirection'],
  ),
  reverse: json['reverse'] as bool?,
  padding: json['padding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['padding']),
  primary: json['primary'] as bool?,
  physics: $enumDecodeNullable(_$StacScrollPhysicsEnumMap, json['physics']),
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
  dragStartBehavior: $enumDecodeNullable(
    _$StacDragStartBehaviorEnumMap,
    json['dragStartBehavior'],
  ),
  clipBehavior: $enumDecodeNullable(_$StacClipEnumMap, json['clipBehavior']),
  restorationId: json['restorationId'] as String?,
  keyboardDismissBehavior: $enumDecodeNullable(
    _$StacScrollViewKeyboardDismissBehaviorEnumMap,
    json['keyboardDismissBehavior'],
  ),
);

Map<String, dynamic> _$StacSingleChildScrollViewToJson(
  StacSingleChildScrollView instance,
) => <String, dynamic>{
  'scrollDirection': _$StacAxisEnumMap[instance.scrollDirection],
  'reverse': instance.reverse,
  'padding': instance.padding?.toJson(),
  'primary': instance.primary,
  'physics': _$StacScrollPhysicsEnumMap[instance.physics],
  'child': instance.child?.toJson(),
  'dragStartBehavior':
      _$StacDragStartBehaviorEnumMap[instance.dragStartBehavior],
  'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
  'restorationId': instance.restorationId,
  'keyboardDismissBehavior':
      _$StacScrollViewKeyboardDismissBehaviorEnumMap[instance
          .keyboardDismissBehavior],
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

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};

const _$StacScrollViewKeyboardDismissBehaviorEnumMap = {
  StacScrollViewKeyboardDismissBehavior.manual: 'manual',
  StacScrollViewKeyboardDismissBehavior.onDrag: 'onDrag',
};
