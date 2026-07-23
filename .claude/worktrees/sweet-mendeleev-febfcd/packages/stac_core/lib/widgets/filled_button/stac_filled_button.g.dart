// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_filled_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacFilledButton _$StacFilledButtonFromJson(Map<String, dynamic> json) =>
    StacFilledButton(
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
      child: json['child'] == null
          ? null
          : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacFilledButtonToJson(StacFilledButton instance) =>
    <String, dynamic>{
      'onPressed': instance.onPressed?.toJson(),
      'onLongPress': instance.onLongPress?.toJson(),
      'onHover': instance.onHover?.toJson(),
      'onFocusChange': instance.onFocusChange?.toJson(),
      'style': instance.style?.toJson(),
      'autofocus': instance.autofocus,
      'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
      'child': instance.child?.toJson(),
      'type': instance.type,
    };

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
