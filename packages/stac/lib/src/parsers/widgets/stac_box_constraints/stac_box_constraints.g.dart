// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_box_constraints.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacBoxConstraints _$StacBoxConstraintsFromJson(Map<String, dynamic> json) =>
    _StacBoxConstraints(
      minWidth: StacDouble.fromJson(json['minWidth']),
      maxWidth: StacDouble.fromJson(json['maxWidth']),
      minHeight: StacDouble.fromJson(json['minHeight']),
      maxHeight: StacDouble.fromJson(json['maxHeight']),
    );

Map<String, dynamic> _$StacBoxConstraintsToJson(_StacBoxConstraints instance) =>
    <String, dynamic>{
      'minWidth': instance.minWidth,
      'maxWidth': instance.maxWidth,
      'minHeight': instance.minHeight,
      'maxHeight': instance.maxHeight,
    };
