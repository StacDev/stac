// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_input_decoration_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiInputDecorationThemeImpl _$$MiraiInputDecorationThemeImplFromJson(
        Map<String, dynamic> json) =>
    _$MiraiInputDecorationThemeImpl(
      labelStyle: json['labelStyle'] == null
          ? null
          : MiraiTextStyle.fromJson(json['labelStyle']),
      floatingLabelStyle: json['floatingLabelStyle'] == null
          ? null
          : MiraiTextStyle.fromJson(json['floatingLabelStyle']),
      helperStyle: json['helperStyle'] == null
          ? null
          : MiraiTextStyle.fromJson(json['helperStyle']),
      helperMaxLines: (json['helperMaxLines'] as num?)?.toInt(),
      hintStyle: json['hintStyle'] == null
          ? null
          : MiraiTextStyle.fromJson(json['hintStyle']),
      errorStyle: json['errorStyle'] == null
          ? null
          : MiraiTextStyle.fromJson(json['errorStyle']),
      errorMaxLines: (json['errorMaxLines'] as num?)?.toInt(),
      floatingLabelBehavior: $enumDecodeNullable(
          _$FloatingLabelBehaviorEnumMap, json['floatingLabelBehavior']),
      floatingLabelAlignment: $enumDecodeNullable(
          _$MiraiFloatingLabelAlignmentEnumMap, json['floatingLabelAlignment']),
      isDense: json['isDense'] as bool? ?? false,
      contentPadding: json['contentPadding'] == null
          ? null
          : MiraiEdgeInsets.fromJson(json['contentPadding']),
      isCollapsed: json['isCollapsed'] as bool? ?? false,
      iconColor: json['iconColor'] as String?,
      prefixStyle: json['prefixStyle'] == null
          ? null
          : MiraiTextStyle.fromJson(json['prefixStyle']),
      prefixIconColor: json['prefixIconColor'] as String?,
      suffixStyle: json['suffixStyle'] == null
          ? null
          : MiraiTextStyle.fromJson(json['suffixStyle']),
      suffixIconColor: json['suffixIconColor'] as String?,
      counterStyle: json['counterStyle'] == null
          ? null
          : MiraiTextStyle.fromJson(json['counterStyle']),
      filled: json['filled'] as bool? ?? false,
      fillColor: json['fillColor'] as String?,
      activeIndicatorBorder: json['activeIndicatorBorder'] == null
          ? null
          : MiraiBorderSide.fromJson(
              json['activeIndicatorBorder'] as Map<String, dynamic>),
      outlineBorder: json['outlineBorder'] == null
          ? null
          : MiraiBorderSide.fromJson(
              json['outlineBorder'] as Map<String, dynamic>),
      focusColor: json['focusColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      errorBorder: json['errorBorder'] == null
          ? null
          : MiraiInputBorder.fromJson(
              json['errorBorder'] as Map<String, dynamic>),
      focusedBorder: json['focusedBorder'] == null
          ? null
          : MiraiInputBorder.fromJson(
              json['focusedBorder'] as Map<String, dynamic>),
      focusedErrorBorder: json['focusedErrorBorder'] == null
          ? null
          : MiraiInputBorder.fromJson(
              json['focusedErrorBorder'] as Map<String, dynamic>),
      disabledBorder: json['disabledBorder'] == null
          ? null
          : MiraiInputBorder.fromJson(
              json['disabledBorder'] as Map<String, dynamic>),
      enabledBorder: json['enabledBorder'] == null
          ? null
          : MiraiInputBorder.fromJson(
              json['enabledBorder'] as Map<String, dynamic>),
      border: json['border'] == null
          ? null
          : MiraiInputBorder.fromJson(json['border'] as Map<String, dynamic>),
      alignLabelWithHint: json['alignLabelWithHint'] as bool? ?? false,
      constraints: json['constraints'] == null
          ? null
          : MiraiBoxConstraints.fromJson(
              json['constraints'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MiraiInputDecorationThemeImplToJson(
        _$MiraiInputDecorationThemeImpl instance) =>
    <String, dynamic>{
      'labelStyle': instance.labelStyle,
      'floatingLabelStyle': instance.floatingLabelStyle,
      'helperStyle': instance.helperStyle,
      'helperMaxLines': instance.helperMaxLines,
      'hintStyle': instance.hintStyle,
      'errorStyle': instance.errorStyle,
      'errorMaxLines': instance.errorMaxLines,
      'floatingLabelBehavior':
          _$FloatingLabelBehaviorEnumMap[instance.floatingLabelBehavior],
      'floatingLabelAlignment':
          _$MiraiFloatingLabelAlignmentEnumMap[instance.floatingLabelAlignment],
      'isDense': instance.isDense,
      'contentPadding': instance.contentPadding,
      'isCollapsed': instance.isCollapsed,
      'iconColor': instance.iconColor,
      'prefixStyle': instance.prefixStyle,
      'prefixIconColor': instance.prefixIconColor,
      'suffixStyle': instance.suffixStyle,
      'suffixIconColor': instance.suffixIconColor,
      'counterStyle': instance.counterStyle,
      'filled': instance.filled,
      'fillColor': instance.fillColor,
      'activeIndicatorBorder': instance.activeIndicatorBorder,
      'outlineBorder': instance.outlineBorder,
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'errorBorder': instance.errorBorder,
      'focusedBorder': instance.focusedBorder,
      'focusedErrorBorder': instance.focusedErrorBorder,
      'disabledBorder': instance.disabledBorder,
      'enabledBorder': instance.enabledBorder,
      'border': instance.border,
      'alignLabelWithHint': instance.alignLabelWithHint,
      'constraints': instance.constraints,
    };

const _$FloatingLabelBehaviorEnumMap = {
  FloatingLabelBehavior.never: 'never',
  FloatingLabelBehavior.auto: 'auto',
  FloatingLabelBehavior.always: 'always',
};

const _$MiraiFloatingLabelAlignmentEnumMap = {
  MiraiFloatingLabelAlignment.start: 'start',
  MiraiFloatingLabelAlignment.center: 'center',
};
