// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_center.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacCenter _$StacCenterFromJson(Map<String, dynamic> json) => _StacCenter(
      widthFactor: (json['widthFactor'] as num?)?.toDouble(),
      heightFactor: (json['heightFactor'] as num?)?.toDouble(),
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacCenterToJson(_StacCenter instance) =>
    <String, dynamic>{
      'widthFactor': instance.widthFactor,
      'heightFactor': instance.heightFactor,
      'child': instance.child,
    };
