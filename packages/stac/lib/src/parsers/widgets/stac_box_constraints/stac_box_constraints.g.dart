// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_box_constraints.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacBoxConstraints _$StacBoxConstraintsFromJson(Map<String, dynamic> json) =>
    _StacBoxConstraints(
      minWidth: (json['minWidth'] as num).toDouble(),
      maxWidth: (json['maxWidth'] as num).toDouble(),
      minHeight: (json['minHeight'] as num).toDouble(),
      maxHeight: (json['maxHeight'] as num).toDouble(),
    );

Map<String, dynamic> _$StacBoxConstraintsToJson(_StacBoxConstraints instance) =>
    <String, dynamic>{
      'minWidth': instance.minWidth,
      'maxWidth': instance.maxWidth,
      'minHeight': instance.minHeight,
      'maxHeight': instance.maxHeight,
    };
