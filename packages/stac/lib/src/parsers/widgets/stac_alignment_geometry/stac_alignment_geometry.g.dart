// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_alignment_geometry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacAlignmentGeometry _$StacAlignmentGeometryFromJson(
        Map<String, dynamic> json) =>
    _StacAlignmentGeometry(
      dx: StacDouble.fromJson(json['dx']),
      dy: StacDouble.fromJson(json['dy']),
    );

Map<String, dynamic> _$StacAlignmentGeometryToJson(
        _StacAlignmentGeometry instance) =>
    <String, dynamic>{
      'dx': instance.dx,
      'dy': instance.dy,
    };
