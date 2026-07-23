// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_box_constraints.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacBoxConstraints _$StacBoxConstraintsFromJson(Map<String, dynamic> json) =>
    StacBoxConstraints(
      minWidth: const DoubleConverter().fromJson(json['minWidth']),
      maxWidth: const DoubleConverter().fromJson(json['maxWidth']),
      minHeight: const DoubleConverter().fromJson(json['minHeight']),
      maxHeight: const DoubleConverter().fromJson(json['maxHeight']),
    );

Map<String, dynamic> _$StacBoxConstraintsToJson(StacBoxConstraints instance) =>
    <String, dynamic>{
      'minWidth': const DoubleConverter().toJson(instance.minWidth),
      'maxWidth': const DoubleConverter().toJson(instance.maxWidth),
      'minHeight': const DoubleConverter().toJson(instance.minHeight),
      'maxHeight': const DoubleConverter().toJson(instance.maxHeight),
    };
