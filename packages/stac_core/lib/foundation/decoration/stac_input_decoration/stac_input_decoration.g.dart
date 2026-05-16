// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_input_decoration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacInputDecoration _$StacInputDecorationFromJson(
  Map<String, dynamic> json,
) => StacInputDecoration(
  icon: json['icon'] == null
      ? null
      : StacWidget.fromJson(json['icon'] as Map<String, dynamic>),
  labelText: json['labelText'] as String?,
  labelStyle: json['labelStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['labelStyle']),
  floatingLabelBehavior: json['floatingLabelBehavior'] as String?,
  hintText: json['hintText'] as String?,
  hintStyle: json['hintStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['hintStyle']),
  helperText: json['helperText'] as String?,
  helperStyle: json['helperStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['helperStyle']),
  errorText: json['errorText'] as String?,
  errorStyle: json['errorStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['errorStyle']),
  prefixIcon: json['prefixIcon'] == null
      ? null
      : StacWidget.fromJson(json['prefixIcon'] as Map<String, dynamic>),
  prefixText: json['prefixText'] as String?,
  prefixStyle: json['prefixStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['prefixStyle']),
  suffixIcon: json['suffixIcon'] == null
      ? null
      : StacWidget.fromJson(json['suffixIcon'] as Map<String, dynamic>),
  suffixText: json['suffixText'] as String?,
  suffixStyle: json['suffixStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['suffixStyle']),
  isDense: json['isDense'] as bool?,
  contentPadding: json['contentPadding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['contentPadding']),
  filled: json['filled'] as bool?,
  fillColor: json['fillColor'] as String?,
  alignLabelWithHint: json['alignLabelWithHint'] as bool?,
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
);

Map<String, dynamic> _$StacInputDecorationToJson(
  StacInputDecoration instance,
) => <String, dynamic>{
  'icon': instance.icon?.toJson(),
  'labelText': instance.labelText,
  'labelStyle': instance.labelStyle?.toJson(),
  'floatingLabelBehavior': instance.floatingLabelBehavior,
  'hintText': instance.hintText,
  'hintStyle': instance.hintStyle?.toJson(),
  'helperText': instance.helperText,
  'helperStyle': instance.helperStyle?.toJson(),
  'errorText': instance.errorText,
  'errorStyle': instance.errorStyle?.toJson(),
  'prefixIcon': instance.prefixIcon?.toJson(),
  'prefixText': instance.prefixText,
  'prefixStyle': instance.prefixStyle?.toJson(),
  'suffixIcon': instance.suffixIcon?.toJson(),
  'suffixText': instance.suffixText,
  'suffixStyle': instance.suffixStyle?.toJson(),
  'isDense': instance.isDense,
  'contentPadding': instance.contentPadding?.toJson(),
  'filled': instance.filled,
  'fillColor': instance.fillColor,
  'alignLabelWithHint': instance.alignLabelWithHint,
  'errorBorder': instance.errorBorder?.toJson(),
  'focusedBorder': instance.focusedBorder?.toJson(),
  'focusedErrorBorder': instance.focusedErrorBorder?.toJson(),
  'disabledBorder': instance.disabledBorder?.toJson(),
  'enabledBorder': instance.enabledBorder?.toJson(),
  'border': instance.border?.toJson(),
};
