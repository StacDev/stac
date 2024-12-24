// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_tab_bar_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiTabBarViewImpl _$$MiraiTabBarViewImplFromJson(
        Map<String, dynamic> json) =>
    _$MiraiTabBarViewImpl(
      children: (json['children'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      initialIndex: (json['initialIndex'] as num?)?.toInt() ?? 0,
      dragStartBehavior: $enumDecodeNullable(
              _$DragStartBehaviorEnumMap, json['dragStartBehavior']) ??
          DragStartBehavior.start,
      physics:
          $enumDecodeNullable(_$MiraiScrollPhysicsEnumMap, json['physics']),
      viewportFraction: (json['viewportFraction'] as num?)?.toDouble() ?? 1.0,
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ??
          Clip.hardEdge,
    );

Map<String, dynamic> _$$MiraiTabBarViewImplToJson(
        _$MiraiTabBarViewImpl instance) =>
    <String, dynamic>{
      'children': instance.children,
      'initialIndex': instance.initialIndex,
      'dragStartBehavior':
          _$DragStartBehaviorEnumMap[instance.dragStartBehavior]!,
      'physics': _$MiraiScrollPhysicsEnumMap[instance.physics],
      'viewportFraction': instance.viewportFraction,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
    };

const _$DragStartBehaviorEnumMap = {
  DragStartBehavior.down: 'down',
  DragStartBehavior.start: 'start',
};

const _$MiraiScrollPhysicsEnumMap = {
  MiraiScrollPhysics.never: 'never',
  MiraiScrollPhysics.bouncing: 'bouncing',
  MiraiScrollPhysics.clamping: 'clamping',
  MiraiScrollPhysics.fixed: 'fixed',
  MiraiScrollPhysics.page: 'page',
};

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
