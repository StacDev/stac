// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_visual_density.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacVisualDensity _$StacVisualDensityFromJson(Map<String, dynamic> json) =>
    StacVisualDensity(
      horizontal: const DoubleConverter().fromJson(json['horizontal']),
      vertical: const DoubleConverter().fromJson(json['vertical']),
    );

Map<String, dynamic> _$StacVisualDensityToJson(StacVisualDensity instance) =>
    <String, dynamic>{
      'horizontal': const DoubleConverter().toJson(instance.horizontal),
      'vertical': const DoubleConverter().toJson(instance.vertical),
    };
