// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_dialog_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacDialogActionImpl _$$StacDialogActionImplFromJson(
        Map<String, dynamic> json) =>
    _$StacDialogActionImpl(
      widget: json['widget'] as Map<String, dynamic>?,
      request: json['request'] == null
          ? null
          : StacNetworkRequest.fromJson(
              json['request'] as Map<String, dynamic>),
      assetPath: json['assetPath'] as String?,
      barrierDismissible: json['barrierDismissible'] as bool? ?? true,
      barrierColor: json['barrierColor'] as String?,
      barrierLabel: json['barrierLabel'] as String?,
      useSafeArea: json['useSafeArea'] as bool? ?? true,
      traversalEdgeBehavior: $enumDecodeNullable(
          _$TraversalEdgeBehaviorEnumMap, json['traversalEdgeBehavior']),
    );

Map<String, dynamic> _$$StacDialogActionImplToJson(
        _$StacDialogActionImpl instance) =>
    <String, dynamic>{
      'widget': instance.widget,
      'request': instance.request,
      'assetPath': instance.assetPath,
      'barrierDismissible': instance.barrierDismissible,
      'barrierColor': instance.barrierColor,
      'barrierLabel': instance.barrierLabel,
      'useSafeArea': instance.useSafeArea,
      'traversalEdgeBehavior':
          _$TraversalEdgeBehaviorEnumMap[instance.traversalEdgeBehavior],
    };

const _$TraversalEdgeBehaviorEnumMap = {
  TraversalEdgeBehavior.closedLoop: 'closedLoop',
  TraversalEdgeBehavior.leaveFlutterView: 'leaveFlutterView',
  TraversalEdgeBehavior.parentScope: 'parentScope',
};
