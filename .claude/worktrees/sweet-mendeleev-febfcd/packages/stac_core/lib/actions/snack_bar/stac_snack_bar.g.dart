// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_snack_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSnackBar _$StacSnackBarFromJson(Map<String, dynamic> json) => StacSnackBar(
  content: json['content'] as Map<String, dynamic>,
  backgroundColor: json['backgroundColor'] as String?,
  elevation: (json['elevation'] as num?)?.toDouble(),
  margin: json['margin'] == null
      ? null
      : StacEdgeInsets.fromJson(json['margin']),
  padding: json['padding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['padding']),
  width: (json['width'] as num?)?.toDouble(),
  shape: json['shape'] == null
      ? null
      : StacShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
  hitTestBehavior: $enumDecodeNullable(
    _$StacHitTestBehaviorEnumMap,
    json['hitTestBehavior'],
  ),
  behavior: $enumDecodeNullable(
    _$StacSnackBarBehaviorEnumMap,
    json['behavior'],
  ),
  action: json['action'] == null
      ? null
      : StacSnackBarAction.fromJson(json['action'] as Map<String, dynamic>),
  actionOverflowThreshold: (json['actionOverflowThreshold'] as num?)
      ?.toDouble(),
  showCloseIcon: json['showCloseIcon'] as bool?,
  closeIconColor: json['closeIconColor'] as String?,
  duration: json['duration'] == null
      ? null
      : StacDuration.fromJson(json['duration'] as Map<String, dynamic>),
  onVisible: json['onVisible'] as Map<String, dynamic>?,
  dismissDirection: $enumDecodeNullable(
    _$StacDismissDirectionEnumMap,
    json['dismissDirection'],
  ),
  clipBehavior: $enumDecodeNullable(_$StacClipEnumMap, json['clipBehavior']),
);

Map<String, dynamic> _$StacSnackBarToJson(
  StacSnackBar instance,
) => <String, dynamic>{
  'content': instance.content,
  'backgroundColor': instance.backgroundColor,
  'elevation': instance.elevation,
  'margin': instance.margin?.toJson(),
  'padding': instance.padding?.toJson(),
  'width': instance.width,
  'shape': instance.shape?.toJson(),
  'hitTestBehavior': _$StacHitTestBehaviorEnumMap[instance.hitTestBehavior],
  'behavior': _$StacSnackBarBehaviorEnumMap[instance.behavior],
  'action': instance.action?.toJson(),
  'actionOverflowThreshold': instance.actionOverflowThreshold,
  'showCloseIcon': instance.showCloseIcon,
  'closeIconColor': instance.closeIconColor,
  'duration': instance.duration?.toJson(),
  'onVisible': instance.onVisible,
  'dismissDirection': _$StacDismissDirectionEnumMap[instance.dismissDirection],
  'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
  'actionType': instance.actionType,
};

const _$StacHitTestBehaviorEnumMap = {
  StacHitTestBehavior.deferToChild: 'deferToChild',
  StacHitTestBehavior.opaque: 'opaque',
  StacHitTestBehavior.translucent: 'translucent',
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

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
