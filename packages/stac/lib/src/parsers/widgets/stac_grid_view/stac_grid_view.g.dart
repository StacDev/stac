// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_grid_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacGridView _$StacGridViewFromJson(Map<String, dynamic> json) =>
    _StacGridView(
      scrollDirection:
          $enumDecodeNullable(_$AxisEnumMap, json['scrollDirection']) ??
              Axis.vertical,
      reverse: json['reverse'] as bool? ?? false,
      primary: json['primary'] as bool? ?? false,
      physics: $enumDecodeNullable(_$StacScrollPhysicsEnumMap, json['physics']),
      shrinkWrap: json['shrinkWrap'] as bool? ?? false,
      padding: json['padding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['padding']),
      crossAxisCount: (json['crossAxisCount'] as num?)?.toInt(),
      mainAxisSpacing: json['mainAxisSpacing'] == null
          ? StacDouble.zero
          : StacDouble.fromJson(json['mainAxisSpacing']),
      crossAxisSpacing: json['crossAxisSpacing'] == null
          ? StacDouble.zero
          : StacDouble.fromJson(json['crossAxisSpacing']),
      childAspectRatio: json['childAspectRatio'] == null
          ? const StacDouble(1.0)
          : StacDouble.fromJson(json['childAspectRatio']),
      mainAxisExtent: json['mainAxisExtent'] == null
          ? null
          : StacDouble.fromJson(json['mainAxisExtent']),
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

Map<String, dynamic> _$StacGridViewToJson(_StacGridView instance) =>
    <String, dynamic>{
      'scrollDirection': _$AxisEnumMap[instance.scrollDirection]!,
      'reverse': instance.reverse,
      'primary': instance.primary,
      'physics': _$StacScrollPhysicsEnumMap[instance.physics],
      'shrinkWrap': instance.shrinkWrap,
      'padding': instance.padding,
      'crossAxisCount': instance.crossAxisCount,
      'mainAxisSpacing': instance.mainAxisSpacing,
      'crossAxisSpacing': instance.crossAxisSpacing,
      'childAspectRatio': instance.childAspectRatio,
      'mainAxisExtent': instance.mainAxisExtent,
      'addAutomaticKeepAlives': instance.addAutomaticKeepAlives,
      'addRepaintBoundaries': instance.addRepaintBoundaries,
      'addSemanticIndexes': instance.addSemanticIndexes,
      'cacheExtent': instance.cacheExtent,
      'children': instance.children,
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
