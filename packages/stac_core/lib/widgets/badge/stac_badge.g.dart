// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_badge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacBadge _$StacBadgeFromJson(Map<String, dynamic> json) => StacBadge(
  backgroundColor: json['backgroundColor'] as String?,
  textColor: json['textColor'] as String?,
  smallSize: (json['smallSize'] as num?)?.toDouble(),
  largeSize: (json['largeSize'] as num?)?.toDouble(),
  textStyle: json['textStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['textStyle']),
  padding: json['padding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['padding']),
  alignment: json['alignment'] == null
      ? null
      : StacAlignmentGeometry.fromJson(
          json['alignment'] as Map<String, dynamic>,
        ),
  offset: json['offset'] == null
      ? null
      : StacOffset.fromJson(json['offset'] as Map<String, dynamic>),
  label: json['label'] == null
      ? null
      : StacWidget.fromJson(json['label'] as Map<String, dynamic>),
  count: (json['count'] as num?)?.toInt(),
  maxCount: (json['maxCount'] as num?)?.toInt() ?? 999,
  isLabelVisible: json['isLabelVisible'] as bool? ?? true,
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacBadgeToJson(StacBadge instance) => <String, dynamic>{
  'backgroundColor': instance.backgroundColor,
  'textColor': instance.textColor,
  'smallSize': instance.smallSize,
  'largeSize': instance.largeSize,
  'textStyle': instance.textStyle?.toJson(),
  'padding': instance.padding?.toJson(),
  'alignment': instance.alignment?.toJson(),
  'offset': instance.offset?.toJson(),
  'label': instance.label?.toJson(),
  'count': instance.count,
  'maxCount': instance.maxCount,
  'isLabelVisible': instance.isLabelVisible,
  'child': instance.child?.toJson(),
  'type': instance.type,
};
