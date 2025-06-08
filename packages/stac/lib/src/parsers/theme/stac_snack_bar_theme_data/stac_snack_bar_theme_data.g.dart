// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_snack_bar_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacSnackBarThemeData _$StacSnackBarThemeDataFromJson(
        Map<String, dynamic> json) =>
    _StacSnackBarThemeData(
      behavior:
          $enumDecodeNullable(_$SnackBarBehaviorEnumMap, json['behavior']),
      backgroundColor: json['backgroundColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      shape: json['shape'] == null
          ? null
          : StacShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
      width: (json['width'] as num?)?.toDouble(),
      contentTextStyle: json['contentTextStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['contentTextStyle']),
      actionTextColor: json['actionTextColor'] as String?,
      disabledActionTextColor: json['disabledActionTextColor'] as String?,
      insetPadding: json['insetPadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['insetPadding']),
      dismissDirection: $enumDecodeNullable(
          _$DismissDirectionEnumMap, json['dismissDirection']),
      showCloseIcon: json['showCloseIcon'] as bool?,
      closeIconColor: json['closeIconColor'] as String?,
      actionOverflowThreshold:
          (json['actionOverflowThreshold'] as num?)?.toDouble(),
      actionBackgroundColor: json['actionBackgroundColor'] as String?,
      disabledActionBackgroundColor:
          json['disabledActionBackgroundColor'] as String?,
    );

Map<String, dynamic> _$StacSnackBarThemeDataToJson(
        _StacSnackBarThemeData instance) =>
    <String, dynamic>{
      'behavior': _$SnackBarBehaviorEnumMap[instance.behavior],
      'backgroundColor': instance.backgroundColor,
      'elevation': instance.elevation,
      'shape': instance.shape,
      'width': instance.width,
      'contentTextStyle': instance.contentTextStyle,
      'actionTextColor': instance.actionTextColor,
      'disabledActionTextColor': instance.disabledActionTextColor,
      'insetPadding': instance.insetPadding,
      'dismissDirection': _$DismissDirectionEnumMap[instance.dismissDirection],
      'showCloseIcon': instance.showCloseIcon,
      'closeIconColor': instance.closeIconColor,
      'actionOverflowThreshold': instance.actionOverflowThreshold,
      'actionBackgroundColor': instance.actionBackgroundColor,
      'disabledActionBackgroundColor': instance.disabledActionBackgroundColor,
    };

const _$SnackBarBehaviorEnumMap = {
  SnackBarBehavior.fixed: 'fixed',
  SnackBarBehavior.floating: 'floating',
};

const _$DismissDirectionEnumMap = {
  DismissDirection.vertical: 'vertical',
  DismissDirection.horizontal: 'horizontal',
  DismissDirection.endToStart: 'endToStart',
  DismissDirection.startToEnd: 'startToEnd',
  DismissDirection.up: 'up',
  DismissDirection.down: 'down',
  DismissDirection.none: 'none',
};
