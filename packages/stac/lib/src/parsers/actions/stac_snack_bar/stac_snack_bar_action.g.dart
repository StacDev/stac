// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_snack_bar_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacSnackBarAction _$StacSnackBarActionFromJson(Map<String, dynamic> json) =>
    _StacSnackBarAction(
      textColor: json['textColor'] as String?,
      disabledTextColor: json['disabledTextColor'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      disabledBackgroundColor: json['disabledBackgroundColor'] as String?,
      label: json['label'] as String,
      onPressed: json['onPressed'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$StacSnackBarActionToJson(_StacSnackBarAction instance) =>
    <String, dynamic>{
      'textColor': instance.textColor,
      'disabledTextColor': instance.disabledTextColor,
      'backgroundColor': instance.backgroundColor,
      'disabledBackgroundColor': instance.disabledBackgroundColor,
      'label': instance.label,
      'onPressed': instance.onPressed,
    };
