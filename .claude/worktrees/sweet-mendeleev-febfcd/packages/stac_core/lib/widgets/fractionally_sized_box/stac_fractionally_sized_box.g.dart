// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_fractionally_sized_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacFractionallySizedBox _$StacFractionallySizedBoxFromJson(
  Map<String, dynamic> json,
) => StacFractionallySizedBox(
  widthFactor: const DoubleConverter().fromJson(json['widthFactor']),
  heightFactor: const DoubleConverter().fromJson(json['heightFactor']),
  alignment: $enumDecodeNullable(_$StacAlignmentEnumMap, json['alignment']),
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacFractionallySizedBoxToJson(
  StacFractionallySizedBox instance,
) => <String, dynamic>{
  'widthFactor': const DoubleConverter().toJson(instance.widthFactor),
  'heightFactor': const DoubleConverter().toJson(instance.heightFactor),
  'alignment': _$StacAlignmentEnumMap[instance.alignment],
  'child': instance.child?.toJson(),
  'type': instance.type,
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
