// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_default_tab_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiDefaultTabControllerImpl _$$MiraiDefaultTabControllerImplFromJson(
        Map<String, dynamic> json) =>
    _$MiraiDefaultTabControllerImpl(
      length: (json['length'] as num).toInt(),
      initialIndex: (json['initialIndex'] as num?)?.toInt() ?? 0,
      child: json['child'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$MiraiDefaultTabControllerImplToJson(
        _$MiraiDefaultTabControllerImpl instance) =>
    <String, dynamic>{
      'length': instance.length,
      'initialIndex': instance.initialIndex,
      'child': instance.child,
    };
