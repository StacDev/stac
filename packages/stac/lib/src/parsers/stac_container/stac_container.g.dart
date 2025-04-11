// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacContainer _$StacContainerFromJson(Map<String, dynamic> json) =>
    _StacContainer(
      alignment: $enumDecodeNullable(_$StacAlignmentEnumMap, json['alignment']),
      padding: json['padding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['padding']),
      decoration: json['decoration'] == null
          ? null
          : StacBoxDecoration.fromJson(
              json['decoration'] as Map<String, dynamic>),
      foregroundDecoration: json['foregroundDecoration'] == null
          ? null
          : StacBoxDecoration.fromJson(
              json['foregroundDecoration'] as Map<String, dynamic>),
      color: json['color'] as String?,
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      constraints: json['constraints'] == null
          ? null
          : StacBoxConstraints.fromJson(
              json['constraints'] as Map<String, dynamic>),
      margin: json['margin'] == null
          ? null
          : StacEdgeInsets.fromJson(json['margin']),
      child: json['child'] as Map<String, dynamic>?,
      clipBehavior:
          $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ?? Clip.none,
    );

Map<String, dynamic> _$StacContainerToJson(_StacContainer instance) =>
    <String, dynamic>{
      'alignment': _$StacAlignmentEnumMap[instance.alignment],
      'padding': instance.padding,
      'decoration': instance.decoration,
      'foregroundDecoration': instance.foregroundDecoration,
      'color': instance.color,
      'width': instance.width,
      'height': instance.height,
      'constraints': instance.constraints,
      'margin': instance.margin,
      'child': instance.child,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
    };

const _$StacAlignmentEnumMap = {
  StacAlignment.topLeft: 'topLeft',
  StacAlignment.topCenter: 'topCenter',
  StacAlignment.topRight: 'topRight',
  StacAlignment.centerLeft: 'centerLeft',
  StacAlignment.center: 'center',
  StacAlignment.centerRight: 'centerRight',
  StacAlignment.bottomLeft: 'bottomLeft',
  StacAlignment.bottomCenter: 'bottomCenter',
  StacAlignment.bottomRight: 'bottomRight',
};

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
