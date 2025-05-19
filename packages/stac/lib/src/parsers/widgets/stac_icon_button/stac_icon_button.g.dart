// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_icon_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacIconButton _$StacIconButtonFromJson(Map<String, dynamic> json) =>
    _StacIconButton(
      iconSize: json['iconSize'] == null
          ? null
          : StacDouble.fromJson(json['iconSize']),
      padding: json['padding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['padding']),
      alignment: $enumDecodeNullable(_$StacAlignmentEnumMap, json['alignment']),
      splashRadius: json['splashRadius'] == null
          ? null
          : StacDouble.fromJson(json['splashRadius']),
      color: json['color'] as String?,
      focusColor: json['focusColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      highlightColor: json['highlightColor'] as String?,
      splashColor: json['splashColor'] as String?,
      disabledColor: json['disabledColor'] as String?,
      onPressed: json['onPressed'] as Map<String, dynamic>?,
      autofocus: json['autofocus'] as bool? ?? false,
      tooltip: json['tooltip'] as String?,
      enableFeedback: json['enableFeedback'] as bool?,
      constraints: json['constraints'] == null
          ? null
          : StacBoxConstraints.fromJson(
              json['constraints'] as Map<String, dynamic>),
      style: json['style'] == null
          ? null
          : StacButtonStyle.fromJson(json['style'] as Map<String, dynamic>),
      isSelected: json['isSelected'] as bool?,
      selectedIcon: json['selectedIcon'] as Map<String, dynamic>?,
      icon: json['icon'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacIconButtonToJson(_StacIconButton instance) =>
    <String, dynamic>{
      'iconSize': instance.iconSize,
      'padding': instance.padding,
      'alignment': _$StacAlignmentEnumMap[instance.alignment],
      'splashRadius': instance.splashRadius,
      'color': instance.color,
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'highlightColor': instance.highlightColor,
      'splashColor': instance.splashColor,
      'disabledColor': instance.disabledColor,
      'onPressed': instance.onPressed,
      'autofocus': instance.autofocus,
      'tooltip': instance.tooltip,
      'enableFeedback': instance.enableFeedback,
      'constraints': instance.constraints,
      'style': instance.style,
      'isSelected': instance.isSelected,
      'selectedIcon': instance.selectedIcon,
      'icon': instance.icon,
    };

const _$StacAlignmentEnumMap = {
  StacAlignment.topLeft: 'topLeft',
  StacAlignment.topCenter: 'topCenter',
  StacAlignment.topRight: 'topRight',
  StacAlignment.centerLeft: 'centerLeft',
  StacAlignment.center: 'center',
  StacAlignment.centerRight: 'centerRight',
  StacAlignment.bottomLeft: 'bottomLeft',
  StacAlignment.bottomCenter: 'bottomCenter',
  StacAlignment.bottomRight: 'bottomRight',
};
