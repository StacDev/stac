// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_icon_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacIconButton _$StacIconButtonFromJson(Map<String, dynamic> json) =>
    StacIconButton(
      iconSize: (json['iconSize'] as num?)?.toDouble(),
      visualDensity: json['visualDensity'] == null
          ? null
          : StacVisualDensity.fromJson(
              json['visualDensity'] as Map<String, dynamic>,
            ),
      padding: json['padding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['padding']),
      alignment: $enumDecodeNullable(_$StacAlignmentEnumMap, json['alignment']),
      splashRadius: (json['splashRadius'] as num?)?.toDouble(),
      color: json['color'] as String?,
      focusColor: json['focusColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      highlightColor: json['highlightColor'] as String?,
      splashColor: json['splashColor'] as String?,
      disabledColor: json['disabledColor'] as String?,
      onPressed: json['onPressed'] == null
          ? null
          : StacAction.fromJson(json['onPressed'] as Map<String, dynamic>),
      onHover: json['onHover'] == null
          ? null
          : StacAction.fromJson(json['onHover'] as Map<String, dynamic>),
      onLongPress: json['onLongPress'] == null
          ? null
          : StacAction.fromJson(json['onLongPress'] as Map<String, dynamic>),
      mouseCursor: $enumDecodeNullable(
        _$StacMouseCursorEnumMap,
        json['mouseCursor'],
      ),
      autofocus: json['autofocus'] as bool?,
      tooltip: json['tooltip'] as String?,
      enableFeedback: json['enableFeedback'] as bool?,
      constraints: json['constraints'] == null
          ? null
          : StacBoxConstraints.fromJson(
              json['constraints'] as Map<String, dynamic>,
            ),
      style: json['style'] == null
          ? null
          : StacButtonStyle.fromJson(json['style'] as Map<String, dynamic>),
      isSelected: json['isSelected'] as bool?,
      selectedIcon: json['selectedIcon'] == null
          ? null
          : StacWidget.fromJson(json['selectedIcon'] as Map<String, dynamic>),
      icon: json['icon'] == null
          ? null
          : StacWidget.fromJson(json['icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacIconButtonToJson(StacIconButton instance) =>
    <String, dynamic>{
      'iconSize': instance.iconSize,
      'visualDensity': instance.visualDensity?.toJson(),
      'padding': instance.padding?.toJson(),
      'alignment': _$StacAlignmentEnumMap[instance.alignment],
      'splashRadius': instance.splashRadius,
      'color': instance.color,
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'highlightColor': instance.highlightColor,
      'splashColor': instance.splashColor,
      'disabledColor': instance.disabledColor,
      'onPressed': instance.onPressed?.toJson(),
      'onHover': instance.onHover?.toJson(),
      'onLongPress': instance.onLongPress?.toJson(),
      'mouseCursor': _$StacMouseCursorEnumMap[instance.mouseCursor],
      'autofocus': instance.autofocus,
      'tooltip': instance.tooltip,
      'enableFeedback': instance.enableFeedback,
      'constraints': instance.constraints?.toJson(),
      'style': instance.style?.toJson(),
      'isSelected': instance.isSelected,
      'selectedIcon': instance.selectedIcon?.toJson(),
      'icon': instance.icon?.toJson(),
      'type': instance.type,
    };

const _$StacAlignmentEnumMap = {
  StacAlignment.topLeft: 'topLeft',
  StacAlignment.topCenter: 'topCenter',
  StacAlignment.topRight: 'topRight',
  StacAlignment.centerLeft: 'centerLeft',
  StacAlignment.center: 'center',
  StacAlignment.centerRight: 'centerRight',
  StacAlignment.bottomLeft: 'bottomLeft',
  StacAlignment.bottomCenter: 'bottomCenter',
  StacAlignment.bottomRight: 'bottomRight',
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
