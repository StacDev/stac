// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_default_tab_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacDefaultTabController _$StacDefaultTabControllerFromJson(
        Map<String, dynamic> json) =>
    _StacDefaultTabController(
      length: (json['length'] as num).toInt(),
      initialIndex: (json['initialIndex'] as num?)?.toInt() ?? 0,
      child: json['child'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$StacDefaultTabControllerToJson(
        _StacDefaultTabController instance) =>
    <String, dynamic>{
      'length': instance.length,
      'initialIndex': instance.initialIndex,
      'child': instance.child,
    };
