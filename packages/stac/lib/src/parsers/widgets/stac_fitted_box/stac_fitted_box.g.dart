// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_fitted_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacFittedBox _$StacFittedBoxFromJson(Map<String, dynamic> json) =>
    _StacFittedBox(
      fit: $enumDecodeNullable(_$BoxFitEnumMap, json['fit']) ?? BoxFit.contain,
      alignment: $enumDecodeNullable(
              _$StacAlignmentDirectionalEnumMap, json['alignment']) ??
          StacAlignmentDirectional.center,
      clipBehavior:
          $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ?? Clip.none,
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacFittedBoxToJson(_StacFittedBox instance) =>
    <String, dynamic>{
      'fit': _$BoxFitEnumMap[instance.fit]!,
      'alignment': _$StacAlignmentDirectionalEnumMap[instance.alignment]!,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
      'child': instance.child,
    };

const _$BoxFitEnumMap = {
  BoxFit.fill: 'fill',
  BoxFit.contain: 'contain',
  BoxFit.cover: 'cover',
  BoxFit.fitWidth: 'fitWidth',
  BoxFit.fitHeight: 'fitHeight',
  BoxFit.none: 'none',
  BoxFit.scaleDown: 'scaleDown',
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
