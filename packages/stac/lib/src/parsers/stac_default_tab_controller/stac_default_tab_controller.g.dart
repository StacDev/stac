// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_default_tab_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacDefaultTabControllerImpl _$$StacDefaultTabControllerImplFromJson(
        Map<String, dynamic> json) =>
    _$StacDefaultTabControllerImpl(
      length: (json['length'] as num).toInt(),
      initialIndex: (json['initialIndex'] as num?)?.toInt() ?? 0,
      child: json['child'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$StacDefaultTabControllerImplToJson(
        _$StacDefaultTabControllerImpl instance) =>
    <String, dynamic>{
      'length': instance.length,
      'initialIndex': instance.initialIndex,
      'child': instance.child,
    };
