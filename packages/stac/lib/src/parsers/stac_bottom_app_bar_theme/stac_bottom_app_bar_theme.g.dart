// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_bottom_app_bar_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacBottomAppBarThemeImpl _$$StacBottomAppBarThemeImplFromJson(
        Map<String, dynamic> json) =>
    _$StacBottomAppBarThemeImpl(
      color: json['color'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      surfaceTintColor: json['surfaceTintColor'] as String?,
      shadowColor: json['shadowColor'] as String?,
      padding: json['padding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['padding']),
    );

Map<String, dynamic> _$$StacBottomAppBarThemeImplToJson(
        _$StacBottomAppBarThemeImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'elevation': instance.elevation,
      'height': instance.height,
      'surfaceTintColor': instance.surfaceTintColor,
      'shadowColor': instance.shadowColor,
      'padding': instance.padding,
    };
