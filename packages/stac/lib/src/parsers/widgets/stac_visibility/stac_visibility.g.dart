// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_visibility.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacVisibility _$StacVisibilityFromJson(Map<String, dynamic> json) =>
    _StacVisibility(
      child: json['child'] as Map<String, dynamic>,
      visible: json['visible'] as bool?,
      maintainState: json['maintainState'] as bool?,
      maintainAnimation: json['maintainAnimation'] as bool?,
      maintainSize: json['maintainSize'] as bool?,
      maintainSemantics: json['maintainSemantics'] as bool?,
      maintainInteractivity: json['maintainInteractivity'] as bool?,
      replacement: json['replacement'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacVisibilityToJson(_StacVisibility instance) =>
    <String, dynamic>{
      'child': instance.child,
      'visible': instance.visible,
      'maintainState': instance.maintainState,
      'maintainAnimation': instance.maintainAnimation,
      'maintainSize': instance.maintainSize,
      'maintainSemantics': instance.maintainSemantics,
      'maintainInteractivity': instance.maintainInteractivity,
      'replacement': instance.replacement,
    };
