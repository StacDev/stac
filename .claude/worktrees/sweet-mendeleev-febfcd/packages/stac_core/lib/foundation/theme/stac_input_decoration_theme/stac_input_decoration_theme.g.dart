// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_input_decoration_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacInputDecorationTheme _$StacInputDecorationThemeFromJson(
  Map<String, dynamic> json,
) => StacInputDecorationTheme(
  labelStyle: json['labelStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['labelStyle']),
  floatingLabelStyle: json['floatingLabelStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['floatingLabelStyle']),
  helperStyle: json['helperStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['helperStyle']),
  helperMaxLines: (json['helperMaxLines'] as num?)?.toInt(),
  hintStyle: json['hintStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['hintStyle']),
  errorStyle: json['errorStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['errorStyle']),
  errorMaxLines: (json['errorMaxLines'] as num?)?.toInt(),
  floatingLabelBehavior: json['floatingLabelBehavior'] as String?,
  floatingLabelAlignment: json['floatingLabelAlignment'] as String?,
  isDense: json['isDense'] as bool?,
  contentPadding: json['contentPadding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['contentPadding']),
  isCollapsed: json['isCollapsed'] as bool?,
  iconColor: json['iconColor'] as String?,
  prefixStyle: json['prefixStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['prefixStyle']),
  prefixIconColor: json['prefixIconColor'] as String?,
  suffixStyle: json['suffixStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['suffixStyle']),
  suffixIconColor: json['suffixIconColor'] as String?,
  counterStyle: json['counterStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['counterStyle']),
  filled: json['filled'] as bool?,
  fillColor: json['fillColor'] as String?,
  activeIndicatorBorder: json['activeIndicatorBorder'] == null
      ? null
      : StacBorderSide.fromJson(
          json['activeIndicatorBorder'] as Map<String, dynamic>,
        ),
  outlineBorder: json['outlineBorder'] == null
      ? null
      : StacBorderSide.fromJson(json['outlineBorder'] as Map<String, dynamic>),
  focusColor: json['focusColor'] as String?,
  hoverColor: json['hoverColor'] as String?,
  errorBorder: json['errorBorder'] == null
      ? null
      : StacInputBorder.fromJson(json['errorBorder'] as Map<String, dynamic>),
  focusedBorder: json['focusedBorder'] == null
      ? null
      : StacInputBorder.fromJson(json['focusedBorder'] as Map<String, dynamic>),
  focusedErrorBorder: json['focusedErrorBorder'] == null
      ? null
      : StacInputBorder.fromJson(
          json['focusedErrorBorder'] as Map<String, dynamic>,
        ),
  disabledBorder: json['disabledBorder'] == null
      ? null
      : StacInputBorder.fromJson(
          json['disabledBorder'] as Map<String, dynamic>,
        ),
  enabledBorder: json['enabledBorder'] == null
      ? null
      : StacInputBorder.fromJson(json['enabledBorder'] as Map<String, dynamic>),
  border: json['border'] == null
      ? null
      : StacInputBorder.fromJson(json['border'] as Map<String, dynamic>),
  alignLabelWithHint: json['alignLabelWithHint'] as bool?,
  constraints: json['constraints'] == null
      ? null
      : StacBoxConstraints.fromJson(
          json['constraints'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$StacInputDecorationThemeToJson(
  StacInputDecorationTheme instance,
) => <String, dynamic>{
  'labelStyle': instance.labelStyle?.toJson(),
  'floatingLabelStyle': instance.floatingLabelStyle?.toJson(),
  'helperStyle': instance.helperStyle?.toJson(),
  'helperMaxLines': instance.helperMaxLines,
  'hintStyle': instance.hintStyle?.toJson(),
  'errorStyle': instance.errorStyle?.toJson(),
  'errorMaxLines': instance.errorMaxLines,
  'floatingLabelBehavior': instance.floatingLabelBehavior,
  'floatingLabelAlignment': instance.floatingLabelAlignment,
  'isDense': instance.isDense,
  'contentPadding': instance.contentPadding?.toJson(),
  'isCollapsed': instance.isCollapsed,
  'iconColor': instance.iconColor,
  'prefixStyle': instance.prefixStyle?.toJson(),
  'prefixIconColor': instance.prefixIconColor,
  'suffixStyle': instance.suffixStyle?.toJson(),
  'suffixIconColor': instance.suffixIconColor,
  'counterStyle': instance.counterStyle?.toJson(),
  'filled': instance.filled,
  'fillColor': instance.fillColor,
  'activeIndicatorBorder': instance.activeIndicatorBorder?.toJson(),
  'outlineBorder': instance.outlineBorder?.toJson(),
  'focusColor': instance.focusColor,
  'hoverColor': instance.hoverColor,
  'errorBorder': instance.errorBorder?.toJson(),
  'focusedBorder': instance.focusedBorder?.toJson(),
  'focusedErrorBorder': instance.focusedErrorBorder?.toJson(),
  'disabledBorder': instance.disabledBorder?.toJson(),
  'enabledBorder': instance.enabledBorder?.toJson(),
  'border': instance.border?.toJson(),
  'alignLabelWithHint': instance.alignLabelWithHint,
  'constraints': instance.constraints?.toJson(),
};
