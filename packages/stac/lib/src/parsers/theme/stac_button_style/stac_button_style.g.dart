// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_button_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacButtonStyle _$StacButtonStyleFromJson(Map<String, dynamic> json) =>
    _StacButtonStyle(
      foregroundColor: json['foregroundColor'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      disabledForegroundColor: json['disabledForegroundColor'] as String?,
      disabledBackgroundColor: json['disabledBackgroundColor'] as String?,
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      iconColor: json['iconColor'] as String?,
      disabledIconColor: json['disabledIconColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      textStyle: json['textStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['textStyle']),
      padding: json['padding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['padding']),
      minimumSize: json['minimumSize'] == null
          ? null
          : StacSize.fromJson(json['minimumSize'] as Map<String, dynamic>),
      fixedSize: json['fixedSize'] == null
          ? null
          : StacSize.fromJson(json['fixedSize'] as Map<String, dynamic>),
      maximumSize: json['maximumSize'] == null
          ? null
          : StacSize.fromJson(json['maximumSize'] as Map<String, dynamic>),
      side: json['side'] == null
          ? null
          : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      shape: json['shape'] == null
          ? null
          : StacRoundedRectangleBorder.fromJson(
              json['shape'] as Map<String, dynamic>),
      enableFeedback: json['enableFeedback'] as bool?,
      iconSize: (json['iconSize'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$StacButtonStyleToJson(_StacButtonStyle instance) =>
    <String, dynamic>{
      'foregroundColor': instance.foregroundColor,
      'backgroundColor': instance.backgroundColor,
      'disabledForegroundColor': instance.disabledForegroundColor,
      'disabledBackgroundColor': instance.disabledBackgroundColor,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'iconColor': instance.iconColor,
      'disabledIconColor': instance.disabledIconColor,
      'elevation': instance.elevation,
      'textStyle': instance.textStyle,
      'padding': instance.padding,
      'minimumSize': instance.minimumSize,
      'fixedSize': instance.fixedSize,
      'maximumSize': instance.maximumSize,
      'side': instance.side,
      'shape': instance.shape,
      'enableFeedback': instance.enableFeedback,
      'iconSize': instance.iconSize,
    };
