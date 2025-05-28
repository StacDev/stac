// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_conditional.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacConditional _$StacConditionalFromJson(Map<String, dynamic> json) =>
    _StacConditional(
      condition: json['condition'] as String,
      ifTrue: json['ifTrue'] as Map<String, dynamic>,
      ifFalse: json['ifFalse'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacConditionalToJson(_StacConditional instance) =>
    <String, dynamic>{
      'condition': instance.condition,
      'ifTrue': instance.ifTrue,
      'ifFalse': instance.ifFalse,
    };
