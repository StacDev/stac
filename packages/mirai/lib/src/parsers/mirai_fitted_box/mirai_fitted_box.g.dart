// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_fitted_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiFittedBoxImpl _$$MiraiFittedBoxImplFromJson(Map<String, dynamic> json) =>
    _$MiraiFittedBoxImpl(
      fit: $enumDecodeNullable(_$BoxFitEnumMap, json['fit']) ?? BoxFit.contain,
      alignment: $enumDecodeNullable(
              _$MiraiAlignmentDirectionalEnumMap, json['alignment']) ??
          MiraiAlignmentDirectional.center,
      clipBehavior:
          $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ?? Clip.none,
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MiraiFittedBoxImplToJson(
        _$MiraiFittedBoxImpl instance) =>
    <String, dynamic>{
      'fit': _$BoxFitEnumMap[instance.fit]!,
      'alignment': _$MiraiAlignmentDirectionalEnumMap[instance.alignment]!,
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

const _$MiraiAlignmentDirectionalEnumMap = {
  MiraiAlignmentDirectional.topStart: 'topStart',
  MiraiAlignmentDirectional.topCenter: 'topCenter',
  MiraiAlignmentDirectional.topEnd: 'topEnd',
  MiraiAlignmentDirectional.centerStart: 'centerStart',
  MiraiAlignmentDirectional.center: 'center',
  MiraiAlignmentDirectional.centerEnd: 'centerEnd',
  MiraiAlignmentDirectional.bottomStart: 'bottomStart',
  MiraiAlignmentDirectional.bottomCenter: 'bottomCenter',
  MiraiAlignmentDirectional.bottomEnd: 'bottomEnd',
};

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
