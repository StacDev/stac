// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_list_tile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacListTile _$StacListTileFromJson(Map<String, dynamic> json) => StacListTile(
  leading: json['leading'] == null
      ? null
      : StacWidget.fromJson(json['leading'] as Map<String, dynamic>),
  title: json['title'] == null
      ? null
      : StacWidget.fromJson(json['title'] as Map<String, dynamic>),
  subtitle: json['subtitle'] == null
      ? null
      : StacWidget.fromJson(json['subtitle'] as Map<String, dynamic>),
  trailing: json['trailing'] == null
      ? null
      : StacWidget.fromJson(json['trailing'] as Map<String, dynamic>),
  isThreeLine: json['isThreeLine'] as bool?,
  dense: json['dense'] as bool?,
  visualDensity: json['visualDensity'] == null
      ? null
      : StacVisualDensity.fromJson(
          json['visualDensity'] as Map<String, dynamic>,
        ),
  shape: json['shape'] == null
      ? null
      : StacShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
  style: $enumDecodeNullable(_$StacListTileStyleEnumMap, json['style']),
  selectedColor: json['selectedColor'] as String?,
  iconColor: json['iconColor'] as String?,
  textColor: json['textColor'] as String?,
  contentPadding: json['contentPadding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['contentPadding']),
  enabled: json['enabled'] as bool?,
  onTap: json['onTap'] == null
      ? null
      : StacAction.fromJson(json['onTap'] as Map<String, dynamic>),
  onLongPress: json['onLongPress'] == null
      ? null
      : StacAction.fromJson(json['onLongPress'] as Map<String, dynamic>),
  mouseCursor: $enumDecodeNullable(
    _$StacMouseCursorEnumMap,
    json['mouseCursor'],
  ),
  selected: json['selected'] as bool?,
  focusColor: json['focusColor'] as String?,
  hoverColor: json['hoverColor'] as String?,
  autofocus: json['autofocus'] as bool?,
  tileColor: json['tileColor'] as String?,
  selectedTileColor: json['selectedTileColor'] as String?,
  enableFeedback: json['enableFeedback'] as bool?,
  horizontalTitleGap: (json['horizontalTitleGap'] as num?)?.toDouble(),
  minVerticalPadding: (json['minVerticalPadding'] as num?)?.toDouble(),
  minLeadingWidth: (json['minLeadingWidth'] as num?)?.toDouble(),
  titleAlignment: $enumDecodeNullable(
    _$StacListTileTitleAlignmentEnumMap,
    json['titleAlignment'],
  ),
);

Map<String, dynamic> _$StacListTileToJson(StacListTile instance) =>
    <String, dynamic>{
      'leading': instance.leading?.toJson(),
      'title': instance.title?.toJson(),
      'subtitle': instance.subtitle?.toJson(),
      'trailing': instance.trailing?.toJson(),
      'isThreeLine': instance.isThreeLine,
      'dense': instance.dense,
      'visualDensity': instance.visualDensity?.toJson(),
      'shape': instance.shape?.toJson(),
      'style': _$StacListTileStyleEnumMap[instance.style],
      'selectedColor': instance.selectedColor,
      'iconColor': instance.iconColor,
      'textColor': instance.textColor,
      'contentPadding': instance.contentPadding?.toJson(),
      'enabled': instance.enabled,
      'onTap': instance.onTap?.toJson(),
      'onLongPress': instance.onLongPress?.toJson(),
      'mouseCursor': _$StacMouseCursorEnumMap[instance.mouseCursor],
      'selected': instance.selected,
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'autofocus': instance.autofocus,
      'tileColor': instance.tileColor,
      'selectedTileColor': instance.selectedTileColor,
      'enableFeedback': instance.enableFeedback,
      'horizontalTitleGap': instance.horizontalTitleGap,
      'minVerticalPadding': instance.minVerticalPadding,
      'minLeadingWidth': instance.minLeadingWidth,
      'titleAlignment':
          _$StacListTileTitleAlignmentEnumMap[instance.titleAlignment],
      'type': instance.type,
    };

const _$StacListTileStyleEnumMap = {
  StacListTileStyle.list: 'list',
  StacListTileStyle.drawer: 'drawer',
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

const _$StacListTileTitleAlignmentEnumMap = {
  StacListTileTitleAlignment.titleHeight: 'titleHeight',
  StacListTileTitleAlignment.threeLine: 'threeLine',
  StacListTileTitleAlignment.bottom: 'bottom',
  StacListTileTitleAlignment.center: 'center',
};
