// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_page_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiPageViewImpl _$$MiraiPageViewImplFromJson(Map<String, dynamic> json) =>
    _$MiraiPageViewImpl(
      scrollDirection:
          $enumDecodeNullable(_$AxisEnumMap, json['scrollDirection']) ??
              Axis.horizontal,
      reverse: json['reverse'] as bool? ?? false,
      physics:
          $enumDecodeNullable(_$MiraiScrollPhysicsEnumMap, json['physics']),
      pageSnapping: json['pageSnapping'] as bool? ?? true,
      onPageChanged: json['onPageChanged'] as Map<String, dynamic>?,
      dragStartBehavior: $enumDecodeNullable(
              _$DragStartBehaviorEnumMap, json['dragStartBehavior']) ??
          DragStartBehavior.start,
      allowImplicitScrolling: json['allowImplicitScrolling'] as bool? ?? false,
      restorationId: json['restorationId'] as String?,
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ??
          Clip.hardEdge,
      padEnds: json['padEnds'] as bool? ?? true,
      initialPage: (json['initialPage'] as num?)?.toInt() ?? 0,
      keepPage: json['keepPage'] ?? true,
      viewportFraction: (json['viewportFraction'] as num?)?.toDouble() ?? 1.0,
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MiraiPageViewImplToJson(_$MiraiPageViewImpl instance) =>
    <String, dynamic>{
      'scrollDirection': _$AxisEnumMap[instance.scrollDirection]!,
      'reverse': instance.reverse,
      'physics': _$MiraiScrollPhysicsEnumMap[instance.physics],
      'pageSnapping': instance.pageSnapping,
      'onPageChanged': instance.onPageChanged,
      'dragStartBehavior':
          _$DragStartBehaviorEnumMap[instance.dragStartBehavior]!,
      'allowImplicitScrolling': instance.allowImplicitScrolling,
      'restorationId': instance.restorationId,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
      'padEnds': instance.padEnds,
      'initialPage': instance.initialPage,
      'keepPage': instance.keepPage,
      'viewportFraction': instance.viewportFraction,
      'children': instance.children,
    };

const _$AxisEnumMap = {
  Axis.horizontal: 'horizontal',
  Axis.vertical: 'vertical',
};

const _$MiraiScrollPhysicsEnumMap = {
  MiraiScrollPhysics.never: 'never',
  MiraiScrollPhysics.bouncing: 'bouncing',
  MiraiScrollPhysics.clamping: 'clamping',
  MiraiScrollPhysics.fixed: 'fixed',
  MiraiScrollPhysics.page: 'page',
};

const _$DragStartBehaviorEnumMap = {
  DragStartBehavior.down: 'down',
  DragStartBehavior.start: 'start',
};

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
