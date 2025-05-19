// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_fractionally_sized_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacFractionallySizedBox _$StacFractionallySizedBoxFromJson(
        Map<String, dynamic> json) =>
    _StacFractionallySizedBox(
      alignment: $enumDecodeNullable(_$StacAlignmentEnumMap, json['alignment']),
      widthFactor: json['widthFactor'] == null
          ? null
          : StacDouble.fromJson(json['widthFactor']),
      heightFactor: json['heightFactor'] == null
          ? null
          : StacDouble.fromJson(json['heightFactor']),
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacFractionallySizedBoxToJson(
        _StacFractionallySizedBox instance) =>
    <String, dynamic>{
      'alignment': _$StacAlignmentEnumMap[instance.alignment],
      'widthFactor': instance.widthFactor,
      'heightFactor': instance.heightFactor,
      'child': instance.child,
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
