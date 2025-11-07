// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_radio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacRadio _$StacRadioFromJson(Map<String, dynamic> json) => StacRadio(
  radioType: $enumDecodeNullable(_$StacRadioTypeEnumMap, json['radioType']),
  value: json['value'],
  groupId: json['groupId'] as String?,
  onChanged: json['onChanged'] == null
      ? null
      : StacAction.fromJson(json['onChanged'] as Map<String, dynamic>),
  mouseCursor: $enumDecodeNullable(
    _$StacMouseCursorEnumMap,
    json['mouseCursor'],
  ),
  toggleable: json['toggleable'] as bool?,
  activeColor: json['activeColor'] as String?,
  inactiveColor: json['inactiveColor'] as String?,
  fillColor: json['fillColor'] as String?,
  focusColor: json['focusColor'] as String?,
  hoverColor: json['hoverColor'] as String?,
  overlayColor: json['overlayColor'] as String?,
  splashRadius: const DoubleConverter().fromJson(json['splashRadius']),
  materialTapTargetSize: $enumDecodeNullable(
    _$StacMaterialTapTargetSizeEnumMap,
    json['materialTapTargetSize'],
  ),
  visualDensity: json['visualDensity'] == null
      ? null
      : StacVisualDensity.fromJson(
          json['visualDensity'] as Map<String, dynamic>,
        ),
  autofocus: json['autofocus'] as bool?,
  useCheckmarkStyle: json['useCheckmarkStyle'] as bool?,
  useCupertinoCheckmarkStyle: json['useCupertinoCheckmarkStyle'] as bool?,
  enabled: json['enabled'] as bool?,
  backgroundColor: json['backgroundColor'] as String?,
  side: json['side'] == null
      ? null
      : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
  innerRadius: const DoubleConverter().fromJson(json['innerRadius']),
);

Map<String, dynamic> _$StacRadioToJson(StacRadio instance) => <String, dynamic>{
  'radioType': _$StacRadioTypeEnumMap[instance.radioType],
  'value': instance.value,
  'groupId': instance.groupId,
  'onChanged': instance.onChanged?.toJson(),
  'mouseCursor': _$StacMouseCursorEnumMap[instance.mouseCursor],
  'toggleable': instance.toggleable,
  'activeColor': instance.activeColor,
  'inactiveColor': instance.inactiveColor,
  'fillColor': instance.fillColor,
  'focusColor': instance.focusColor,
  'hoverColor': instance.hoverColor,
  'overlayColor': instance.overlayColor,
  'splashRadius': const DoubleConverter().toJson(instance.splashRadius),
  'materialTapTargetSize':
      _$StacMaterialTapTargetSizeEnumMap[instance.materialTapTargetSize],
  'visualDensity': instance.visualDensity?.toJson(),
  'autofocus': instance.autofocus,
  'useCheckmarkStyle': instance.useCheckmarkStyle,
  'useCupertinoCheckmarkStyle': instance.useCupertinoCheckmarkStyle,
  'enabled': instance.enabled,
  'backgroundColor': instance.backgroundColor,
  'side': instance.side?.toJson(),
  'innerRadius': const DoubleConverter().toJson(instance.innerRadius),
  'type': instance.type,
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

const _$StacMaterialTapTargetSizeEnumMap = {
  StacMaterialTapTargetSize.padded: 'padded',
  StacMaterialTapTargetSize.shrinkWrap: 'shrinkWrap',
};
