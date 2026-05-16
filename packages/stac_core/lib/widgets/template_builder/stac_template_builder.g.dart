// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_template_builder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacTemplateBuilder _$StacTemplateBuilderFromJson(Map<String, dynamic> json) =>
    StacTemplateBuilder(
      data: json['data'] as List<dynamic>?,
      providerId: json['providerId'] as String?,
      dataPath: json['dataPath'] as String?,
      itemTemplate: StacWidget.fromJson(
        json['itemTemplate'] as Map<String, dynamic>,
      ),
      child: StacWidget.fromJson(json['child'] as Map<String, dynamic>),
      emptyWidget: json['emptyWidget'] == null
          ? null
          : StacWidget.fromJson(json['emptyWidget'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacTemplateBuilderToJson(
  StacTemplateBuilder instance,
) => <String, dynamic>{
  'data': instance.data,
  'providerId': instance.providerId,
  'dataPath': instance.dataPath,
  'itemTemplate': instance.itemTemplate.toJson(),
  'child': instance.child.toJson(),
  'emptyWidget': instance.emptyWidget?.toJson(),
  'type': instance.type,
};
