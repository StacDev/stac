// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_conditional.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacConditional _$StacConditionalFromJson(Map<String, dynamic> json) =>
    StacConditional(
      condition: json['condition'] as String,
      ifTrue: StacWidget.fromJson(json['ifTrue'] as Map<String, dynamic>),
      ifFalse: json['ifFalse'] == null
          ? null
          : StacWidget.fromJson(json['ifFalse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacConditionalToJson(StacConditional instance) =>
    <String, dynamic>{
      'condition': instance.condition,
      'ifTrue': instance.ifTrue.toJson(),
      'ifFalse': instance.ifFalse?.toJson(),
      'type': instance.type,
    };
