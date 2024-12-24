// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_default_bottom_navigation_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiDefaultBottomNavigationControllerImpl
    _$$MiraiDefaultBottomNavigationControllerImplFromJson(
            Map<String, dynamic> json) =>
        _$MiraiDefaultBottomNavigationControllerImpl(
          length: (json['length'] as num).toInt(),
          initialIndex: (json['initialIndex'] as num?)?.toInt(),
          child: json['child'] as Map<String, dynamic>,
        );

Map<String, dynamic> _$$MiraiDefaultBottomNavigationControllerImplToJson(
        _$MiraiDefaultBottomNavigationControllerImpl instance) =>
    <String, dynamic>{
      'length': instance.length,
      'initialIndex': instance.initialIndex,
      'child': instance.child,
    };
