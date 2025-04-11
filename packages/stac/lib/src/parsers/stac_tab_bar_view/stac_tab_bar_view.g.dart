// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_tab_bar_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacTabBarView _$StacTabBarViewFromJson(Map<String, dynamic> json) =>
    _StacTabBarView(
      children: (json['children'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      initialIndex: (json['initialIndex'] as num?)?.toInt() ?? 0,
      dragStartBehavior: $enumDecodeNullable(
              _$DragStartBehaviorEnumMap, json['dragStartBehavior']) ??
          DragStartBehavior.start,
      physics: $enumDecodeNullable(_$StacScrollPhysicsEnumMap, json['physics']),
      viewportFraction: (json['viewportFraction'] as num?)?.toDouble() ?? 1.0,
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ??
          Clip.hardEdge,
    );

Map<String, dynamic> _$StacTabBarViewToJson(_StacTabBarView instance) =>
    <String, dynamic>{
      'children': instance.children,
      'initialIndex': instance.initialIndex,
      'dragStartBehavior':
          _$DragStartBehaviorEnumMap[instance.dragStartBehavior]!,
      'physics': _$StacScrollPhysicsEnumMap[instance.physics],
      'viewportFraction': instance.viewportFraction,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
    };

const _$DragStartBehaviorEnumMap = {
  DragStartBehavior.down: 'down',
  DragStartBehavior.start: 'start',
};

const _$StacScrollPhysicsEnumMap = {
  StacScrollPhysics.never: 'never',
  StacScrollPhysics.bouncing: 'bouncing',
  StacScrollPhysics.clamping: 'clamping',
  StacScrollPhysics.fixed: 'fixed',
  StacScrollPhysics.page: 'page',
};

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
