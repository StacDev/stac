// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_state_scope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacStateScope _$StacStateScopeFromJson(Map<String, dynamic> json) =>
    StacStateScope(
      state: json['state'] as Map<String, dynamic>? ?? const {},
      child: json['child'] == null
          ? null
          : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacStateScopeToJson(StacStateScope instance) =>
    <String, dynamic>{
      'state': instance.state,
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
