// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_navigation_destination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacNavigationDestination _$StacNavigationDestinationFromJson(
  Map<String, dynamic> json,
) => StacNavigationDestination(
  icon: StacWidget.fromJson(json['icon'] as Map<String, dynamic>),
  label: json['label'] as String,
  selectedIcon: json['selectedIcon'] == null
      ? null
      : StacWidget.fromJson(json['selectedIcon'] as Map<String, dynamic>),
  tooltip: json['tooltip'] as String?,
  enabled: json['enabled'] as bool?,
);

Map<String, dynamic> _$StacNavigationDestinationToJson(
  StacNavigationDestination instance,
) => <String, dynamic>{
  'icon': instance.icon.toJson(),
  'label': instance.label,
  'selectedIcon': instance.selectedIcon?.toJson(),
  'tooltip': instance.tooltip,
  'enabled': instance.enabled,
};
