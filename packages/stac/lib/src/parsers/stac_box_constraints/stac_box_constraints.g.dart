// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_box_constraints.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacBoxConstraintsImpl _$$StacBoxConstraintsImplFromJson(
        Map<String, dynamic> json) =>
    _$StacBoxConstraintsImpl(
      minWidth: (json['minWidth'] as num).toDouble(),
      maxWidth: (json['maxWidth'] as num).toDouble(),
      minHeight: (json['minHeight'] as num).toDouble(),
      maxHeight: (json['maxHeight'] as num).toDouble(),
    );

Map<String, dynamic> _$$StacBoxConstraintsImplToJson(
        _$StacBoxConstraintsImpl instance) =>
    <String, dynamic>{
      'minWidth': instance.minWidth,
      'maxWidth': instance.maxWidth,
      'minHeight': instance.minHeight,
      'maxHeight': instance.maxHeight,
    };
