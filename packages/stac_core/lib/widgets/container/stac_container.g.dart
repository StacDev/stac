// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacContainer _$StacContainerFromJson(
  Map<String, dynamic> json,
) => StacContainer(
  alignment: $enumDecodeNullable(_$StacAlignmentEnumMap, json['alignment']),
  padding: json['padding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['padding']),
  color: json['color'] as String?,
  decoration: json['decoration'] == null
      ? null
      : StacBoxDecoration.fromJson(json['decoration'] as Map<String, dynamic>),
  foregroundDecoration: json['foregroundDecoration'] == null
      ? null
      : StacBoxDecoration.fromJson(
          json['foregroundDecoration'] as Map<String, dynamic>,
        ),
  width: const DoubleConverter().fromJson(json['width']),
  height: const DoubleConverter().fromJson(json['height']),
  constraints: json['constraints'] == null
      ? null
      : StacBoxConstraints.fromJson(
          json['constraints'] as Map<String, dynamic>,
        ),
  margin: json['margin'] == null
      ? null
      : StacEdgeInsets.fromJson(json['margin']),
  transformAlignment: $enumDecodeNullable(
    _$StacAlignmentEnumMap,
    json['transformAlignment'],
  ),
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
  clipBehavior: $enumDecodeNullable(_$StacClipEnumMap, json['clipBehavior']),
);

Map<String, dynamic> _$StacContainerToJson(StacContainer instance) =>
    <String, dynamic>{
      'alignment': _$StacAlignmentEnumMap[instance.alignment],
      'padding': instance.padding?.toJson(),
      'color': instance.color,
      'decoration': instance.decoration?.toJson(),
      'foregroundDecoration': instance.foregroundDecoration?.toJson(),
      'width': const DoubleConverter().toJson(instance.width),
      'height': const DoubleConverter().toJson(instance.height),
      'constraints': instance.constraints?.toJson(),
      'margin': instance.margin?.toJson(),
      'transformAlignment': _$StacAlignmentEnumMap[instance.transformAlignment],
      'child': instance.child?.toJson(),
      'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
      'type': instance.type,
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

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
