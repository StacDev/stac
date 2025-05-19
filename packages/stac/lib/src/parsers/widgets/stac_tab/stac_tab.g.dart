// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_tab.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacTab _$StacTabFromJson(Map<String, dynamic> json) => _StacTab(
      text: json['text'] as String?,
      icon: json['icon'] as Map<String, dynamic>?,
      iconMargin: json['iconMargin'] == null
          ? null
          : StacEdgeInsets.fromJson(json['iconMargin']),
      height:
          json['height'] == null ? null : StacDouble.fromJson(json['height']),
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacTabToJson(_StacTab instance) => <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'iconMargin': instance.iconMargin,
      'height': instance.height,
      'child': instance.child,
    };
