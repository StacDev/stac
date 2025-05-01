// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_stack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacStack _$StacStackFromJson(Map<String, dynamic> json) => _StacStack(
      alignment: $enumDecodeNullable(
              _$StacAlignmentDirectionalEnumMap, json['alignment']) ??
          StacAlignmentDirectional.topStart,
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ??
          Clip.hardEdge,
      fit:
          $enumDecodeNullable(_$StackFitEnumMap, json['fit']) ?? StackFit.loose,
      textDirection:
          $enumDecodeNullable(_$TextDirectionEnumMap, json['textDirection']),
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$StacStackToJson(_StacStack instance) =>
    <String, dynamic>{
      'alignment': _$StacAlignmentDirectionalEnumMap[instance.alignment]!,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
      'fit': _$StackFitEnumMap[instance.fit]!,
      'textDirection': _$TextDirectionEnumMap[instance.textDirection],
      'children': instance.children,
    };

const _$StacAlignmentDirectionalEnumMap = {
  StacAlignmentDirectional.topStart: 'topStart',
  StacAlignmentDirectional.topCenter: 'topCenter',
  StacAlignmentDirectional.topEnd: 'topEnd',
  StacAlignmentDirectional.centerStart: 'centerStart',
  StacAlignmentDirectional.center: 'center',
  StacAlignmentDirectional.centerEnd: 'centerEnd',
  StacAlignmentDirectional.bottomStart: 'bottomStart',
  StacAlignmentDirectional.bottomCenter: 'bottomCenter',
  StacAlignmentDirectional.bottomEnd: 'bottomEnd',
};

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};

const _$StackFitEnumMap = {
  StackFit.loose: 'loose',
  StackFit.expand: 'expand',
  StackFit.passthrough: 'passthrough',
};

const _$TextDirectionEnumMap = {
  TextDirection.rtl: 'rtl',
  TextDirection.ltr: 'ltr',
};
