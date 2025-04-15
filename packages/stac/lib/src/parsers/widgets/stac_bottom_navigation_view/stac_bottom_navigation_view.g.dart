// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_bottom_navigation_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacBottomNavigationView _$StacBottomNavigationViewFromJson(
        Map<String, dynamic> json) =>
    _StacBottomNavigationView(
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$StacBottomNavigationViewToJson(
        _StacBottomNavigationView instance) =>
    <String, dynamic>{
      'children': instance.children,
    };
