// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_floating_action_button_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacFloatingActionButtonThemeData _$StacFloatingActionButtonThemeDataFromJson(
  Map<String, dynamic> json,
) => StacFloatingActionButtonThemeData(
  foregroundColor: json['foregroundColor'] as String?,
  backgroundColor: json['backgroundColor'] as String?,
  focusColor: json['focusColor'] as String?,
  hoverColor: json['hoverColor'] as String?,
  splashColor: json['splashColor'] as String?,
  elevation: (json['elevation'] as num?)?.toDouble(),
  focusElevation: (json['focusElevation'] as num?)?.toDouble(),
  hoverElevation: (json['hoverElevation'] as num?)?.toDouble(),
  disabledElevation: (json['disabledElevation'] as num?)?.toDouble(),
  highlightElevation: (json['highlightElevation'] as num?)?.toDouble(),
  shape: json['shape'] == null
      ? null
      : StacShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
  enableFeedback: json['enableFeedback'] as bool?,
  iconSize: (json['iconSize'] as num?)?.toDouble(),
  sizeConstraints: json['sizeConstraints'] == null
      ? null
      : StacBoxConstraints.fromJson(
          json['sizeConstraints'] as Map<String, dynamic>,
        ),
  extendedIconLabelSpacing: (json['extendedIconLabelSpacing'] as num?)
      ?.toDouble(),
  extendedPadding: json['extendedPadding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['extendedPadding']),
  extendedTextStyle: json['extendedTextStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['extendedTextStyle']),
);

Map<String, dynamic> _$StacFloatingActionButtonThemeDataToJson(
  StacFloatingActionButtonThemeData instance,
) => <String, dynamic>{
  'foregroundColor': instance.foregroundColor,
  'backgroundColor': instance.backgroundColor,
  'focusColor': instance.focusColor,
  'hoverColor': instance.hoverColor,
  'splashColor': instance.splashColor,
  'elevation': instance.elevation,
  'focusElevation': instance.focusElevation,
  'hoverElevation': instance.hoverElevation,
  'disabledElevation': instance.disabledElevation,
  'highlightElevation': instance.highlightElevation,
  'shape': instance.shape?.toJson(),
  'enableFeedback': instance.enableFeedback,
  'iconSize': instance.iconSize,
  'sizeConstraints': instance.sizeConstraints?.toJson(),
  'extendedIconLabelSpacing': instance.extendedIconLabelSpacing,
  'extendedPadding': instance.extendedPadding?.toJson(),
  'extendedTextStyle': instance.extendedTextStyle?.toJson(),
};
