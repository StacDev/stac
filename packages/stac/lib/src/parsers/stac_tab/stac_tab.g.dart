// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_tab.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacTabImpl _$$StacTabImplFromJson(Map<String, dynamic> json) =>
    _$StacTabImpl(
      text: json['text'] as String?,
      icon: json['icon'] as Map<String, dynamic>?,
      iconMargin: json['iconMargin'] == null
          ? null
          : StacEdgeInsets.fromJson(json['iconMargin']),
      height: (json['height'] as num?)?.toDouble(),
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$StacTabImplToJson(_$StacTabImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'iconMargin': instance.iconMargin,
      'height': instance.height,
      'child': instance.child,
    };
