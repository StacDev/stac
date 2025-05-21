// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_tab_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacTabBar _$StacTabBarFromJson(Map<String, dynamic> json) => _StacTabBar(
      tabs: (json['tabs'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      initialIndex: (json['initialIndex'] as num?)?.toInt() ?? 0,
      isScrollable: json['isScrollable'] as bool? ?? false,
      padding: json['padding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['padding']),
      indicatorColor: json['indicatorColor'] as String?,
      automaticIndicatorColorAdjustment:
          json['automaticIndicatorColorAdjustment'] as bool? ?? true,
      indicatorWeight: json['indicatorWeight'] == null
          ? const StacDouble(2.0)
          : StacDouble.fromJson(json['indicatorWeight']),
      indicatorPadding: json['indicatorPadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['indicatorPadding']),
      indicatorSize: $enumDecodeNullable(
          _$TabBarIndicatorSizeEnumMap, json['indicatorSize']),
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
              _$DragStartBehaviorEnumMap, json['dragStartBehavior']) ??
          DragStartBehavior.start,
      enableFeedback: json['enableFeedback'] as bool?,
      physics: $enumDecodeNullable(_$StacScrollPhysicsEnumMap, json['physics']),
      tabAlignment:
          $enumDecodeNullable(_$TabAlignmentEnumMap, json['tabAlignment']),
    );

Map<String, dynamic> _$StacTabBarToJson(_StacTabBar instance) =>
    <String, dynamic>{
      'tabs': instance.tabs,
      'initialIndex': instance.initialIndex,
      'isScrollable': instance.isScrollable,
      'padding': instance.padding,
      'indicatorColor': instance.indicatorColor,
      'automaticIndicatorColorAdjustment':
          instance.automaticIndicatorColorAdjustment,
      'indicatorWeight': instance.indicatorWeight,
      'indicatorPadding': instance.indicatorPadding,
      'indicatorSize': _$TabBarIndicatorSizeEnumMap[instance.indicatorSize],
      'labelColor': instance.labelColor,
      'labelStyle': instance.labelStyle,
      'labelPadding': instance.labelPadding,
      'unselectedLabelColor': instance.unselectedLabelColor,
      'unselectedLabelStyle': instance.unselectedLabelStyle,
      'dragStartBehavior':
          _$DragStartBehaviorEnumMap[instance.dragStartBehavior]!,
      'enableFeedback': instance.enableFeedback,
      'physics': _$StacScrollPhysicsEnumMap[instance.physics],
      'tabAlignment': _$TabAlignmentEnumMap[instance.tabAlignment],
    };

const _$TabBarIndicatorSizeEnumMap = {
  TabBarIndicatorSize.tab: 'tab',
  TabBarIndicatorSize.label: 'label',
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

const _$TabAlignmentEnumMap = {
  TabAlignment.start: 'start',
  TabAlignment.startOffset: 'startOffset',
  TabAlignment.fill: 'fill',
  TabAlignment.center: 'center',
};
