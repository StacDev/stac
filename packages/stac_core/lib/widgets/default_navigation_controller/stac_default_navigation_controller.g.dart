// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_default_navigation_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacDefaultNavigationController _$StacDefaultNavigationControllerFromJson(
  Map<String, dynamic> json,
) => StacDefaultNavigationController(
  length: (json['length'] as num).toInt(),
  initialIndex: (json['initialIndex'] as num?)?.toInt(),
  child: StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacDefaultNavigationControllerToJson(
  StacDefaultNavigationController instance,
) => <String, dynamic>{
  'length': instance.length,
  'initialIndex': instance.initialIndex,
  'child': instance.child.toJson(),
  'type': instance.type,
};
