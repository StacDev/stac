// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_safe_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacSafeAreaImpl _$$StacSafeAreaImplFromJson(Map<String, dynamic> json) =>
    _$StacSafeAreaImpl(
      child: json['child'] as Map<String, dynamic>?,
      left: json['left'] as bool? ?? true,
      top: json['top'] as bool? ?? true,
      right: json['right'] as bool? ?? true,
      bottom: json['bottom'] as bool? ?? true,
      minimum: json['minimum'] == null
          ? const StacEdgeInsets()
          : StacEdgeInsets.fromJson(json['minimum']),
      maintainBottomViewPadding:
          json['maintainBottomViewPadding'] as bool? ?? false,
    );

Map<String, dynamic> _$$StacSafeAreaImplToJson(_$StacSafeAreaImpl instance) =>
    <String, dynamic>{
      'child': instance.child,
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
      'minimum': instance.minimum,
      'maintainBottomViewPadding': instance.maintainBottomViewPadding,
    };
