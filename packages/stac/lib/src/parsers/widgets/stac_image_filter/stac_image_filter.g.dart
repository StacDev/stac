// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_image_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacImageFilter _$StacImageFilterFromJson(Map<String, dynamic> json) =>
    _StacImageFilter(
      type: $enumDecode(_$StacImageFilterTypeEnumMap, json['type']),
      sigmaX: json['sigmaX'] == null
          ? const StacDouble(0.0)
          : StacDouble.fromJson(json['sigmaX']),
      sigmaY:
          json['sigmaY'] == null ? null : StacDouble.fromJson(json['sigmaY']),
      radiusX: json['radiusX'] == null
          ? const StacDouble(0.0)
          : StacDouble.fromJson(json['radiusX']),
      radiusY:
          json['radiusY'] == null ? null : StacDouble.fromJson(json['radiusY']),
      matrix:
          (json['matrix'] as List<dynamic>?)?.map(StacDouble.fromJson).toList(),
      inner: json['inner'] == null
          ? null
          : StacImageFilter.fromJson(json['inner'] as Map<String, dynamic>),
      outer: json['outer'] == null
          ? null
          : StacImageFilter.fromJson(json['outer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacImageFilterToJson(_StacImageFilter instance) =>
    <String, dynamic>{
      'type': _$StacImageFilterTypeEnumMap[instance.type]!,
      'sigmaX': instance.sigmaX,
      'sigmaY': instance.sigmaY,
      'radiusX': instance.radiusX,
      'radiusY': instance.radiusY,
      'matrix': instance.matrix,
      'inner': instance.inner,
      'outer': instance.outer,
    };

const _$StacImageFilterTypeEnumMap = {
  StacImageFilterType.blur: 'blur',
  StacImageFilterType.matrix: 'matrix',
  StacImageFilterType.dilate: 'dilate',
  StacImageFilterType.erode: 'erode',
  StacImageFilterType.compose: 'compose',
};
