// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_check_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiCheckBoxWidgetImpl _$$MiraiCheckBoxWidgetImplFromJson(
        Map<String, dynamic> json) =>
    _$MiraiCheckBoxWidgetImpl(
      id: json['id'] as String?,
      value: json['value'] as bool?,
      tristate: json['tristate'] as bool? ?? false,
      onChanged: json['onChanged'] as Map<String, dynamic>?,
      mouseCursor:
          $enumDecodeNullable(_$MiraiMouseCursorEnumMap, json['mouseCursor']),
      activeColor: json['activeColor'] as String?,
      fillColor: json['fillColor'] == null
          ? null
          : MiraiMaterialColor.fromJson(
              json['fillColor'] as Map<String, dynamic>),
      checkColor: json['checkColor'] as String?,
      focusColor: json['focusColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      overlayColor: json['overlayColor'] == null
          ? null
          : MiraiMaterialColor.fromJson(
              json['overlayColor'] as Map<String, dynamic>),
      splashRadius: (json['splashRadius'] as num?)?.toDouble(),
      materialTapTargetSize: $enumDecodeNullable(
          _$MaterialTapTargetSizeEnumMap, json['materialTapTargetSize']),
      autofocus: json['autofocus'] as bool? ?? false,
      isError: json['isError'] as bool? ?? false,
    );

Map<String, dynamic> _$$MiraiCheckBoxWidgetImplToJson(
        _$MiraiCheckBoxWidgetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'tristate': instance.tristate,
      'onChanged': instance.onChanged,
      'mouseCursor': _$MiraiMouseCursorEnumMap[instance.mouseCursor],
      'activeColor': instance.activeColor,
      'fillColor': instance.fillColor,
      'checkColor': instance.checkColor,
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'overlayColor': instance.overlayColor,
      'splashRadius': instance.splashRadius,
      'materialTapTargetSize':
          _$MaterialTapTargetSizeEnumMap[instance.materialTapTargetSize],
      'autofocus': instance.autofocus,
      'isError': instance.isError,
    };

const _$MiraiMouseCursorEnumMap = {
  MiraiMouseCursor.none: 'none',
  MiraiMouseCursor.basic: 'basic',
  MiraiMouseCursor.click: 'click',
  MiraiMouseCursor.forbidden: 'forbidden',
  MiraiMouseCursor.wait: 'wait',
  MiraiMouseCursor.progress: 'progress',
  MiraiMouseCursor.contextMenu: 'contextMenu',
  MiraiMouseCursor.help: 'help',
  MiraiMouseCursor.text: 'text',
  MiraiMouseCursor.verticalText: 'verticalText',
  MiraiMouseCursor.cell: 'cell',
  MiraiMouseCursor.precise: 'precise',
  MiraiMouseCursor.move: 'move',
  MiraiMouseCursor.grab: 'grab',
  MiraiMouseCursor.grabbing: 'grabbing',
  MiraiMouseCursor.noDrop: 'noDrop',
  MiraiMouseCursor.alias: 'alias',
  MiraiMouseCursor.copy: 'copy',
  MiraiMouseCursor.disappearing: 'disappearing',
  MiraiMouseCursor.allScroll: 'allScroll',
  MiraiMouseCursor.resizeLeftRight: 'resizeLeftRight',
  MiraiMouseCursor.resizeUpDown: 'resizeUpDown',
  MiraiMouseCursor.resizeUpLeftDownRight: 'resizeUpLeftDownRight',
  MiraiMouseCursor.resizeUpRightDownLeft: 'resizeUpRightDownLeft',
  MiraiMouseCursor.resizeUp: 'resizeUp',
  MiraiMouseCursor.resizeDown: 'resizeDown',
  MiraiMouseCursor.resizeLeft: 'resizeLeft',
  MiraiMouseCursor.resizeRight: 'resizeRight',
  MiraiMouseCursor.resizeUpLeft: 'resizeUpLeft',
  MiraiMouseCursor.resizeUpRight: 'resizeUpRight',
  MiraiMouseCursor.resizeDownLeft: 'resizeDownLeft',
  MiraiMouseCursor.resizeDownRight: 'resizeDownRight',
  MiraiMouseCursor.resizeColumn: 'resizeColumn',
  MiraiMouseCursor.resizeRow: 'resizeRow',
  MiraiMouseCursor.zoomIn: 'zoomIn',
  MiraiMouseCursor.zoomOut: 'zoomOut',
};

const _$MaterialTapTargetSizeEnumMap = {
  MaterialTapTargetSize.padded: 'padded',
  MaterialTapTargetSize.shrinkWrap: 'shrinkWrap',
};
