// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_default_bottom_navigation_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacDefaultBottomNavigationControllerImpl
    _$$StacDefaultBottomNavigationControllerImplFromJson(
            Map<String, dynamic> json) =>
        _$StacDefaultBottomNavigationControllerImpl(
          length: (json['length'] as num).toInt(),
          initialIndex: (json['initialIndex'] as num?)?.toInt(),
          child: json['child'] as Map<String, dynamic>,
        );

Map<String, dynamic> _$$StacDefaultBottomNavigationControllerImplToJson(
        _$StacDefaultBottomNavigationControllerImpl instance) =>
    <String, dynamic>{
      'length': instance.length,
      'initialIndex': instance.initialIndex,
      'child': instance.child,
    };
