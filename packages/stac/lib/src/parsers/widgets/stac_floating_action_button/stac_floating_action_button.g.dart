// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_floating_action_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacFloatingActionButton _$StacFloatingActionButtonFromJson(
        Map<String, dynamic> json) =>
    _StacFloatingActionButton(
      onPressed: json['onPressed'] as Map<String, dynamic>?,
      textStyle: json['textStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['textStyle']),
      buttonType: $enumDecodeNullable(
              _$FloatingActionButtonTypeEnumMap, json['buttonType']) ??
          FloatingActionButtonType.small,
      autofocus: json['autofocus'] as bool? ?? false,
      icon: json['icon'] as Map<String, dynamic>?,
      backgroundColor: json['backgroundColor'] as String?,
      foregroundColor: json['foregroundColor'] as String?,
      focusColor: json['focusColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      splashColor: json['splashColor'] as String?,
      extendedTextStyle: json['extendedTextStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['extendedTextStyle']),
      elevation: json['elevation'] == null
          ? null
          : StacDouble.fromJson(json['elevation']),
      focusElevation: json['focusElevation'] == null
          ? null
          : StacDouble.fromJson(json['focusElevation']),
      hoverElevation: json['hoverElevation'] == null
          ? null
          : StacDouble.fromJson(json['hoverElevation']),
      disabledElevation: json['disabledElevation'] == null
          ? null
          : StacDouble.fromJson(json['disabledElevation']),
      highlightElevation: json['highlightElevation'] == null
          ? null
          : StacDouble.fromJson(json['highlightElevation']),
      extendedIconLabelSpacing: json['extendedIconLabelSpacing'] == null
          ? null
          : StacDouble.fromJson(json['extendedIconLabelSpacing']),
      enableFeedback: json['enableFeedback'] as bool?,
      tooltip: json['tooltip'] as String?,
      heroTag: json['heroTag'],
      child: json['child'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$StacFloatingActionButtonToJson(
        _StacFloatingActionButton instance) =>
    <String, dynamic>{
      'onPressed': instance.onPressed,
      'textStyle': instance.textStyle,
      'buttonType': _$FloatingActionButtonTypeEnumMap[instance.buttonType]!,
      'autofocus': instance.autofocus,
      'icon': instance.icon,
      'backgroundColor': instance.backgroundColor,
      'foregroundColor': instance.foregroundColor,
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'splashColor': instance.splashColor,
      'extendedTextStyle': instance.extendedTextStyle,
      'elevation': instance.elevation,
      'focusElevation': instance.focusElevation,
      'hoverElevation': instance.hoverElevation,
      'disabledElevation': instance.disabledElevation,
      'highlightElevation': instance.highlightElevation,
      'extendedIconLabelSpacing': instance.extendedIconLabelSpacing,
      'enableFeedback': instance.enableFeedback,
      'tooltip': instance.tooltip,
      'heroTag': instance.heroTag,
      'child': instance.child,
    };

const _$FloatingActionButtonTypeEnumMap = {
  FloatingActionButtonType.extended: 'extended',
  FloatingActionButtonType.large: 'large',
  FloatingActionButtonType.medium: 'medium',
  FloatingActionButtonType.small: 'small',
};
