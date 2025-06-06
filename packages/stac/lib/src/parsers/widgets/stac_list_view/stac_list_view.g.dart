// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_list_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacListView _$StacListViewFromJson(Map<String, dynamic> json) =>
    _StacListView(
      scrollDirection:
          $enumDecodeNullable(_$AxisEnumMap, json['scrollDirection']) ??
              Axis.vertical,
      reverse: json['reverse'] as bool? ?? false,
      primary: json['primary'] as bool?,
      physics: $enumDecodeNullable(_$StacScrollPhysicsEnumMap, json['physics']),
      shrinkWrap: json['shrinkWrap'] as bool? ?? false,
      padding: json['padding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['padding']),
      addAutomaticKeepAlives: json['addAutomaticKeepAlives'] as bool? ?? true,
      addRepaintBoundaries: json['addRepaintBoundaries'] as bool? ?? true,
      addSemanticIndexes: json['addSemanticIndexes'] as bool? ?? true,
      cacheExtent: json['cacheExtent'] == null
          ? null
          : StacDouble.fromJson(json['cacheExtent']),
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      separator: json['separator'] as Map<String, dynamic>?,
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
    );

Map<String, dynamic> _$StacListViewToJson(_StacListView instance) =>
    <String, dynamic>{
      'scrollDirection': _$AxisEnumMap[instance.scrollDirection]!,
      'reverse': instance.reverse,
      'primary': instance.primary,
      'physics': _$StacScrollPhysicsEnumMap[instance.physics],
      'shrinkWrap': instance.shrinkWrap,
      'padding': instance.padding,
      'addAutomaticKeepAlives': instance.addAutomaticKeepAlives,
      'addRepaintBoundaries': instance.addRepaintBoundaries,
      'addSemanticIndexes': instance.addSemanticIndexes,
      'cacheExtent': instance.cacheExtent,
      'children': instance.children,
      'separator': instance.separator,
      'semanticChildCount': instance.semanticChildCount,
      'dragStartBehavior':
          _$DragStartBehaviorEnumMap[instance.dragStartBehavior]!,
      'keyboardDismissBehavior': _$ScrollViewKeyboardDismissBehaviorEnumMap[
          instance.keyboardDismissBehavior]!,
      'restorationId': instance.restorationId,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
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
