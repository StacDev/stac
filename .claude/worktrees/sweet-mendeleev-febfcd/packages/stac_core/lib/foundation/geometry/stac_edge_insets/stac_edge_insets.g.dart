// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_edge_insets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacEdgeInsets _$StacEdgeInsetsFromJson(Map<String, dynamic> json) =>
    StacEdgeInsets(
      left: (json['left'] as num?)?.toDouble(),
      top: (json['top'] as num?)?.toDouble(),
      right: (json['right'] as num?)?.toDouble(),
      bottom: (json['bottom'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$StacEdgeInsetsToJson(StacEdgeInsets instance) =>
    <String, dynamic>{
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
    };
