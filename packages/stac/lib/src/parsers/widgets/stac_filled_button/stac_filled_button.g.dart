// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_filled_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacFilledButton _$StacFilledButtonFromJson(Map<String, dynamic> json) =>
    _StacFilledButton(
      onPressed: json['onPressed'] as Map<String, dynamic>?,
      onLongPress: json['onLongPress'] as Map<String, dynamic>?,
      onHover: json['onHover'] as Map<String, dynamic>?,
      onFocusChange: json['onFocusChange'] as Map<String, dynamic>?,
      style: json['style'] == null
          ? null
          : StacButtonStyle.fromJson(json['style'] as Map<String, dynamic>),
      autofocus: json['autofocus'] as bool? ?? false,
      clipBehavior:
          $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ?? Clip.none,
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacFilledButtonToJson(_StacFilledButton instance) =>
    <String, dynamic>{
      'onPressed': instance.onPressed,
      'onLongPress': instance.onLongPress,
      'onHover': instance.onHover,
      'onFocusChange': instance.onFocusChange,
      'style': instance.style,
      'autofocus': instance.autofocus,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
      'child': instance.child,
    };

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
