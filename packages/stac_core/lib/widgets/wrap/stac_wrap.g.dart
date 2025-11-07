// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_wrap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacWrap _$StacWrapFromJson(Map<String, dynamic> json) => StacWrap(
  direction: $enumDecodeNullable(_$StacAxisEnumMap, json['direction']),
  alignment: $enumDecodeNullable(_$StacWrapAlignmentEnumMap, json['alignment']),
  spacing: const DoubleConverter().fromJson(json['spacing']),
  runAlignment: $enumDecodeNullable(
    _$StacWrapAlignmentEnumMap,
    json['runAlignment'],
  ),
  runSpacing: const DoubleConverter().fromJson(json['runSpacing']),
  crossAxisAlignment: $enumDecodeNullable(
    _$StacWrapCrossAlignmentEnumMap,
    json['crossAxisAlignment'],
  ),
  textDirection: $enumDecodeNullable(
    _$StacTextDirectionEnumMap,
    json['textDirection'],
  ),
  verticalDirection: $enumDecodeNullable(
    _$StacVerticalDirectionEnumMap,
    json['verticalDirection'],
  ),
  clipBehavior: $enumDecodeNullable(_$StacClipEnumMap, json['clipBehavior']),
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => StacWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$StacWrapToJson(StacWrap instance) => <String, dynamic>{
  'direction': _$StacAxisEnumMap[instance.direction],
  'alignment': _$StacWrapAlignmentEnumMap[instance.alignment],
  'spacing': const DoubleConverter().toJson(instance.spacing),
  'runAlignment': _$StacWrapAlignmentEnumMap[instance.runAlignment],
  'runSpacing': const DoubleConverter().toJson(instance.runSpacing),
  'crossAxisAlignment':
      _$StacWrapCrossAlignmentEnumMap[instance.crossAxisAlignment],
  'textDirection': _$StacTextDirectionEnumMap[instance.textDirection],
  'verticalDirection':
      _$StacVerticalDirectionEnumMap[instance.verticalDirection],
  'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
  'children': instance.children?.map((e) => e.toJson()).toList(),
  'type': instance.type,
};

const _$StacAxisEnumMap = {
  StacAxis.horizontal: 'horizontal',
  StacAxis.vertical: 'vertical',
};

const _$StacWrapAlignmentEnumMap = {
  StacWrapAlignment.start: 'start',
  StacWrapAlignment.end: 'end',
  StacWrapAlignment.center: 'center',
  StacWrapAlignment.spaceBetween: 'spaceBetween',
  StacWrapAlignment.spaceAround: 'spaceAround',
  StacWrapAlignment.spaceEvenly: 'spaceEvenly',
};

const _$StacWrapCrossAlignmentEnumMap = {
  StacWrapCrossAlignment.start: 'start',
  StacWrapCrossAlignment.end: 'end',
  StacWrapCrossAlignment.center: 'center',
};

const _$StacTextDirectionEnumMap = {
  StacTextDirection.rtl: 'rtl',
  StacTextDirection.ltr: 'ltr',
};

const _$StacVerticalDirectionEnumMap = {
  StacVerticalDirection.up: 'up',
  StacVerticalDirection.down: 'down',
};

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
