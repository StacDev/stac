// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_outlined_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacOutlinedButtonImpl _$$StacOutlinedButtonImplFromJson(
        Map<String, dynamic> json) =>
    _$StacOutlinedButtonImpl(
      onPressed: json['onPressed'] as Map<String, dynamic>?,
      onLongPress: json['onLongPress'] as Map<String, dynamic>?,
      onHover: json['onHover'] as Map<String, dynamic>?,
      onFocusChange: json['onFocusChange'] as Map<String, dynamic>?,
      style: json['style'] == null
          ? null
          : StacButtonStyle.fromJson(json['style'] as Map<String, dynamic>),
      autofocus: json['autofocus'] ?? false,
      clipBehavior:
          $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ?? Clip.none,
      child: json['child'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$StacOutlinedButtonImplToJson(
        _$StacOutlinedButtonImpl instance) =>
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
