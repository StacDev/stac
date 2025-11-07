// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_check_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacCheckBox _$StacCheckBoxFromJson(Map<String, dynamic> json) => StacCheckBox(
  id: json['id'] as String?,
  value: json['value'] as bool?,
  tristate: json['tristate'] as bool?,
  onChanged: json['onChanged'] == null
      ? null
      : StacAction.fromJson(json['onChanged'] as Map<String, dynamic>),
  mouseCursor: $enumDecodeNullable(
    _$StacMouseCursorEnumMap,
    json['mouseCursor'],
  ),
  activeColor: json['activeColor'] as String?,
  fillColor: json['fillColor'] as String?,
  checkColor: json['checkColor'] as String?,
  focusColor: json['focusColor'] as String?,
  hoverColor: json['hoverColor'] as String?,
  overlayColor: json['overlayColor'] as String?,
  splashRadius: const DoubleConverter().fromJson(json['splashRadius']),
  materialTapTargetSize: $enumDecodeNullable(
    _$StacMaterialTapTargetSizeEnumMap,
    json['materialTapTargetSize'],
  ),
  autofocus: json['autofocus'] as bool?,
  isError: json['isError'] as bool?,
);

Map<String, dynamic> _$StacCheckBoxToJson(StacCheckBox instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'tristate': instance.tristate,
      'onChanged': instance.onChanged?.toJson(),
      'mouseCursor': _$StacMouseCursorEnumMap[instance.mouseCursor],
      'activeColor': instance.activeColor,
      'fillColor': instance.fillColor,
      'checkColor': instance.checkColor,
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'overlayColor': instance.overlayColor,
      'splashRadius': const DoubleConverter().toJson(instance.splashRadius),
      'materialTapTargetSize':
          _$StacMaterialTapTargetSizeEnumMap[instance.materialTapTargetSize],
      'autofocus': instance.autofocus,
      'isError': instance.isError,
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

const _$StacMaterialTapTargetSizeEnumMap = {
  StacMaterialTapTargetSize.padded: 'padded',
  StacMaterialTapTargetSize.shrinkWrap: 'shrinkWrap',
};
