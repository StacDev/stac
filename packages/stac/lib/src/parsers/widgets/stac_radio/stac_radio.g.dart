// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_radio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacRadio _$StacRadioFromJson(Map<String, dynamic> json) => _StacRadio(
      radioType:
          $enumDecodeNullable(_$StacRadioTypeEnumMap, json['radioType']) ??
              StacRadioType.material,
      value: json['value'],
      onChanged: json['onChanged'] as Map<String, dynamic>?,
      mouseCursor:
          $enumDecodeNullable(_$StacMouseCursorEnumMap, json['mouseCursor']),
      toggleable: json['toggleable'] as bool? ?? false,
      activeColor: json['activeColor'] as String?,
      inactiveColor: json['inactiveColor'] as String?,
      fillColor: json['fillColor'] as String?,
      focusColor: json['focusColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      overlayColor: json['overlayColor'] as String?,
      splashRadius: json['splashRadius'] == null
          ? null
          : StacDouble.fromJson(json['splashRadius']),
      materialTapTargetSize: $enumDecodeNullable(
          _$MaterialTapTargetSizeEnumMap, json['materialTapTargetSize']),
      visualDensity: json['visualDensity'] == null
          ? null
          : StacVisualDensity.fromJson(
              json['visualDensity'] as Map<String, dynamic>),
      autofocus: json['autofocus'] as bool? ?? false,
      useCheckmarkStyle: json['useCheckmarkStyle'] as bool? ?? false,
      useCupertinoCheckmarkStyle:
          json['useCupertinoCheckmarkStyle'] as bool? ?? false,
    );

Map<String, dynamic> _$StacRadioToJson(_StacRadio instance) =>
    <String, dynamic>{
      'radioType': _$StacRadioTypeEnumMap[instance.radioType]!,
      'value': instance.value,
      'onChanged': instance.onChanged,
      'mouseCursor': _$StacMouseCursorEnumMap[instance.mouseCursor],
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

const _$StacRadioTypeEnumMap = {
  StacRadioType.adaptive: 'adaptive',
  StacRadioType.cupertino: 'cupertino',
  StacRadioType.material: 'material',
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
