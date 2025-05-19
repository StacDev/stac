// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_center.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacCenter _$StacCenterFromJson(Map<String, dynamic> json) => _StacCenter(
      widthFactor: json['widthFactor'] == null
          ? null
          : StacDouble.fromJson(json['widthFactor']),
      heightFactor: json['heightFactor'] == null
          ? null
          : StacDouble.fromJson(json['heightFactor']),
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacCenterToJson(_StacCenter instance) =>
    <String, dynamic>{
      'widthFactor': instance.widthFactor,
      'heightFactor': instance.heightFactor,
      'child': instance.child,
    };
