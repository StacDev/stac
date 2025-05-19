// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_edge_insets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacEdgeInsets _$StacEdgeInsetsFromJson(Map<String, dynamic> json) =>
    _StacEdgeInsets(
      left: json['left'] == null ? null : StacDouble.fromJson(json['left']),
      top: json['top'] == null ? null : StacDouble.fromJson(json['top']),
      right: json['right'] == null ? null : StacDouble.fromJson(json['right']),
      bottom:
          json['bottom'] == null ? null : StacDouble.fromJson(json['bottom']),
    );

Map<String, dynamic> _$StacEdgeInsetsToJson(_StacEdgeInsets instance) =>
    <String, dynamic>{
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
    };
