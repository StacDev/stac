// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_badge_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacBadgeThemeData _$StacBadgeThemeDataFromJson(Map<String, dynamic> json) =>
    _StacBadgeThemeData(
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
              json['alignment'] as Map<String, dynamic>),
      offset: json['offset'] == null
          ? null
          : StacOffset.fromJson(json['offset'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacBadgeThemeDataToJson(_StacBadgeThemeData instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'textColor': instance.textColor,
      'smallSize': instance.smallSize,
      'largeSize': instance.largeSize,
      'textStyle': instance.textStyle,
      'padding': instance.padding,
      'alignment': instance.alignment,
      'offset': instance.offset,
    };
