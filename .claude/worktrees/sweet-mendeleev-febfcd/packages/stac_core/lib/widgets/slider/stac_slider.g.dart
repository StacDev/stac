// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_slider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSlider _$StacSliderFromJson(Map<String, dynamic> json) => StacSlider(
  id: json['id'] as String?,
  sliderType: $enumDecodeNullable(_$StacSliderTypeEnumMap, json['sliderType']),
  value: (json['value'] as num).toDouble(),
  secondaryTrackValue: const DoubleConverter().fromJson(
    json['secondaryTrackValue'],
  ),
  onChanged: json['onChanged'] == null
      ? null
      : StacAction.fromJson(json['onChanged'] as Map<String, dynamic>),
  onChangeStart: json['onChangeStart'] == null
      ? null
      : StacAction.fromJson(json['onChangeStart'] as Map<String, dynamic>),
  onChangeEnd: json['onChangeEnd'] == null
      ? null
      : StacAction.fromJson(json['onChangeEnd'] as Map<String, dynamic>),
  min: const DoubleConverter().fromJson(json['min']),
  max: const DoubleConverter().fromJson(json['max']),
  divisions: (json['divisions'] as num?)?.toInt(),
  label: json['label'] as String?,
  activeColor: json['activeColor'] as String?,
  inactiveColor: json['inactiveColor'] as String?,
  secondaryActiveColor: json['secondaryActiveColor'] as String?,
  thumbColor: json['thumbColor'] as String?,
  overlayColor: json['overlayColor'] as String?,
  mouseCursor: $enumDecodeNullable(
    _$StacMouseCursorEnumMap,
    json['mouseCursor'],
  ),
  autofocus: json['autofocus'] as bool?,
  allowedInteraction: $enumDecodeNullable(
    _$StacSliderInteractionEnumMap,
    json['allowedInteraction'],
  ),
);

Map<String, dynamic> _$StacSliderToJson(StacSlider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sliderType': _$StacSliderTypeEnumMap[instance.sliderType],
      'value': instance.value,
      'secondaryTrackValue': const DoubleConverter().toJson(
        instance.secondaryTrackValue,
      ),
      'onChanged': instance.onChanged?.toJson(),
      'onChangeStart': instance.onChangeStart?.toJson(),
      'onChangeEnd': instance.onChangeEnd?.toJson(),
      'min': const DoubleConverter().toJson(instance.min),
      'max': const DoubleConverter().toJson(instance.max),
      'divisions': instance.divisions,
      'label': instance.label,
      'activeColor': instance.activeColor,
      'inactiveColor': instance.inactiveColor,
      'secondaryActiveColor': instance.secondaryActiveColor,
      'thumbColor': instance.thumbColor,
      'overlayColor': instance.overlayColor,
      'mouseCursor': _$StacMouseCursorEnumMap[instance.mouseCursor],
      'autofocus': instance.autofocus,
      'allowedInteraction':
          _$StacSliderInteractionEnumMap[instance.allowedInteraction],
      'type': instance.type,
    };

const _$StacSliderTypeEnumMap = {
  StacSliderType.adaptive: 'adaptive',
  StacSliderType.cupertino: 'cupertino',
  StacSliderType.material: 'material',
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

const _$StacSliderInteractionEnumMap = {
  StacSliderInteraction.tapAndSlide: 'tapAndSlide',
  StacSliderInteraction.tapOnly: 'tapOnly',
  StacSliderInteraction.slideOnly: 'slideOnly',
  StacSliderInteraction.slideThumb: 'slideThumb',
};
