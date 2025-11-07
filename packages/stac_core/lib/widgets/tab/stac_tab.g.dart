// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_tab.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacTab _$StacTabFromJson(Map<String, dynamic> json) => StacTab(
  text: json['text'] as String?,
  icon: json['icon'] == null
      ? null
      : StacWidget.fromJson(json['icon'] as Map<String, dynamic>),
  iconMargin: json['iconMargin'] == null
      ? null
      : StacEdgeInsets.fromJson(json['iconMargin']),
  height: const DoubleConverter().fromJson(json['height']),
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacTabToJson(StacTab instance) => <String, dynamic>{
  'text': instance.text,
  'icon': instance.icon?.toJson(),
  'iconMargin': instance.iconMargin?.toJson(),
  'height': const DoubleConverter().toJson(instance.height),
  'child': instance.child?.toJson(),
  'type': instance.type,
};
