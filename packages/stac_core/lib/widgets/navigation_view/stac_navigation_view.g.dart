// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_navigation_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacNavigationView _$StacNavigationViewFromJson(Map<String, dynamic> json) =>
    StacNavigationView(
      children: (json['children'] as List<dynamic>)
          .map((e) => StacWidget.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StacNavigationViewToJson(StacNavigationView instance) =>
    <String, dynamic>{
      'children': instance.children.map((e) => e.toJson()).toList(),
      'type': instance.type,
    };
