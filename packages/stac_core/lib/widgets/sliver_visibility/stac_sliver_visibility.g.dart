// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_sliver_visibility.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSliverVisibility _$StacSliverVisibilityFromJson(
  Map<String, dynamic> json,
) => StacSliverVisibility(
  sliver: StacWidget.fromJson(json['sliver'] as Map<String, dynamic>),
  replacementSliver: json['replacementSliver'] == null
      ? null
      : StacWidget.fromJson(json['replacementSliver'] as Map<String, dynamic>),
  visible: json['visible'] as bool?,
  maintainState: json['maintainState'] as bool?,
  maintainAnimation: json['maintainAnimation'] as bool?,
  maintainSize: json['maintainSize'] as bool?,
  maintainSemantics: json['maintainSemantics'] as bool?,
  maintainInteractivity: json['maintainInteractivity'] as bool?,
);

Map<String, dynamic> _$StacSliverVisibilityToJson(
  StacSliverVisibility instance,
) => <String, dynamic>{
  'sliver': instance.sliver.toJson(),
  'replacementSliver': instance.replacementSliver?.toJson(),
  'visible': instance.visible,
  'maintainState': instance.maintainState,
  'maintainAnimation': instance.maintainAnimation,
  'maintainSize': instance.maintainSize,
  'maintainSemantics': instance.maintainSemantics,
  'maintainInteractivity': instance.maintainInteractivity,
  'type': instance.type,
};
