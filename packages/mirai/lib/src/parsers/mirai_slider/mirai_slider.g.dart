// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_slider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiSliderImpl _$$MiraiSliderImplFromJson(Map<String, dynamic> json) =>
    _$MiraiSliderImpl(
      id: json['id'] as String?,
      sliderType:
          $enumDecodeNullable(_$MiraiSliderTypeEnumMap, json['sliderType']) ??
              MiraiSliderType.material,
      value: (json['value'] as num).toDouble(),
      secondaryTrackValue: (json['secondaryTrackValue'] as num?)?.toDouble(),
      onChanged: json['onChanged'] as Map<String, dynamic>?,
      onChangeStart: json['onChangeStart'] as Map<String, dynamic>?,
      onChangeEnd: json['onChangeEnd'] as Map<String, dynamic>?,
      min: (json['min'] as num?)?.toDouble() ?? 0.0,
      max: (json['max'] as num?)?.toDouble() ?? 1.0,
      divisions: (json['divisions'] as num?)?.toInt(),
      label: json['label'] as String?,
      activeColor: json['activeColor'] as String?,
      inactiveColor: json['inactiveColor'] as String?,
      secondaryActiveColor: json['secondaryActiveColor'] as String?,
      thumbColor: json['thumbColor'] as String?,
      overlayColor: json['overlayColor'] as String?,
      mouseCursor:
          $enumDecodeNullable(_$MiraiMouseCursorEnumMap, json['mouseCursor']),
      autofocus: json['autofocus'] as bool? ?? false,
      allowedInteraction: $enumDecodeNullable(
          _$SliderInteractionEnumMap, json['allowedInteraction']),
    );

Map<String, dynamic> _$$MiraiSliderImplToJson(_$MiraiSliderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sliderType': _$MiraiSliderTypeEnumMap[instance.sliderType]!,
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
      'mouseCursor': _$MiraiMouseCursorEnumMap[instance.mouseCursor],
      'autofocus': instance.autofocus,
      'allowedInteraction':
          _$SliderInteractionEnumMap[instance.allowedInteraction],
    };

const _$MiraiSliderTypeEnumMap = {
  MiraiSliderType.adaptive: 'adaptive',
  MiraiSliderType.cupertino: 'cupertino',
  MiraiSliderType.material: 'material',
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

const _$SliderInteractionEnumMap = {
  SliderInteraction.tapAndSlide: 'tapAndSlide',
  SliderInteraction.tapOnly: 'tapOnly',
  SliderInteraction.slideOnly: 'slideOnly',
  SliderInteraction.slideThumb: 'slideThumb',
};
