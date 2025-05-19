// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_slider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacSlider _$StacSliderFromJson(Map<String, dynamic> json) => _StacSlider(
      id: json['id'] as String?,
      sliderType:
          $enumDecodeNullable(_$StacSliderTypeEnumMap, json['sliderType']) ??
              StacSliderType.material,
      value: StacDouble.fromJson(json['value']),
      secondaryTrackValue: json['secondaryTrackValue'] == null
          ? null
          : StacDouble.fromJson(json['secondaryTrackValue']),
      onChanged: json['onChanged'] as Map<String, dynamic>?,
      onChangeStart: json['onChangeStart'] as Map<String, dynamic>?,
      onChangeEnd: json['onChangeEnd'] as Map<String, dynamic>?,
      min: json['min'] == null
          ? StacDouble.zero
          : StacDouble.fromJson(json['min']),
      max: json['max'] == null
          ? const StacDouble(1.0)
          : StacDouble.fromJson(json['max']),
      divisions: (json['divisions'] as num?)?.toInt(),
      label: json['label'] as String?,
      activeColor: json['activeColor'] as String?,
      inactiveColor: json['inactiveColor'] as String?,
      secondaryActiveColor: json['secondaryActiveColor'] as String?,
      thumbColor: json['thumbColor'] as String?,
      overlayColor: json['overlayColor'] as String?,
      mouseCursor:
          $enumDecodeNullable(_$StacMouseCursorEnumMap, json['mouseCursor']),
      autofocus: json['autofocus'] as bool? ?? false,
      allowedInteraction: $enumDecodeNullable(
          _$SliderInteractionEnumMap, json['allowedInteraction']),
    );

Map<String, dynamic> _$StacSliderToJson(_StacSlider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sliderType': _$StacSliderTypeEnumMap[instance.sliderType]!,
      'value': instance.value,
      'secondaryTrackValue': instance.secondaryTrackValue,
      'onChanged': instance.onChanged,
      'onChangeStart': instance.onChangeStart,
      'onChangeEnd': instance.onChangeEnd,
      'min': instance.min,
      'max': instance.max,
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
          _$SliderInteractionEnumMap[instance.allowedInteraction],
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

const _$SliderInteractionEnumMap = {
  SliderInteraction.tapAndSlide: 'tapAndSlide',
  SliderInteraction.tapOnly: 'tapOnly',
  SliderInteraction.slideOnly: 'slideOnly',
  SliderInteraction.slideThumb: 'slideThumb',
};
