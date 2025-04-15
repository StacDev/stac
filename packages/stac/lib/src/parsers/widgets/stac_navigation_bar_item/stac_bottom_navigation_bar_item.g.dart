// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_bottom_navigation_bar_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacBottomNavigationBarItem _$StacBottomNavigationBarItemFromJson(
        Map<String, dynamic> json) =>
    _StacBottomNavigationBarItem(
      icon: json['icon'] as Map<String, dynamic>,
      label: json['label'] as String,
      activeIcon: json['activeIcon'] as Map<String, dynamic>?,
      backgroundColor: json['backgroundColor'] as String?,
      tooltip: json['tooltip'] as String?,
    );

Map<String, dynamic> _$StacBottomNavigationBarItemToJson(
        _StacBottomNavigationBarItem instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'label': instance.label,
      'activeIcon': instance.activeIcon,
      'backgroundColor': instance.backgroundColor,
      'tooltip': instance.tooltip,
    };
