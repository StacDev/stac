// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_default_bottom_navigation_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacDefaultBottomNavigationController
    _$StacDefaultBottomNavigationControllerFromJson(
            Map<String, dynamic> json) =>
        _StacDefaultBottomNavigationController(
          length: (json['length'] as num).toInt(),
          initialIndex: (json['initialIndex'] as num?)?.toInt(),
          child: json['child'] as Map<String, dynamic>,
        );

Map<String, dynamic> _$StacDefaultBottomNavigationControllerToJson(
        _StacDefaultBottomNavigationController instance) =>
    <String, dynamic>{
      'length': instance.length,
      'initialIndex': instance.initialIndex,
      'child': instance.child,
    };
