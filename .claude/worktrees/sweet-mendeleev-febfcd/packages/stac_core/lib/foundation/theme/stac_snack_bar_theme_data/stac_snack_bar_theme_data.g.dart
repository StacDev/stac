// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_snack_bar_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSnackBarThemeData _$StacSnackBarThemeDataFromJson(
  Map<String, dynamic> json,
) => StacSnackBarThemeData(
  behavior: $enumDecodeNullable(
    _$StacSnackBarBehaviorEnumMap,
    json['behavior'],
  ),
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
    _$StacDismissDirectionEnumMap,
    json['dismissDirection'],
  ),
  showCloseIcon: json['showCloseIcon'] as bool?,
  closeIconColor: json['closeIconColor'] as String?,
  actionOverflowThreshold: (json['actionOverflowThreshold'] as num?)
      ?.toDouble(),
  actionBackgroundColor: json['actionBackgroundColor'] as String?,
  disabledActionBackgroundColor:
      json['disabledActionBackgroundColor'] as String?,
);

Map<String, dynamic> _$StacSnackBarThemeDataToJson(
  StacSnackBarThemeData instance,
) => <String, dynamic>{
  'behavior': _$StacSnackBarBehaviorEnumMap[instance.behavior],
  'backgroundColor': instance.backgroundColor,
  'elevation': instance.elevation,
  'shape': instance.shape?.toJson(),
  'width': instance.width,
  'contentTextStyle': instance.contentTextStyle?.toJson(),
  'actionTextColor': instance.actionTextColor,
  'disabledActionTextColor': instance.disabledActionTextColor,
  'insetPadding': instance.insetPadding?.toJson(),
  'dismissDirection': _$StacDismissDirectionEnumMap[instance.dismissDirection],
  'showCloseIcon': instance.showCloseIcon,
  'closeIconColor': instance.closeIconColor,
  'actionOverflowThreshold': instance.actionOverflowThreshold,
  'actionBackgroundColor': instance.actionBackgroundColor,
  'disabledActionBackgroundColor': instance.disabledActionBackgroundColor,
};

const _$StacSnackBarBehaviorEnumMap = {
  StacSnackBarBehavior.fixed: 'fixed',
  StacSnackBarBehavior.floating: 'floating',
};

const _$StacDismissDirectionEnumMap = {
  StacDismissDirection.horizontal: 'horizontal',
  StacDismissDirection.vertical: 'vertical',
  StacDismissDirection.down: 'down',
  StacDismissDirection.up: 'up',
  StacDismissDirection.endToStart: 'endToStart',
  StacDismissDirection.startToEnd: 'startToEnd',
};
