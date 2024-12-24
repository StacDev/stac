// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_tab_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiTabBarImpl _$$MiraiTabBarImplFromJson(Map<String, dynamic> json) =>
    _$MiraiTabBarImpl(
      tabs: (json['tabs'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      initialIndex: (json['initialIndex'] as num?)?.toInt() ?? 0,
      isScrollable: json['isScrollable'] as bool? ?? false,
      padding: json['padding'] == null
          ? null
          : MiraiEdgeInsets.fromJson(json['padding']),
      indicatorColor: json['indicatorColor'] as String?,
      automaticIndicatorColorAdjustment:
          json['automaticIndicatorColorAdjustment'] as bool? ?? true,
      indicatorWeight: (json['indicatorWeight'] as num?)?.toDouble() ?? 2.0,
      indicatorPadding: json['indicatorPadding'] == null
          ? null
          : MiraiEdgeInsets.fromJson(json['indicatorPadding']),
      indicatorSize: $enumDecodeNullable(
          _$TabBarIndicatorSizeEnumMap, json['indicatorSize']),
      labelColor: json['labelColor'] as String?,
      labelStyle: json['labelStyle'] == null
          ? null
          : MiraiTextStyle.fromJson(json['labelStyle']),
      labelPadding: json['labelPadding'] == null
          ? null
          : MiraiEdgeInsets.fromJson(json['labelPadding']),
      unselectedLabelColor: json['unselectedLabelColor'] as String?,
      unselectedLabelStyle: json['unselectedLabelStyle'] == null
          ? null
          : MiraiTextStyle.fromJson(json['unselectedLabelStyle']),
      dragStartBehavior: $enumDecodeNullable(
              _$DragStartBehaviorEnumMap, json['dragStartBehavior']) ??
          DragStartBehavior.start,
      enableFeedback: json['enableFeedback'] as bool?,
      physics:
          $enumDecodeNullable(_$MiraiScrollPhysicsEnumMap, json['physics']),
      tabAlignment:
          $enumDecodeNullable(_$TabAlignmentEnumMap, json['tabAlignment']),
    );

Map<String, dynamic> _$$MiraiTabBarImplToJson(_$MiraiTabBarImpl instance) =>
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
      'physics': _$MiraiScrollPhysicsEnumMap[instance.physics],
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

const _$MiraiScrollPhysicsEnumMap = {
  MiraiScrollPhysics.never: 'never',
  MiraiScrollPhysics.bouncing: 'bouncing',
  MiraiScrollPhysics.clamping: 'clamping',
  MiraiScrollPhysics.fixed: 'fixed',
  MiraiScrollPhysics.page: 'page',
};

const _$TabAlignmentEnumMap = {
  TabAlignment.start: 'start',
  TabAlignment.startOffset: 'startOffset',
  TabAlignment.fill: 'fill',
  TabAlignment.center: 'center',
};
