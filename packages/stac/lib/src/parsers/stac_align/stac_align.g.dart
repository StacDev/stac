// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_align.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacAlign _$StacAlignFromJson(Map<String, dynamic> json) => _StacAlign(
      alignment: $enumDecodeNullable(
              _$StacAlignmentDirectionalEnumMap, json['alignment']) ??
          StacAlignmentDirectional.center,
      widthFactor: (json['widthFactor'] as num?)?.toDouble(),
      heightFactor: (json['heightFactor'] as num?)?.toDouble(),
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacAlignToJson(_StacAlign instance) =>
    <String, dynamic>{
      'alignment': _$StacAlignmentDirectionalEnumMap[instance.alignment]!,
      'widthFactor': instance.widthFactor,
      'heightFactor': instance.heightFactor,
      'child': instance.child,
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
