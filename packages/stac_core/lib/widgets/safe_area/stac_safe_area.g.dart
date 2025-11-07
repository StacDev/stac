// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_safe_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSafeArea _$StacSafeAreaFromJson(Map<String, dynamic> json) => StacSafeArea(
  left: json['left'] as bool?,
  top: json['top'] as bool?,
  right: json['right'] as bool?,
  bottom: json['bottom'] as bool?,
  minimum: json['minimum'] == null
      ? null
      : StacEdgeInsets.fromJson(json['minimum']),
  maintainBottomViewPadding: json['maintainBottomViewPadding'] as bool?,
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacSafeAreaToJson(StacSafeArea instance) =>
    <String, dynamic>{
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
      'minimum': instance.minimum?.toJson(),
      'maintainBottomViewPadding': instance.maintainBottomViewPadding,
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
