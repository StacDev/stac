// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_limited_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiLimitedBoxImpl _$$MiraiLimitedBoxImplFromJson(
        Map<String, dynamic> json) =>
    _$MiraiLimitedBoxImpl(
      maxHeight: (json['maxHeight'] as num?)?.toDouble() ?? double.infinity,
      maxWidth: (json['maxWidth'] as num?)?.toDouble() ?? double.infinity,
      child: json['child'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MiraiLimitedBoxImplToJson(
        _$MiraiLimitedBoxImpl instance) =>
    <String, dynamic>{
      'maxHeight': instance.maxHeight,
      'maxWidth': instance.maxWidth,
      'child': instance.child,
    };
