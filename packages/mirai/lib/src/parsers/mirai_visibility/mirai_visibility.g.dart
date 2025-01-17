// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_visibility.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiVisibilityImpl _$$MiraiVisibilityImplFromJson(
        Map<String, dynamic> json) =>
    _$MiraiVisibilityImpl(
      child: json['child'] as Map<String, dynamic>,
      replacement: json['replacement'] as Map<String, dynamic>?,
      visible: json['visible'] as bool? ?? true,
      maintainState: json['maintainState'] as bool? ?? false,
      maintainAnimation: json['maintainAnimation'] as bool? ?? false,
      maintainSize: json['maintainSize'] as bool? ?? false,
      maintainSemantics: json['maintainSemantics'] as bool? ?? false,
      maintainInteractivity: json['maintainInteractivity'] as bool? ?? false,
    );

Map<String, dynamic> _$$MiraiVisibilityImplToJson(
        _$MiraiVisibilityImpl instance) =>
    <String, dynamic>{
      'child': instance.child,
      'replacement': instance.replacement,
      'visible': instance.visible,
      'maintainState': instance.maintainState,
      'maintainAnimation': instance.maintainAnimation,
      'maintainSize': instance.maintainSize,
      'maintainSemantics': instance.maintainSemantics,
      'maintainInteractivity': instance.maintainInteractivity,
    };
