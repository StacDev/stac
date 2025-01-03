// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_divider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiDividerImpl _$$MiraiDividerImplFromJson(Map<String, dynamic> json) =>
    _$MiraiDividerImpl(
      thickness: (json['thickness'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      color: json['color'] as String?,
    );

Map<String, dynamic> _$$MiraiDividerImplToJson(_$MiraiDividerImpl instance) =>
    <String, dynamic>{
      'thickness': instance.thickness,
      'height': instance.height,
      'color': instance.color,
    };
