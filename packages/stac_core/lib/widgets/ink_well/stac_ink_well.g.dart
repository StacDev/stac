// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_ink_well.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacInkWell _$StacInkWellFromJson(Map<String, dynamic> json) => StacInkWell(
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
  onTap: json['onTap'] == null
      ? null
      : StacAction.fromJson(json['onTap'] as Map<String, dynamic>),
  onDoubleTap: json['onDoubleTap'] == null
      ? null
      : StacAction.fromJson(json['onDoubleTap'] as Map<String, dynamic>),
  onLongPress: json['onLongPress'] == null
      ? null
      : StacAction.fromJson(json['onLongPress'] as Map<String, dynamic>),
  onTapDown: json['onTapDown'] == null
      ? null
      : StacAction.fromJson(json['onTapDown'] as Map<String, dynamic>),
  onTapUp: json['onTapUp'] == null
      ? null
      : StacAction.fromJson(json['onTapUp'] as Map<String, dynamic>),
  onTapCancel: json['onTapCancel'] == null
      ? null
      : StacAction.fromJson(json['onTapCancel'] as Map<String, dynamic>),
  onSecondaryTap: json['onSecondaryTap'] == null
      ? null
      : StacAction.fromJson(json['onSecondaryTap'] as Map<String, dynamic>),
  onSecondaryTapUp: json['onSecondaryTapUp'] == null
      ? null
      : StacAction.fromJson(json['onSecondaryTapUp'] as Map<String, dynamic>),
  onSecondaryTapDown: json['onSecondaryTapDown'] == null
      ? null
      : StacAction.fromJson(json['onSecondaryTapDown'] as Map<String, dynamic>),
  onSecondaryTapCancel: json['onSecondaryTapCancel'] == null
      ? null
      : StacAction.fromJson(
          json['onSecondaryTapCancel'] as Map<String, dynamic>,
        ),
  onHighlightChanged: json['onHighlightChanged'] == null
      ? null
      : StacAction.fromJson(json['onHighlightChanged'] as Map<String, dynamic>),
  onHover: json['onHover'] == null
      ? null
      : StacAction.fromJson(json['onHover'] as Map<String, dynamic>),
  mouseCursor: $enumDecodeNullable(
    _$StacMouseCursorEnumMap,
    json['mouseCursor'],
  ),
  focusColor: json['focusColor'] as String?,
  hoverColor: json['hoverColor'] as String?,
  highlightColor: json['highlightColor'] as String?,
  overlayColor: json['overlayColor'] as String?,
  splashColor: json['splashColor'] as String?,
  radius: const DoubleConverter().fromJson(json['radius']),
  borderRadius: json['borderRadius'] == null
      ? null
      : StacBorderRadius.fromJson(json['borderRadius']),
  customBorder: json['customBorder'] == null
      ? null
      : StacShapeBorder.fromJson(json['customBorder'] as Map<String, dynamic>),
  enableFeedback: json['enableFeedback'] as bool?,
  excludeFromSemantics: json['excludeFromSemantics'] as bool?,
  canRequestFocus: json['canRequestFocus'] as bool?,
  onFocusChange: json['onFocusChange'] == null
      ? null
      : StacAction.fromJson(json['onFocusChange'] as Map<String, dynamic>),
  autofocus: json['autofocus'] as bool?,
  hoverDuration: json['hoverDuration'] == null
      ? null
      : StacDuration.fromJson(json['hoverDuration'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacInkWellToJson(StacInkWell instance) =>
    <String, dynamic>{
      'child': instance.child?.toJson(),
      'onTap': instance.onTap?.toJson(),
      'onDoubleTap': instance.onDoubleTap?.toJson(),
      'onLongPress': instance.onLongPress?.toJson(),
      'onTapDown': instance.onTapDown?.toJson(),
      'onTapUp': instance.onTapUp?.toJson(),
      'onTapCancel': instance.onTapCancel?.toJson(),
      'onSecondaryTap': instance.onSecondaryTap?.toJson(),
      'onSecondaryTapUp': instance.onSecondaryTapUp?.toJson(),
      'onSecondaryTapDown': instance.onSecondaryTapDown?.toJson(),
      'onSecondaryTapCancel': instance.onSecondaryTapCancel?.toJson(),
      'onHighlightChanged': instance.onHighlightChanged?.toJson(),
      'onHover': instance.onHover?.toJson(),
      'mouseCursor': _$StacMouseCursorEnumMap[instance.mouseCursor],
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'highlightColor': instance.highlightColor,
      'overlayColor': instance.overlayColor,
      'splashColor': instance.splashColor,
      'radius': const DoubleConverter().toJson(instance.radius),
      'borderRadius': instance.borderRadius?.toJson(),
      'customBorder': instance.customBorder?.toJson(),
      'enableFeedback': instance.enableFeedback,
      'excludeFromSemantics': instance.excludeFromSemantics,
      'canRequestFocus': instance.canRequestFocus,
      'onFocusChange': instance.onFocusChange?.toJson(),
      'autofocus': instance.autofocus,
      'hoverDuration': instance.hoverDuration?.toJson(),
      'type': instance.type,
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
