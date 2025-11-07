// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_page_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacPageView _$StacPageViewFromJson(Map<String, dynamic> json) => StacPageView(
  scrollDirection: $enumDecodeNullable(
    _$StacAxisEnumMap,
    json['scrollDirection'],
  ),
  reverse: json['reverse'] as bool?,
  physics: $enumDecodeNullable(_$StacScrollPhysicsEnumMap, json['physics']),
  pageSnapping: json['pageSnapping'] as bool?,
  onPageChanged: json['onPageChanged'] == null
      ? null
      : StacAction.fromJson(json['onPageChanged'] as Map<String, dynamic>),
  dragStartBehavior: $enumDecodeNullable(
    _$StacDragStartBehaviorEnumMap,
    json['dragStartBehavior'],
  ),
  allowImplicitScrolling: json['allowImplicitScrolling'] as bool?,
  restorationId: json['restorationId'] as String?,
  clipBehavior: $enumDecodeNullable(_$StacClipEnumMap, json['clipBehavior']),
  padEnds: json['padEnds'] as bool?,
  initialPage: (json['initialPage'] as num?)?.toInt(),
  keepPage: json['keepPage'] as bool?,
  viewportFraction: const DoubleConverter().fromJson(json['viewportFraction']),
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => StacWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$StacPageViewToJson(
  StacPageView instance,
) => <String, dynamic>{
  'scrollDirection': _$StacAxisEnumMap[instance.scrollDirection],
  'reverse': instance.reverse,
  'physics': _$StacScrollPhysicsEnumMap[instance.physics],
  'pageSnapping': instance.pageSnapping,
  'onPageChanged': instance.onPageChanged?.toJson(),
  'dragStartBehavior':
      _$StacDragStartBehaviorEnumMap[instance.dragStartBehavior],
  'allowImplicitScrolling': instance.allowImplicitScrolling,
  'restorationId': instance.restorationId,
  'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
  'padEnds': instance.padEnds,
  'initialPage': instance.initialPage,
  'keepPage': instance.keepPage,
  'viewportFraction': const DoubleConverter().toJson(instance.viewportFraction),
  'children': instance.children?.map((e) => e.toJson()).toList(),
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
