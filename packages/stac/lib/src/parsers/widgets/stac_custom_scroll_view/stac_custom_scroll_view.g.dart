// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_custom_scroll_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacCustomScrollView _$StacCustomScrollViewFromJson(
        Map<String, dynamic> json) =>
    _StacCustomScrollView(
      slivers: (json['slivers'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      scrollDirection:
          $enumDecodeNullable(_$AxisEnumMap, json['scrollDirection']) ??
              Axis.vertical,
      reverse: json['reverse'] as bool? ?? false,
      primary: json['primary'] as bool?,
      physics: $enumDecodeNullable(_$StacScrollPhysicsEnumMap, json['physics']),
      shrinkWrap: json['shrinkWrap'] as bool? ?? false,
      anchor: json['anchor'] == null
          ? StacDouble.zero
          : StacDouble.fromJson(json['anchor']),
      cacheExtent: json['cacheExtent'] == null
          ? null
          : StacDouble.fromJson(json['cacheExtent']),
      semanticChildCount: (json['semanticChildCount'] as num?)?.toInt(),
      dragStartBehavior: $enumDecodeNullable(
              _$DragStartBehaviorEnumMap, json['dragStartBehavior']) ??
          DragStartBehavior.start,
      keyboardDismissBehavior: $enumDecodeNullable(
              _$ScrollViewKeyboardDismissBehaviorEnumMap,
              json['keyboardDismissBehavior']) ??
          ScrollViewKeyboardDismissBehavior.manual,
      restorationId: json['restorationId'] as String?,
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ??
          Clip.hardEdge,
      hitTestBehavior: $enumDecodeNullable(
              _$HitTestBehaviorEnumMap, json['hitTestBehavior']) ??
          HitTestBehavior.opaque,
    );

Map<String, dynamic> _$StacCustomScrollViewToJson(
        _StacCustomScrollView instance) =>
    <String, dynamic>{
      'slivers': instance.slivers,
      'scrollDirection': _$AxisEnumMap[instance.scrollDirection]!,
      'reverse': instance.reverse,
      'primary': instance.primary,
      'physics': _$StacScrollPhysicsEnumMap[instance.physics],
      'shrinkWrap': instance.shrinkWrap,
      'anchor': instance.anchor,
      'cacheExtent': instance.cacheExtent,
      'semanticChildCount': instance.semanticChildCount,
      'dragStartBehavior':
          _$DragStartBehaviorEnumMap[instance.dragStartBehavior]!,
      'keyboardDismissBehavior': _$ScrollViewKeyboardDismissBehaviorEnumMap[
          instance.keyboardDismissBehavior]!,
      'restorationId': instance.restorationId,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
      'hitTestBehavior': _$HitTestBehaviorEnumMap[instance.hitTestBehavior]!,
    };

const _$AxisEnumMap = {
  Axis.horizontal: 'horizontal',
  Axis.vertical: 'vertical',
};

const _$StacScrollPhysicsEnumMap = {
  StacScrollPhysics.never: 'never',
  StacScrollPhysics.bouncing: 'bouncing',
  StacScrollPhysics.clamping: 'clamping',
  StacScrollPhysics.fixed: 'fixed',
  StacScrollPhysics.page: 'page',
};

const _$DragStartBehaviorEnumMap = {
  DragStartBehavior.down: 'down',
  DragStartBehavior.start: 'start',
};

const _$ScrollViewKeyboardDismissBehaviorEnumMap = {
  ScrollViewKeyboardDismissBehavior.manual: 'manual',
  ScrollViewKeyboardDismissBehavior.onDrag: 'onDrag',
};

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};

const _$HitTestBehaviorEnumMap = {
  HitTestBehavior.deferToChild: 'deferToChild',
  HitTestBehavior.opaque: 'opaque',
  HitTestBehavior.translucent: 'translucent',
};
