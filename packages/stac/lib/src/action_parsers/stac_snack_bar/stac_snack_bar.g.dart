// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_snack_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacSnackBarImpl _$$StacSnackBarImplFromJson(Map<String, dynamic> json) =>
    _$StacSnackBarImpl(
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
          _$HitTestBehaviorEnumMap, json['hitTestBehavior']),
      behavior:
          $enumDecodeNullable(_$SnackBarBehaviorEnumMap, json['behavior']),
      action: json['action'] == null
          ? null
          : StacSnackBarAction.fromJson(json['action'] as Map<String, dynamic>),
      actionOverflowThreshold:
          (json['actionOverflowThreshold'] as num?)?.toDouble(),
      showCloseIcon: json['showCloseIcon'] as bool?,
      closeIconColor: json['closeIconColor'] as String?,
      duration: json['duration'] == null
          ? const StacDuration(milliseconds: 4000)
          : StacDuration.fromJson(json['duration'] as Map<String, dynamic>),
      onVisible: json['onVisible'] as Map<String, dynamic>?,
      dismissDirection: $enumDecodeNullable(
          _$DismissDirectionEnumMap, json['dismissDirection']),
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ??
          Clip.hardEdge,
    );

Map<String, dynamic> _$$StacSnackBarImplToJson(_$StacSnackBarImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'backgroundColor': instance.backgroundColor,
      'elevation': instance.elevation,
      'margin': instance.margin,
      'padding': instance.padding,
      'width': instance.width,
      'shape': instance.shape,
      'hitTestBehavior': _$HitTestBehaviorEnumMap[instance.hitTestBehavior],
      'behavior': _$SnackBarBehaviorEnumMap[instance.behavior],
      'action': instance.action,
      'actionOverflowThreshold': instance.actionOverflowThreshold,
      'showCloseIcon': instance.showCloseIcon,
      'closeIconColor': instance.closeIconColor,
      'duration': instance.duration,
      'onVisible': instance.onVisible,
      'dismissDirection': _$DismissDirectionEnumMap[instance.dismissDirection],
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
    };

const _$HitTestBehaviorEnumMap = {
  HitTestBehavior.deferToChild: 'deferToChild',
  HitTestBehavior.opaque: 'opaque',
  HitTestBehavior.translucent: 'translucent',
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

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
