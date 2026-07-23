// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_bottom_navigation_bar_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacBottomNavigationBarItem _$StacBottomNavigationBarItemFromJson(
  Map<String, dynamic> json,
) => StacBottomNavigationBarItem(
  icon: StacWidget.fromJson(json['icon'] as Map<String, dynamic>),
  label: json['label'] as String,
  activeIcon: json['activeIcon'] == null
      ? null
      : StacWidget.fromJson(json['activeIcon'] as Map<String, dynamic>),
  backgroundColor: json['backgroundColor'] as String?,
  tooltip: json['tooltip'] as String?,
);

Map<String, dynamic> _$StacBottomNavigationBarItemToJson(
  StacBottomNavigationBarItem instance,
) => <String, dynamic>{
  'icon': instance.icon.toJson(),
  'label': instance.label,
  'activeIcon': instance.activeIcon?.toJson(),
  'backgroundColor': instance.backgroundColor,
  'tooltip': instance.tooltip,
};
