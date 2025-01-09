// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_radio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiRadioImpl _$$MiraiRadioImplFromJson(Map<String, dynamic> json) =>
    _$MiraiRadioImpl(
      radioType:
          $enumDecodeNullable(_$MiraiRadioTypeEnumMap, json['radioType']) ??
              MiraiRadioType.material,
      value: json['value'],
      onChanged: json['onChanged'] as Map<String, dynamic>?,
      mouseCursor:
          $enumDecodeNullable(_$MiraiMouseCursorEnumMap, json['mouseCursor']),
      toggleable: json['toggleable'] as bool? ?? false,
      activeColor: json['activeColor'] as String?,
      inactiveColor: json['inactiveColor'] as String?,
      fillColor: json['fillColor'] as String?,
      focusColor: json['focusColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      overlayColor: json['overlayColor'] as String?,
      splashRadius: (json['splashRadius'] as num?)?.toDouble(),
      materialTapTargetSize: $enumDecodeNullable(
          _$MaterialTapTargetSizeEnumMap, json['materialTapTargetSize']),
      visualDensity: json['visualDensity'] == null
          ? null
          : MiraiVisualDensity.fromJson(
              json['visualDensity'] as Map<String, dynamic>),
      autofocus: json['autofocus'] as bool? ?? false,
      useCheckmarkStyle: json['useCheckmarkStyle'] as bool? ?? false,
      useCupertinoCheckmarkStyle:
          json['useCupertinoCheckmarkStyle'] as bool? ?? false,
    );

Map<String, dynamic> _$$MiraiRadioImplToJson(_$MiraiRadioImpl instance) =>
    <String, dynamic>{
      'radioType': _$MiraiRadioTypeEnumMap[instance.radioType]!,
      'value': instance.value,
      'onChanged': instance.onChanged,
      'mouseCursor': _$MiraiMouseCursorEnumMap[instance.mouseCursor],
      'toggleable': instance.toggleable,
      'activeColor': instance.activeColor,
      'inactiveColor': instance.inactiveColor,
      'fillColor': instance.fillColor,
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'overlayColor': instance.overlayColor,
      'splashRadius': instance.splashRadius,
      'materialTapTargetSize':
          _$MaterialTapTargetSizeEnumMap[instance.materialTapTargetSize],
      'visualDensity': instance.visualDensity,
      'autofocus': instance.autofocus,
      'useCheckmarkStyle': instance.useCheckmarkStyle,
      'useCupertinoCheckmarkStyle': instance.useCupertinoCheckmarkStyle,
    };

const _$MiraiRadioTypeEnumMap = {
  MiraiRadioType.adaptive: 'adaptive',
  MiraiRadioType.cupertino: 'cupertino',
  MiraiRadioType.material: 'material',
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
