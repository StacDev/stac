// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_text_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacTextButtonImpl _$$StacTextButtonImplFromJson(Map<String, dynamic> json) =>
    _$StacTextButtonImpl(
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
      isSemanticButton: json['isSemanticButton'] as bool? ?? true,
      child: json['child'] as Map<String, dynamic>,
      iconAlignment:
          $enumDecodeNullable(_$IconAlignmentEnumMap, json['iconAlignment']) ??
              IconAlignment.start,
    );

Map<String, dynamic> _$$StacTextButtonImplToJson(
        _$StacTextButtonImpl instance) =>
    <String, dynamic>{
      'onPressed': instance.onPressed,
      'onLongPress': instance.onLongPress,
      'onHover': instance.onHover,
      'onFocusChange': instance.onFocusChange,
      'style': instance.style,
      'autofocus': instance.autofocus,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
      'isSemanticButton': instance.isSemanticButton,
      'child': instance.child,
      'iconAlignment': _$IconAlignmentEnumMap[instance.iconAlignment]!,
    };

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};

const _$IconAlignmentEnumMap = {
  IconAlignment.start: 'start',
  IconAlignment.end: 'end',
};
