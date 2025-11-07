// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_align.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacAlign _$StacAlignFromJson(Map<String, dynamic> json) => StacAlign(
  alignment: $enumDecodeNullable(
    _$StacAlignmentDirectionalEnumMap,
    json['alignment'],
  ),
  widthFactor: const DoubleConverter().fromJson(json['widthFactor']),
  heightFactor: const DoubleConverter().fromJson(json['heightFactor']),
  child: json['child'] == null
      ? null
      : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacAlignToJson(StacAlign instance) => <String, dynamic>{
  'alignment': _$StacAlignmentDirectionalEnumMap[instance.alignment],
  'widthFactor': const DoubleConverter().toJson(instance.widthFactor),
  'heightFactor': const DoubleConverter().toJson(instance.heightFactor),
  'child': instance.child?.toJson(),
  'type': instance.type,
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
