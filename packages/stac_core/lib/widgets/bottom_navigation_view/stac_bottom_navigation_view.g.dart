// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_bottom_navigation_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacBottomNavigationView _$StacBottomNavigationViewFromJson(
  Map<String, dynamic> json,
) => StacBottomNavigationView(
  children: (json['children'] as List<dynamic>)
      .map((e) => StacWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$StacBottomNavigationViewToJson(
  StacBottomNavigationView instance,
) => <String, dynamic>{
  'children': instance.children.map((e) => e.toJson()).toList(),
  'type': instance.type,
};
