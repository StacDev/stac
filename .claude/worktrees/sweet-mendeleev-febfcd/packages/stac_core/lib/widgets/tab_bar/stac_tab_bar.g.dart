// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_tab_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacTabBar _$StacTabBarFromJson(Map<String, dynamic> json) => StacTabBar(
  tabs: (json['tabs'] as List<dynamic>)
      .map((e) => StacWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
  initialIndex: (json['initialIndex'] as num?)?.toInt(),
  isScrollable: json['isScrollable'] as bool?,
  padding: json['padding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['padding']),
  indicatorColor: json['indicatorColor'] as String?,
  automaticIndicatorColorAdjustment:
      json['automaticIndicatorColorAdjustment'] as bool?,
  indicatorWeight: const DoubleConverter().fromJson(json['indicatorWeight']),
  indicatorPadding: json['indicatorPadding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['indicatorPadding']),
  indicator: json['indicator'] == null
      ? null
      : StacBoxDecoration.fromJson(json['indicator'] as Map<String, dynamic>),
  indicatorSize: $enumDecodeNullable(
    _$StacTabBarIndicatorSizeEnumMap,
    json['indicatorSize'],
  ),
  labelColor: json['labelColor'] as String?,
  labelStyle: json['labelStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['labelStyle']),
  labelPadding: json['labelPadding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['labelPadding']),
  unselectedLabelColor: json['unselectedLabelColor'] as String?,
  unselectedLabelStyle: json['unselectedLabelStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['unselectedLabelStyle']),
  dragStartBehavior: $enumDecodeNullable(
    _$StacDragStartBehaviorEnumMap,
    json['dragStartBehavior'],
  ),
  enableFeedback: json['enableFeedback'] as bool?,
  physics: $enumDecodeNullable(_$StacScrollPhysicsEnumMap, json['physics']),
  tabAlignment: $enumDecodeNullable(
    _$StacTabAlignmentEnumMap,
    json['tabAlignment'],
  ),
  dividerColor: json['dividerColor'] as String?,
  dividerHeight: const DoubleConverter().fromJson(json['dividerHeight']),
);

Map<String, dynamic> _$StacTabBarToJson(
  StacTabBar instance,
) => <String, dynamic>{
  'tabs': instance.tabs.map((e) => e.toJson()).toList(),
  'initialIndex': instance.initialIndex,
  'isScrollable': instance.isScrollable,
  'padding': instance.padding?.toJson(),
  'indicatorColor': instance.indicatorColor,
  'automaticIndicatorColorAdjustment':
      instance.automaticIndicatorColorAdjustment,
  'indicatorWeight': const DoubleConverter().toJson(instance.indicatorWeight),
  'indicatorPadding': instance.indicatorPadding?.toJson(),
  'indicator': instance.indicator?.toJson(),
  'indicatorSize': _$StacTabBarIndicatorSizeEnumMap[instance.indicatorSize],
  'labelColor': instance.labelColor,
  'labelStyle': instance.labelStyle?.toJson(),
  'labelPadding': instance.labelPadding?.toJson(),
  'unselectedLabelColor': instance.unselectedLabelColor,
  'unselectedLabelStyle': instance.unselectedLabelStyle?.toJson(),
  'dragStartBehavior':
      _$StacDragStartBehaviorEnumMap[instance.dragStartBehavior],
  'enableFeedback': instance.enableFeedback,
  'physics': _$StacScrollPhysicsEnumMap[instance.physics],
  'tabAlignment': _$StacTabAlignmentEnumMap[instance.tabAlignment],
  'dividerColor': instance.dividerColor,
  'dividerHeight': const DoubleConverter().toJson(instance.dividerHeight),
  'type': instance.type,
};

const _$StacTabBarIndicatorSizeEnumMap = {
  StacTabBarIndicatorSize.tab: 'tab',
  StacTabBarIndicatorSize.label: 'label',
};

const _$StacDragStartBehaviorEnumMap = {
  StacDragStartBehavior.down: 'down',
  StacDragStartBehavior.start: 'start',
};

const _$StacScrollPhysicsEnumMap = {
  StacScrollPhysics.never: 'never',
  StacScrollPhysics.bouncing: 'bouncing',
  StacScrollPhysics.clamping: 'clamping',
  StacScrollPhysics.fixed: 'fixed',
  StacScrollPhysics.page: 'page',
};

const _$StacTabAlignmentEnumMap = {
  StacTabAlignment.start: 'start',
  StacTabAlignment.startOffset: 'startOffset',
  StacTabAlignment.fill: 'fill',
  StacTabAlignment.center: 'center',
};
