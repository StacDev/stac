// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_tool_tip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacTooltip _$StacTooltipFromJson(Map<String, dynamic> json) => StacTooltip(
  message: json['message'] as String?,
  richMessage: json['richMessage'] == null
      ? null
      : StacTextSpan.fromJson(json['richMessage'] as Map<String, dynamic>),
  constraints: json['constraints'] == null
      ? null
      : StacBoxConstraints.fromJson(
          json['constraints'] as Map<String, dynamic>,
        ),
  padding: json['padding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['padding']),
  margin: json['margin'] == null
      ? null
      : StacEdgeInsets.fromJson(json['margin']),
  verticalOffset: (json['verticalOffset'] as num?)?.toDouble(),
  preferBelow: json['preferBelow'] as bool?,
  excludeFromSemantics: json['excludeFromSemantics'] as bool?,
  decoration: json['decoration'] == null
      ? null
      : StacBoxDecoration.fromJson(json['decoration'] as Map<String, dynamic>),
  textStyle: json['textStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['textStyle']),
  textAlign: $enumDecodeNullable(_$StacTextAlignEnumMap, json['textAlign']),
  waitDuration: json['waitDuration'] == null
      ? null
      : StacDuration.fromJson(json['waitDuration'] as Map<String, dynamic>),
  showDuration: json['showDuration'] == null
      ? null
      : StacDuration.fromJson(json['showDuration'] as Map<String, dynamic>),
  exitDuration: json['exitDuration'] == null
      ? null
      : StacDuration.fromJson(json['exitDuration'] as Map<String, dynamic>),
  enableTapToDismiss: json['enableTapToDismiss'] as bool? ?? true,
  triggerMode: $enumDecodeNullable(
    _$StacTooltipTriggerModeEnumMap,
    json['triggerMode'],
  ),
  enableFeedback: json['enableFeedback'] as bool?,
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacTooltipToJson(StacTooltip instance) =>
    <String, dynamic>{
      'message': instance.message,
      'richMessage': instance.richMessage?.toJson(),
      'constraints': instance.constraints?.toJson(),
      'padding': instance.padding?.toJson(),
      'margin': instance.margin?.toJson(),
      'verticalOffset': instance.verticalOffset,
      'preferBelow': instance.preferBelow,
      'excludeFromSemantics': instance.excludeFromSemantics,
      'decoration': instance.decoration?.toJson(),
      'textStyle': instance.textStyle?.toJson(),
      'textAlign': _$StacTextAlignEnumMap[instance.textAlign],
      'waitDuration': instance.waitDuration?.toJson(),
      'showDuration': instance.showDuration?.toJson(),
      'exitDuration': instance.exitDuration?.toJson(),
      'enableTapToDismiss': instance.enableTapToDismiss,
      'triggerMode': _$StacTooltipTriggerModeEnumMap[instance.triggerMode],
      'enableFeedback': instance.enableFeedback,
      'child': instance.child?.toJson(),
      'type': instance.type,
    };

const _$StacTextAlignEnumMap = {
  StacTextAlign.left: 'left',
  StacTextAlign.right: 'right',
  StacTextAlign.center: 'center',
  StacTextAlign.justify: 'justify',
  StacTextAlign.start: 'start',
  StacTextAlign.end: 'end',
};

const _$StacTooltipTriggerModeEnumMap = {
  StacTooltipTriggerMode.manual: 'manual',
  StacTooltipTriggerMode.longPress: 'longPress',
  StacTooltipTriggerMode.tap: 'tap',
};
