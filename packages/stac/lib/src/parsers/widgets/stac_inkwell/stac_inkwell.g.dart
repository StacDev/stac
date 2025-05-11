// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_inkwell.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacInkWell _$StacInkWellFromJson(Map<String, dynamic> json) => _StacInkWell(
      child: json['child'] as Map<String, dynamic>?,
      onTap: json['onTap'] as Map<String, dynamic>?,
      onDoubleTap: json['onDoubleTap'] as Map<String, dynamic>?,
      onLongPress: json['onLongPress'] as Map<String, dynamic>?,
      onTapDown: json['onTapDown'] as Map<String, dynamic>?,
      onTapUp: json['onTapUp'] as Map<String, dynamic>?,
      onTapCancel: json['onTapCancel'] as Map<String, dynamic>?,
      onSecondaryTap: json['onSecondaryTap'] as Map<String, dynamic>?,
      onSecondaryTapUp: json['onSecondaryTapUp'] as Map<String, dynamic>?,
      onSecondaryTapDown: json['onSecondaryTapDown'] as Map<String, dynamic>?,
      onSecondaryTapCancel:
          json['onSecondaryTapCancel'] as Map<String, dynamic>?,
      onHighlightChanged: json['onHighlightChanged'] as Map<String, dynamic>?,
      onHover: json['onHover'] as Map<String, dynamic>?,
      mouseCursor:
          $enumDecodeNullable(_$StacMouseCursorEnumMap, json['mouseCursor']),
      focusColor: json['focusColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      highlightColor: json['highlightColor'] as String?,
      overlayColor: json['overlayColor'] as String?,
      splashColor: json['splashColor'] as String?,
      splashFactory: json['splashFactory'] as Map<String, dynamic>?,
      radius: (json['radius'] as num?)?.toDouble(),
      borderRadius: json['borderRadius'] == null
          ? null
          : StacBorderRadius.fromJson(json['borderRadius']),
      customBorder: json['customBorder'] == null
          ? null
          : StacBorder.fromJson(json['customBorder'] as Map<String, dynamic>),
      enableFeedback: json['enableFeedback'] as bool? ?? true,
      excludeFromSemantics: json['excludeFromSemantics'] as bool? ?? false,
      focusNode: json['focusNode'] as Map<String, dynamic>?,
      canRequestFocus: json['canRequestFocus'] as bool? ?? true,
      onFocusChange: json['onFocusChange'] as Map<String, dynamic>?,
      autofocus: json['autofocus'] as bool? ?? false,
      statesController: json['statesController'] as Map<String, dynamic>?,
      hoverDuration: json['hoverDuration'] == null
          ? null
          : StacDuration.fromJson(
              json['hoverDuration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacInkWellToJson(_StacInkWell instance) =>
    <String, dynamic>{
      'child': instance.child,
      'onTap': instance.onTap,
      'onDoubleTap': instance.onDoubleTap,
      'onLongPress': instance.onLongPress,
      'onTapDown': instance.onTapDown,
      'onTapUp': instance.onTapUp,
      'onTapCancel': instance.onTapCancel,
      'onSecondaryTap': instance.onSecondaryTap,
      'onSecondaryTapUp': instance.onSecondaryTapUp,
      'onSecondaryTapDown': instance.onSecondaryTapDown,
      'onSecondaryTapCancel': instance.onSecondaryTapCancel,
      'onHighlightChanged': instance.onHighlightChanged,
      'onHover': instance.onHover,
      'mouseCursor': _$StacMouseCursorEnumMap[instance.mouseCursor],
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'highlightColor': instance.highlightColor,
      'overlayColor': instance.overlayColor,
      'splashColor': instance.splashColor,
      'splashFactory': instance.splashFactory,
      'radius': instance.radius,
      'borderRadius': instance.borderRadius,
      'customBorder': instance.customBorder,
      'enableFeedback': instance.enableFeedback,
      'excludeFromSemantics': instance.excludeFromSemantics,
      'focusNode': instance.focusNode,
      'canRequestFocus': instance.canRequestFocus,
      'onFocusChange': instance.onFocusChange,
      'autofocus': instance.autofocus,
      'statesController': instance.statesController,
      'hoverDuration': instance.hoverDuration,
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
