// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_gen_ui_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacGenUiModel _$StacGenUiModelFromJson(Map<String, dynamic> json) =>
    StacGenUiModel(
      prompt: json['prompt'] as String,
      loaderWidget: json['loaderWidget'] == null
          ? null
          : StacWidget.fromJson(json['loaderWidget'] as Map<String, dynamic>),
      errorWidget: json['errorWidget'] == null
          ? null
          : StacWidget.fromJson(json['errorWidget'] as Map<String, dynamic>),
      systemPromptExtras: json['systemPromptExtras'] as String?,
    );

Map<String, dynamic> _$StacGenUiModelToJson(StacGenUiModel instance) =>
    <String, dynamic>{
      'prompt': instance.prompt,
      'loaderWidget': instance.loaderWidget,
      'errorWidget': instance.errorWidget,
      'systemPromptExtras': instance.systemPromptExtras,
      'type': instance.type,
    };
