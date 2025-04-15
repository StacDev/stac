// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_input_decoration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacInputDecoration _$StacInputDecorationFromJson(Map<String, dynamic> json) =>
    _StacInputDecoration(
      icon: json['icon'] as Map<String, dynamic>?,
      iconColor: json['iconColor'] as String?,
      label: json['label'] as Map<String, dynamic>?,
      labelText: json['labelText'] as String?,
      labelStyle: json['labelStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['labelStyle']),
      floatingLabelStyle: json['floatingLabelStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['floatingLabelStyle']),
      helperText: json['helperText'] as String?,
      helperStyle: json['helperStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['helperStyle']),
      hintText: json['hintText'] as String?,
      hintStyle: json['hintStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['hintStyle']),
      helperMaxLines: (json['helperMaxLines'] as num?)?.toInt(),
      hintTextDirection: $enumDecodeNullable(
          _$TextDirectionEnumMap, json['hintTextDirection']),
      hintMaxLines: (json['hintMaxLines'] as num?)?.toInt(),
      errorText: json['errorText'] as String?,
      errorStyle: json['errorStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['errorStyle']),
      errorMaxLines: (json['errorMaxLines'] as num?)?.toInt(),
      floatingLabelBehavior: $enumDecodeNullable(
          _$FloatingLabelBehaviorEnumMap, json['floatingLabelBehavior']),
      floatingLabelAlignment: $enumDecodeNullable(
          _$StacFloatingLabelAlignmentEnumMap, json['floatingLabelAlignment']),
      isCollapsed: json['isCollapsed'] as bool? ?? false,
      isDense: json['isDense'] as bool? ?? false,
      contentPadding: json['contentPadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['contentPadding']),
      prefixIcon: json['prefixIcon'] as Map<String, dynamic>?,
      prefixIconConstraints: json['prefixIconConstraints'] == null
          ? null
          : StacBoxConstraints.fromJson(
              json['prefixIconConstraints'] as Map<String, dynamic>),
      prefix: json['prefix'] as Map<String, dynamic>?,
      prefixText: json['prefixText'] as String?,
      prefixStyle: json['prefixStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['prefixStyle']),
      prefixIconColor: json['prefixIconColor'] as String?,
      suffix: json['suffix'] as Map<String, dynamic>?,
      suffixIcon: json['suffixIcon'] as Map<String, dynamic>?,
      suffixIconConstraints: json['suffixIconConstraints'] == null
          ? null
          : StacBoxConstraints.fromJson(
              json['suffixIconConstraints'] as Map<String, dynamic>),
      suffixText: json['suffixText'] as String?,
      suffixStyle: json['suffixStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['suffixStyle']),
      suffixIconColor: json['suffixIconColor'] as String?,
      counter: json['counter'] as Map<String, dynamic>?,
      counterText: json['counterText'] as String?,
      counterStyle: json['counterStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['counterStyle']),
      filled: json['filled'] as bool?,
      fillColor: json['fillColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      focusColor: json['focusColor'] as String?,
      errorBorder: json['errorBorder'] == null
          ? null
          : StacInputBorder.fromJson(
              json['errorBorder'] as Map<String, dynamic>),
      focusedBorder: json['focusedBorder'] == null
          ? null
          : StacInputBorder.fromJson(
              json['focusedBorder'] as Map<String, dynamic>),
      focusedErrorBorder: json['focusedErrorBorder'] == null
          ? null
          : StacInputBorder.fromJson(
              json['focusedErrorBorder'] as Map<String, dynamic>),
      disabledBorder: json['disabledBorder'] == null
          ? null
          : StacInputBorder.fromJson(
              json['disabledBorder'] as Map<String, dynamic>),
      enabledBorder: json['enabledBorder'] == null
          ? null
          : StacInputBorder.fromJson(
              json['enabledBorder'] as Map<String, dynamic>),
      border: json['border'] == null
          ? null
          : StacInputBorder.fromJson(json['border'] as Map<String, dynamic>),
      enabled: json['enabled'] as bool? ?? true,
      semanticCounterText: json['semanticCounterText'] as String?,
      alignLabelWithHint: json['alignLabelWithHint'] as bool? ?? false,
      constraints: json['constraints'] == null
          ? null
          : StacBoxConstraints.fromJson(
              json['constraints'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacInputDecorationToJson(
        _StacInputDecoration instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'iconColor': instance.iconColor,
      'label': instance.label,
      'labelText': instance.labelText,
      'labelStyle': instance.labelStyle,
      'floatingLabelStyle': instance.floatingLabelStyle,
      'helperText': instance.helperText,
      'helperStyle': instance.helperStyle,
      'hintText': instance.hintText,
      'hintStyle': instance.hintStyle,
      'helperMaxLines': instance.helperMaxLines,
      'hintTextDirection': _$TextDirectionEnumMap[instance.hintTextDirection],
      'hintMaxLines': instance.hintMaxLines,
      'errorText': instance.errorText,
      'errorStyle': instance.errorStyle,
      'errorMaxLines': instance.errorMaxLines,
      'floatingLabelBehavior':
          _$FloatingLabelBehaviorEnumMap[instance.floatingLabelBehavior],
      'floatingLabelAlignment':
          _$StacFloatingLabelAlignmentEnumMap[instance.floatingLabelAlignment],
      'isCollapsed': instance.isCollapsed,
      'isDense': instance.isDense,
      'contentPadding': instance.contentPadding,
      'prefixIcon': instance.prefixIcon,
      'prefixIconConstraints': instance.prefixIconConstraints,
      'prefix': instance.prefix,
      'prefixText': instance.prefixText,
      'prefixStyle': instance.prefixStyle,
      'prefixIconColor': instance.prefixIconColor,
      'suffix': instance.suffix,
      'suffixIcon': instance.suffixIcon,
      'suffixIconConstraints': instance.suffixIconConstraints,
      'suffixText': instance.suffixText,
      'suffixStyle': instance.suffixStyle,
      'suffixIconColor': instance.suffixIconColor,
      'counter': instance.counter,
      'counterText': instance.counterText,
      'counterStyle': instance.counterStyle,
      'filled': instance.filled,
      'fillColor': instance.fillColor,
      'hoverColor': instance.hoverColor,
      'focusColor': instance.focusColor,
      'errorBorder': instance.errorBorder,
      'focusedBorder': instance.focusedBorder,
      'focusedErrorBorder': instance.focusedErrorBorder,
      'disabledBorder': instance.disabledBorder,
      'enabledBorder': instance.enabledBorder,
      'border': instance.border,
      'enabled': instance.enabled,
      'semanticCounterText': instance.semanticCounterText,
      'alignLabelWithHint': instance.alignLabelWithHint,
      'constraints': instance.constraints,
    };

const _$TextDirectionEnumMap = {
  TextDirection.rtl: 'rtl',
  TextDirection.ltr: 'ltr',
};

const _$FloatingLabelBehaviorEnumMap = {
  FloatingLabelBehavior.never: 'never',
  FloatingLabelBehavior.auto: 'auto',
  FloatingLabelBehavior.always: 'always',
};

const _$StacFloatingLabelAlignmentEnumMap = {
  StacFloatingLabelAlignment.start: 'start',
  StacFloatingLabelAlignment.center: 'center',
};
