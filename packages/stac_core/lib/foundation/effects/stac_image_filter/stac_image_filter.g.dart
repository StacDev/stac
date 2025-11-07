// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_image_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacImageFilter _$StacImageFilterFromJson(Map<String, dynamic> json) =>
    StacImageFilter(
      type: $enumDecode(_$StacImageFilterTypeEnumMap, json['type']),
      sigmaX: const DoubleConverter().fromJson(json['sigmaX']),
      sigmaY: const DoubleConverter().fromJson(json['sigmaY']),
      radiusX: const DoubleConverter().fromJson(json['radiusX']),
      radiusY: const DoubleConverter().fromJson(json['radiusY']),
      matrix: (json['matrix'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      inner: json['inner'] == null
          ? null
          : StacImageFilter.fromJson(json['inner'] as Map<String, dynamic>),
      outer: json['outer'] == null
          ? null
          : StacImageFilter.fromJson(json['outer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacImageFilterToJson(StacImageFilter instance) =>
    <String, dynamic>{
      'type': _$StacImageFilterTypeEnumMap[instance.type]!,
      'sigmaX': const DoubleConverter().toJson(instance.sigmaX),
      'sigmaY': const DoubleConverter().toJson(instance.sigmaY),
      'radiusX': const DoubleConverter().toJson(instance.radiusX),
      'radiusY': const DoubleConverter().toJson(instance.radiusY),
      'matrix': instance.matrix,
      'inner': instance.inner?.toJson(),
      'outer': instance.outer?.toJson(),
    };

const _$StacImageFilterTypeEnumMap = {
  StacImageFilterType.blur: 'blur',
  StacImageFilterType.matrix: 'matrix',
  StacImageFilterType.dilate: 'dilate',
  StacImageFilterType.erode: 'erode',
  StacImageFilterType.compose: 'compose',
};
