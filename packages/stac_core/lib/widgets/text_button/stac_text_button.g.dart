// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_text_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacTextButton _$StacTextButtonFromJson(Map<String, dynamic> json) =>
    StacTextButton(
      onPressed: json['onPressed'] == null
          ? null
          : StacAction.fromJson(json['onPressed'] as Map<String, dynamic>),
      onLongPress: json['onLongPress'] == null
          ? null
          : StacAction.fromJson(json['onLongPress'] as Map<String, dynamic>),
      onHover: json['onHover'] == null
          ? null
          : StacAction.fromJson(json['onHover'] as Map<String, dynamic>),
      onFocusChange: json['onFocusChange'] == null
          ? null
          : StacAction.fromJson(json['onFocusChange'] as Map<String, dynamic>),
      style: json['style'] == null
          ? null
          : StacButtonStyle.fromJson(json['style'] as Map<String, dynamic>),
      autofocus: json['autofocus'] as bool?,
      clipBehavior: $enumDecodeNullable(
        _$StacClipEnumMap,
        json['clipBehavior'],
      ),
      isSemanticButton: json['isSemanticButton'] as bool?,
      child: json['child'] == null
          ? null
          : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacTextButtonToJson(StacTextButton instance) =>
    <String, dynamic>{
      'onPressed': instance.onPressed?.toJson(),
      'onLongPress': instance.onLongPress?.toJson(),
      'onHover': instance.onHover?.toJson(),
      'onFocusChange': instance.onFocusChange?.toJson(),
      'style': instance.style?.toJson(),
      'autofocus': instance.autofocus,
      'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
      'isSemanticButton': instance.isSemanticButton,
      'child': instance.child?.toJson(),
      'type': instance.type,
    };

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
