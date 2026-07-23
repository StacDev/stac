// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_modal_bottom_sheet_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacModalBottomSheetAction _$StacModalBottomSheetActionFromJson(
  Map<String, dynamic> json,
) => StacModalBottomSheetAction(
  widget: json['widget'] == null
      ? null
      : StacWidget.fromJson(json['widget'] as Map<String, dynamic>),
  request: json['request'] == null
      ? null
      : StacNetworkRequest.fromJson(json['request'] as Map<String, dynamic>),
  assetPath: json['assetPath'] as String?,
  backgroundColor: json['backgroundColor'] as String?,
  barrierLabel: json['barrierLabel'] as String?,
  elevation: (json['elevation'] as num?)?.toDouble(),
  shape: json['shape'] == null
      ? null
      : StacBorder.fromJson(json['shape'] as Map<String, dynamic>),
  constraints: json['constraints'] == null
      ? null
      : StacBoxConstraints.fromJson(
          json['constraints'] as Map<String, dynamic>,
        ),
  barrierColor: json['barrierColor'] as String?,
  isScrollControlled: json['isScrollControlled'] as bool?,
  useRootNavigator: json['useRootNavigator'] as bool?,
  isDismissible: json['isDismissible'] as bool?,
  enableDrag: json['enableDrag'] as bool?,
  showDragHandle: json['showDragHandle'] as bool?,
  useSafeArea: json['useSafeArea'] as bool?,
);

Map<String, dynamic> _$StacModalBottomSheetActionToJson(
  StacModalBottomSheetAction instance,
) => <String, dynamic>{
  'widget': instance.widget?.toJson(),
  'request': instance.request?.toJson(),
  'assetPath': instance.assetPath,
  'backgroundColor': instance.backgroundColor,
  'barrierLabel': instance.barrierLabel,
  'elevation': instance.elevation,
  'shape': instance.shape?.toJson(),
  'constraints': instance.constraints?.toJson(),
  'barrierColor': instance.barrierColor,
  'isScrollControlled': instance.isScrollControlled,
  'useRootNavigator': instance.useRootNavigator,
  'isDismissible': instance.isDismissible,
  'enableDrag': instance.enableDrag,
  'showDragHandle': instance.showDragHandle,
  'useSafeArea': instance.useSafeArea,
  'actionType': instance.actionType,
};
