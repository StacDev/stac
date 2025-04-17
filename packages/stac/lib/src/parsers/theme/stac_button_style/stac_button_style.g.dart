// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_button_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacButtonStyle _$StacButtonStyleFromJson(Map<String, dynamic> json) =>
    _StacButtonStyle(
      foregroundColor: json['foregroundColor'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      disabledForegroundColor: json['disabledForegroundColor'] as String?,
      disabledBackgroundColor: json['disabledBackgroundColor'] as String?,
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      iconColor: json['iconColor'] as String?,
      iconSize: (json['iconSize'] as num?)?.toDouble(),
      iconAlignment:
          $enumDecodeNullable(_$IconAlignmentEnumMap, json['iconAlignment']),
      disabledIconColor: json['disabledIconColor'] as String?,
      overlayColor: json['overlayColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      textStyle: json['textStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['textStyle']),
      padding: json['padding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['padding']),
      minimumSize: json['minimumSize'] == null
          ? null
          : StacSize.fromJson(json['minimumSize'] as Map<String, dynamic>),
      fixedSize: json['fixedSize'] == null
          ? null
          : StacSize.fromJson(json['fixedSize'] as Map<String, dynamic>),
      maximumSize: json['maximumSize'] == null
          ? null
          : StacSize.fromJson(json['maximumSize'] as Map<String, dynamic>),
      side: json['side'] == null
          ? null
          : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      shape: json['shape'] == null
          ? null
          : StacRoundedRectangleBorder.fromJson(
              json['shape'] as Map<String, dynamic>),
      enabledMouseCursor: $enumDecodeNullable(
          _$StacMouseCursorEnumMap, json['enabledMouseCursor']),
      disabledMouseCursor: $enumDecodeNullable(
          _$StacMouseCursorEnumMap, json['disabledMouseCursor']),
      visualDensity: json['visualDensity'] == null
          ? null
          : StacVisualDensity.fromJson(
              json['visualDensity'] as Map<String, dynamic>),
      tapTargetSize: $enumDecodeNullable(
          _$MaterialTapTargetSizeEnumMap, json['tapTargetSize']),
      animationDuration: json['animationDuration'] == null
          ? null
          : Duration(microseconds: (json['animationDuration'] as num).toInt()),
      enableFeedback: json['enableFeedback'] as bool?,
      alignment: json['alignment'] == null
          ? null
          : StacAlignmentGeometry.fromJson(
              json['alignment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacButtonStyleToJson(_StacButtonStyle instance) =>
    <String, dynamic>{
      'foregroundColor': instance.foregroundColor,
      'backgroundColor': instance.backgroundColor,
      'disabledForegroundColor': instance.disabledForegroundColor,
      'disabledBackgroundColor': instance.disabledBackgroundColor,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'iconColor': instance.iconColor,
      'iconSize': instance.iconSize,
      'iconAlignment': _$IconAlignmentEnumMap[instance.iconAlignment],
      'disabledIconColor': instance.disabledIconColor,
      'overlayColor': instance.overlayColor,
      'elevation': instance.elevation,
      'textStyle': instance.textStyle,
      'padding': instance.padding,
      'minimumSize': instance.minimumSize,
      'fixedSize': instance.fixedSize,
      'maximumSize': instance.maximumSize,
      'side': instance.side,
      'shape': instance.shape,
      'enabledMouseCursor':
          _$StacMouseCursorEnumMap[instance.enabledMouseCursor],
      'disabledMouseCursor':
          _$StacMouseCursorEnumMap[instance.disabledMouseCursor],
      'visualDensity': instance.visualDensity,
      'tapTargetSize': _$MaterialTapTargetSizeEnumMap[instance.tapTargetSize],
      'animationDuration': instance.animationDuration?.inMicroseconds,
      'enableFeedback': instance.enableFeedback,
      'alignment': instance.alignment,
    };

const _$IconAlignmentEnumMap = {
  IconAlignment.start: 'start',
  IconAlignment.end: 'end',
};

const _$StacMouseCursorEnumMap = {
  StacMouseCursor.none: 'none',
  StacMouseCursor.basic: 'basic',
  StacMouseCursor.click: 'click',
  StacMouseCursor.forbidden: 'forbidden',
  StacMouseCursor.wait: 'wait',
  StacMouseCursor.progress: 'progress',
  StacMouseCursor.contextMenu: 'contextMenu',
  StacMouseCursor.help: 'help',
  StacMouseCursor.text: 'text',
  StacMouseCursor.verticalText: 'verticalText',
  StacMouseCursor.cell: 'cell',
  StacMouseCursor.precise: 'precise',
  StacMouseCursor.move: 'move',
  StacMouseCursor.grab: 'grab',
  StacMouseCursor.grabbing: 'grabbing',
  StacMouseCursor.noDrop: 'noDrop',
  StacMouseCursor.alias: 'alias',
  StacMouseCursor.copy: 'copy',
  StacMouseCursor.disappearing: 'disappearing',
  StacMouseCursor.allScroll: 'allScroll',
  StacMouseCursor.resizeLeftRight: 'resizeLeftRight',
  StacMouseCursor.resizeUpDown: 'resizeUpDown',
  StacMouseCursor.resizeUpLeftDownRight: 'resizeUpLeftDownRight',
  StacMouseCursor.resizeUpRightDownLeft: 'resizeUpRightDownLeft',
  StacMouseCursor.resizeUp: 'resizeUp',
  StacMouseCursor.resizeDown: 'resizeDown',
  StacMouseCursor.resizeLeft: 'resizeLeft',
  StacMouseCursor.resizeRight: 'resizeRight',
  StacMouseCursor.resizeUpLeft: 'resizeUpLeft',
  StacMouseCursor.resizeUpRight: 'resizeUpRight',
  StacMouseCursor.resizeDownLeft: 'resizeDownLeft',
  StacMouseCursor.resizeDownRight: 'resizeDownRight',
  StacMouseCursor.resizeColumn: 'resizeColumn',
  StacMouseCursor.resizeRow: 'resizeRow',
  StacMouseCursor.zoomIn: 'zoomIn',
  StacMouseCursor.zoomOut: 'zoomOut',
};

const _$MaterialTapTargetSizeEnumMap = {
  MaterialTapTargetSize.padded: 'padded',
  MaterialTapTargetSize.shrinkWrap: 'shrinkWrap',
};
