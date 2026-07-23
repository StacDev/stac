// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_dialog_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacDialogAction _$StacDialogActionFromJson(Map<String, dynamic> json) =>
    StacDialogAction(
      widget: json['widget'] as Map<String, dynamic>?,
      request: json['request'] == null
          ? null
          : StacNetworkRequest.fromJson(
              json['request'] as Map<String, dynamic>,
            ),
      assetPath: json['assetPath'] as String?,
      barrierDismissible: json['barrierDismissible'] as bool?,
      barrierColor: json['barrierColor'] as String?,
      barrierLabel: json['barrierLabel'] as String?,
      useSafeArea: json['useSafeArea'] as bool?,
      traversalEdgeBehavior: $enumDecodeNullable(
        _$StacTraversalEdgeBehaviorEnumMap,
        json['traversalEdgeBehavior'],
      ),
    );

Map<String, dynamic> _$StacDialogActionToJson(StacDialogAction instance) =>
    <String, dynamic>{
      'widget': instance.widget,
      'request': instance.request?.toJson(),
      'assetPath': instance.assetPath,
      'barrierDismissible': instance.barrierDismissible,
      'barrierColor': instance.barrierColor,
      'barrierLabel': instance.barrierLabel,
      'useSafeArea': instance.useSafeArea,
      'traversalEdgeBehavior':
          _$StacTraversalEdgeBehaviorEnumMap[instance.traversalEdgeBehavior],
      'actionType': instance.actionType,
    };

const _$StacTraversalEdgeBehaviorEnumMap = {
  StacTraversalEdgeBehavior.closedLoop: 'closedLoop',
  StacTraversalEdgeBehavior.leaveFlutterView: 'leaveFlutterView',
  StacTraversalEdgeBehavior.parentScope: 'parentScope',
  StacTraversalEdgeBehavior.stop: 'stop',
};
