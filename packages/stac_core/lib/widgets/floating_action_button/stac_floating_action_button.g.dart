// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_floating_action_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacFloatingActionButton _$StacFloatingActionButtonFromJson(
  Map<String, dynamic> json,
) => StacFloatingActionButton(
  onPressed: json['onPressed'] == null
      ? null
      : StacAction.fromJson(json['onPressed'] as Map<String, dynamic>),
  textStyle: json['textStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['textStyle']),
  buttonType:
      $enumDecodeNullable(
        _$StacFloatingActionButtonTypeEnumMap,
        json['buttonType'],
      ) ??
      StacFloatingActionButtonType.small,
  autofocus: json['autofocus'] as bool?,
  icon: json['icon'] == null
      ? null
      : StacWidget.fromJson(json['icon'] as Map<String, dynamic>),
  backgroundColor: json['backgroundColor'] as String?,
  foregroundColor: json['foregroundColor'] as String?,
  focusColor: json['focusColor'] as String?,
  hoverColor: json['hoverColor'] as String?,
  splashColor: json['splashColor'] as String?,
  extendedTextStyle: json['extendedTextStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['extendedTextStyle']),
  elevation: (json['elevation'] as num?)?.toDouble(),
  focusElevation: (json['focusElevation'] as num?)?.toDouble(),
  hoverElevation: (json['hoverElevation'] as num?)?.toDouble(),
  disabledElevation: (json['disabledElevation'] as num?)?.toDouble(),
  highlightElevation: (json['highlightElevation'] as num?)?.toDouble(),
  extendedIconLabelSpacing: (json['extendedIconLabelSpacing'] as num?)
      ?.toDouble(),
  enableFeedback: json['enableFeedback'] as bool?,
  tooltip: json['tooltip'] as String?,
  heroTag: json['heroTag'],
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacFloatingActionButtonToJson(
  StacFloatingActionButton instance,
) => <String, dynamic>{
  'onPressed': instance.onPressed?.toJson(),
  'textStyle': instance.textStyle?.toJson(),
  'buttonType': _$StacFloatingActionButtonTypeEnumMap[instance.buttonType]!,
  'autofocus': instance.autofocus,
  'icon': instance.icon?.toJson(),
  'backgroundColor': instance.backgroundColor,
  'foregroundColor': instance.foregroundColor,
  'focusColor': instance.focusColor,
  'hoverColor': instance.hoverColor,
  'splashColor': instance.splashColor,
  'extendedTextStyle': instance.extendedTextStyle?.toJson(),
  'elevation': instance.elevation,
  'focusElevation': instance.focusElevation,
  'hoverElevation': instance.hoverElevation,
  'disabledElevation': instance.disabledElevation,
  'highlightElevation': instance.highlightElevation,
  'extendedIconLabelSpacing': instance.extendedIconLabelSpacing,
  'enableFeedback': instance.enableFeedback,
  'tooltip': instance.tooltip,
  'heroTag': instance.heroTag,
  'child': instance.child?.toJson(),
  'type': instance.type,
};

const _$StacFloatingActionButtonTypeEnumMap = {
  StacFloatingActionButtonType.extended: 'extended',
  StacFloatingActionButtonType.large: 'large',
  StacFloatingActionButtonType.medium: 'medium',
  StacFloatingActionButtonType.small: 'small',
};
