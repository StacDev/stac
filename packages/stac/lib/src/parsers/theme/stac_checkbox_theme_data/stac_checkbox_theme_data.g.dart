// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_checkbox_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacCheckboxThemeData _$StacCheckboxThemeDataFromJson(
        Map<String, dynamic> json) =>
    _StacCheckboxThemeData(
      mouseCursor:
          $enumDecodeNullable(_$StacMouseCursorEnumMap, json['mouseCursor']),
      fillColor: json['fillColor'] as String?,
      checkColor: json['checkColor'] as String?,
      overlayColor: json['overlayColor'] as String?,
      splashRadius: (json['splashRadius'] as num?)?.toDouble(),
      materialTapTargetSize: $enumDecodeNullable(
          _$MaterialTapTargetSizeEnumMap, json['materialTapTargetSize']),
      visualDensity: json['visualDensity'] == null
          ? null
          : StacVisualDensity.fromJson(
              json['visualDensity'] as Map<String, dynamic>),
      shape: json['shape'] == null
          ? null
          : StacRoundedRactangleBorder.fromJson(
              json['shape'] as Map<String, dynamic>),
      side: json['side'] == null
          ? null
          : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacCheckboxThemeDataToJson(
        _StacCheckboxThemeData instance) =>
    <String, dynamic>{
      'mouseCursor': _$StacMouseCursorEnumMap[instance.mouseCursor],
      'fillColor': instance.fillColor,
      'checkColor': instance.checkColor,
      'overlayColor': instance.overlayColor,
      'splashRadius': instance.splashRadius,
      'materialTapTargetSize':
          _$MaterialTapTargetSizeEnumMap[instance.materialTapTargetSize],
      'visualDensity': instance.visualDensity,
      'shape': instance.shape,
      'side': instance.side,
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
