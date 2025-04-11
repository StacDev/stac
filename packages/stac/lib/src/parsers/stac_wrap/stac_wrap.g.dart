// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_wrap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacWrap _$StacWrapFromJson(Map<String, dynamic> json) => _StacWrap(
      direction: $enumDecodeNullable(_$AxisEnumMap, json['direction']) ??
          Axis.horizontal,
      alignment:
          $enumDecodeNullable(_$WrapAlignmentEnumMap, json['alignment']) ??
              WrapAlignment.start,
      spacing: (json['spacing'] as num?)?.toDouble() ?? 0.0,
      runAlignment:
          $enumDecodeNullable(_$WrapAlignmentEnumMap, json['runAlignment']) ??
              WrapAlignment.start,
      runSpacing: (json['runSpacing'] as num?)?.toDouble() ?? 0.0,
      crossAxisAlignment: $enumDecodeNullable(
              _$WrapCrossAlignmentEnumMap, json['crossAxisAlignment']) ??
          WrapCrossAlignment.start,
      textDirection:
          $enumDecodeNullable(_$TextDirectionEnumMap, json['textDirection']),
      verticalDirection: $enumDecodeNullable(
              _$VerticalDirectionEnumMap, json['verticalDirection']) ??
          VerticalDirection.down,
      clipBehavior:
          $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ?? Clip.none,
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$StacWrapToJson(_StacWrap instance) => <String, dynamic>{
      'direction': _$AxisEnumMap[instance.direction]!,
      'alignment': _$WrapAlignmentEnumMap[instance.alignment]!,
      'spacing': instance.spacing,
      'runAlignment': _$WrapAlignmentEnumMap[instance.runAlignment]!,
      'runSpacing': instance.runSpacing,
      'crossAxisAlignment':
          _$WrapCrossAlignmentEnumMap[instance.crossAxisAlignment]!,
      'textDirection': _$TextDirectionEnumMap[instance.textDirection],
      'verticalDirection':
          _$VerticalDirectionEnumMap[instance.verticalDirection]!,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
      'children': instance.children,
    };

const _$AxisEnumMap = {
  Axis.horizontal: 'horizontal',
  Axis.vertical: 'vertical',
};

const _$WrapAlignmentEnumMap = {
  WrapAlignment.start: 'start',
  WrapAlignment.end: 'end',
  WrapAlignment.center: 'center',
  WrapAlignment.spaceBetween: 'spaceBetween',
  WrapAlignment.spaceAround: 'spaceAround',
  WrapAlignment.spaceEvenly: 'spaceEvenly',
};

const _$WrapCrossAlignmentEnumMap = {
  WrapCrossAlignment.start: 'start',
  WrapCrossAlignment.end: 'end',
  WrapCrossAlignment.center: 'center',
};

const _$TextDirectionEnumMap = {
  TextDirection.rtl: 'rtl',
  TextDirection.ltr: 'ltr',
};

const _$VerticalDirectionEnumMap = {
  VerticalDirection.up: 'up',
  VerticalDirection.down: 'down',
};

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
