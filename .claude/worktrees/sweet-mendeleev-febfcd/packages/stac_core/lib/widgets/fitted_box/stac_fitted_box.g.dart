// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_fitted_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacFittedBox _$StacFittedBoxFromJson(Map<String, dynamic> json) =>
    StacFittedBox(
      fit: $enumDecodeNullable(_$StacBoxFitEnumMap, json['fit']),
      alignment: $enumDecodeNullable(_$StacAlignmentEnumMap, json['alignment']),
      clipBehavior: $enumDecodeNullable(
        _$StacClipEnumMap,
        json['clipBehavior'],
      ),
      child: json['child'] == null
          ? null
          : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacFittedBoxToJson(StacFittedBox instance) =>
    <String, dynamic>{
      'fit': _$StacBoxFitEnumMap[instance.fit],
      'alignment': _$StacAlignmentEnumMap[instance.alignment],
      'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
      'child': instance.child?.toJson(),
      'type': instance.type,
    };

const _$StacBoxFitEnumMap = {
  StacBoxFit.fill: 'fill',
  StacBoxFit.contain: 'contain',
  StacBoxFit.cover: 'cover',
  StacBoxFit.fitWidth: 'fitWidth',
  StacBoxFit.fitHeight: 'fitHeight',
  StacBoxFit.none: 'none',
  StacBoxFit.scaleDown: 'scaleDown',
};

const _$StacAlignmentEnumMap = {
  StacAlignment.topLeft: 'topLeft',
  StacAlignment.topCenter: 'topCenter',
  StacAlignment.topRight: 'topRight',
  StacAlignment.centerLeft: 'centerLeft',
  StacAlignment.center: 'center',
  StacAlignment.centerRight: 'centerRight',
  StacAlignment.bottomLeft: 'bottomLeft',
  StacAlignment.bottomCenter: 'bottomCenter',
  StacAlignment.bottomRight: 'bottomRight',
};

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
